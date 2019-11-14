// Brainfuck interpreter
// Copyright (C) 2019  Alice Jacka

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

const fs = require('fs');
const program = fs.readFileSync(process.argv[2], 'utf8')  // read the input program

var stdin = process.stdin;  // set up for user input
stdin.setRawMode(true);
stdin.resume();
stdin.setEncoding('utf8');

const memLen          = 30000;                           // set length of memory
var   memory          = new Uint8Array(memLen).fill(0);  // create the memory space
var   programCounter  = 0;                               // instruction number to execute next
var   pointer         = 0;                               // the pointer
var   keyBuffer       = [];                              // store keys that are pressed before input is required
var   waitingForInput = false;                           // are we waiting for a key press?
var   bracketCounter  = 0;                               // count the number of bracketed sections during a jump

stdin.on('data', function(key){  // when a key is pressed
	if (key === '\u0003') { // if ctrl+c is pressed
		process.exit();
	}

	if (waitingForInput) {                   // if we have been waiting for input
		memory[pointer] = key.charCodeAt();  // store the char
		waitingForInput = false;             // we are no longer waiting for input
		incrementProgramCounter();           // continue the program
		continueExecution();
	} else {                  // if not
		keyBuffer.push(key);  // add it to the buffer buffer
	}
});

function doInstruction() {
	var instruction = program[programCounter];  // store the next instruction

	switch (instruction) {
		case '+':               // increment the byte at the data pointer
			memory[pointer]++;
			break;

		case '-':               // decrement the byte at the data pointer
			memory[pointer]--;
			break;

		case '>':                                                                                     // increment the data pointer
			pointer++;
			if (pointer > memLen) {                                                                   // if we have exceeded the memory space
				console.error('\n\nFatal! Pointer exceeded memory length ('+ memLen +')\nHalting!');
				process.exit();
			}
			break;

		case '<':                                                         // decrement the data pointer
			pointer--;
			if (pointer < 0) {                                            // if we have exceeded the memory space
				console.error('\n\nFatal! Pointer set to -1\nHalting!');
				process.exit();
			}
			break;

		case '.':                                                        // output the byte at the data pointer
			process.stdout.write(String.fromCharCode(memory[pointer]));
			break;

		case ',':                                             // accept one byte of input, storing its value in the byte at the data pointer
			if (keyBuffer.length) {                           // if there is a char in the key buffer
				memory[pointer] = keyBuffer[0].charCodeAt();  // use it
				keyBuffer.shift();                            // and remove it from the buffer
			} else {                                          // if not
				waitingForInput = true;                       // wait for input
			}
			return false;                                     // do not continue execution
			break;

		case '[':                                                 // if the byte at the data pointer is zero, then instead of moving the instruction pointer forward to the next command, jump it forward to the command after the matching ] command
			if (memory[pointer] == 0) {                           // check the value at the pointer
				bracketCounter = 0;                               // reset the bracket counter
				programCounter++;                                 // and step to the next instruction
				while (true) {
					if (program[programCounter] == ']') {         // if we have reached a ]
						if (bracketCounter > 0) {                 // and we are in a nested bracketed section
							bracketCounter--;                     // decrement the bracket counter
						} else {                                  // if not
							break;                                // we have reached the end of the initial bracketed section
						}
					} else if (program[programCounter] == '[') {  // if we reach a [
						bracketCounter++;                         // register a new bracketed section
					}
					programCounter++;                             // we are currently on the closing ] so step to the next instruction
				}
			}
			break;

		case ']':                                                     // if the byte at the data pointer is nonzero, then instead of moving the instruction pointer forward to the next command, jump it back to the command after the matching [ command
				if (memory[pointer] != 0) {                           // check the value at the pointer
					bracketCounter = 0;                               // reset the bracket counter
					programCounter--;                                 // and step to the previous instruction
					while (true) {
						if (program[programCounter] == '[') {         // if we have reached a [
							if (bracketCounter > 0) {                 // and we are in a nested bracketed section
								bracketCounter--;                     // decrement the bracket counter
							} else {                                  // if not
								break;                                // we have reached the end of the initial bracketed section
							}
						} else if (program[programCounter] == ']') {  // if we reach a ]
							bracketCounter++;                         // register a new bracketed section
						}
						programCounter--;                             // we are currently on the opening [ so step to the previous instruction
					}
				}
				break;

		default:    // ignore everything else
			break;
	}

	incrementProgramCounter();  // update the program counter
	return true;                // and continue execution
}

function continueExecution() {
	while (doInstruction()) {}  // run the program until input is requested (or process.exit() is called)
}

function incrementProgramCounter() {
	programCounter++;                        // increment the program counter
	if (programCounter >= program.length) {  // if we've reached the end
		process.stdout.write('\n');
		process.exit();                      // stop
	}
}

continueExecution();  // begin execution
