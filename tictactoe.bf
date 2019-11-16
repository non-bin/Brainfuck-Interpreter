[
	gliders
	<+[-<+]-
	>+[->+]-

	memory:
	                              0  1     2 3 4 5 6 7  8
	255 32 45 124 43 88 79 10 8   ff space - | + X O \n bell
	255 0  1 1 1 1 1 1 1 1 1         X? 0 = yes
	255 0  1 1 1 1 1 1 1 1 1         O?
	255 0  0 0 0 0 0 0 0 0 0         _?

	>->>>>>>>>>>>->>>>>>>>>>>->>+>+>+>+>+>+>+>+>+>-
]

set up chars and board memory
-
>++++++++++++++++++++++++++++++++
>+++++++++++++++++++++++++++++++++++++++++++++
>++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>+++++++++++++++++++++++++++++++++++++++++++
>++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>++++++++++
>++++++++
>->>
+> >+> > > > > > >->>
 > > >+>+>+> >+> >->>
 >+> > > > >+> >+>-
<+[-<+]- <+[-<+]- <+[-<+]- <+[-<+]-

#1
>+[->+]->> move to x#
[ if its an x
	<+[-<+]- <+[-<+]- go back to char memory
	>>>>>. print an x
	+[->+]-> move to 0 at begining of x
]
+[->+]->> move to o#
[ if it's an o
	<+[-<+]- <+[-<+]- <+[-<+]- go back to char memory
	>>>>>>. print an x
	+[->+]- >+[->+]-> move to 0 at begining of o
]
+[->+]->> move to _#
[ if it's an _
	<+[-<+]- <+[-<+]- <+[-<+]- go back to char memory
	>>>>>>. print an space
	+[->+]- >+[->+]-> move to 0 at begining of _
]
<+[-<+]- <+[-<+]- <+[-<+]- <+[-<+]- go back to char memory

>>>. print |

#2
>+[->+]->>> move to x#
[ if its an x
	<+[-<+]- <+[-<+]- go back to char memory
	>>>>>. print an x
	+[->+]-> move to 0 at begining of x
]
+[->+]->>> move to o#
[ if it's an o
	<+[-<+]- <+[-<+]- <+[-<+]- go back to char memory
	>>>>>>. print an x
	+[->+]- >+[->+]-> move to 0 at begining of o
]
+[->+]->>> move to _#
[ if it's an _
	<+[-<+]- <+[-<+]- <+[-<+]- go back to char memory
	>>>>>>. print an space
	+[->+]- >+[->+]-> move to 0 at begining of _
]
<+[-<+]- <+[-<+]- <+[-<+]- <+[-<+]- go back to char memory

>>>. print |

#3
>+[->+]->>>> move to x#
[ if its an x
	<+[-<+]- <+[-<+]- go back to char memory
	>>>>>. print an x
	+[->+]-> move to 0 at begining of x
]
+[->+]->>>> move to o#
[ if it's an o
	<+[-<+]- <+[-<+]- <+[-<+]- go back to char memory
	>>>>>>. print an x
	+[->+]- >+[->+]-> move to 0 at begining of o
]
+[->+]->>>> move to _#
[ if it's an _
	<+[-<+]- <+[-<+]- <+[-<+]- go back to char memory
	>>>>>>. print an space
	+[->+]- >+[->+]-> move to 0 at begining of _
]
<+[-<+]- <+[-<+]- <+[-<+]- <+[-<+]- go back to char memory

>>>>>>>.<<<<<.>>.<<.>>.<<.>>>>>. <+[-<+]- print a horizontal line

#4
>+[->+]->>>>> move to x#
[ if its an x
	<+[-<+]- <+[-<+]- go back to char memory
	>>>>>. print an x
	+[->+]-> move to 0 at begining of x
]
+[->+]->>>>> move to o#
[ if it's an o
	<+[-<+]- <+[-<+]- <+[-<+]- go back to char memory
	>>>>>>. print an x
	+[->+]- >+[->+]-> move to 0 at begining of o
]
+[->+]->>>>> move to _#
[ if it's an _
	<+[-<+]- <+[-<+]- <+[-<+]- go back to char memory
	>>>>>>. print an space
	+[->+]- >+[->+]-> move to 0 at begining of _
]
<+[-<+]- <+[-<+]- <+[-<+]- <+[-<+]- go back to char memory

>>>. print |

#5
>+[->+]->>>>>> move to x#
[ if its an x
	<+[-<+]- <+[-<+]- go back to char memory
	>>>>>. print an x
	+[->+]-> move to 0 at begining of x
]
+[->+]->>>>>> move to o#
[ if it's an o
	<+[-<+]- <+[-<+]- <+[-<+]- go back to char memory
	>>>>>>. print an x
	+[->+]- >+[->+]-> move to 0 at begining of o
]
+[->+]->>>>>> move to _#
[ if it's an _
	<+[-<+]- <+[-<+]- <+[-<+]- go back to char memory
	>>>>>>. print an space
	+[->+]- >+[->+]-> move to 0 at begining of _
]
<+[-<+]- <+[-<+]- <+[-<+]- <+[-<+]- go back to char memory

>>>. print |

#6
>+[->+]->>>>>>> move to x#
[ if its an x
	<+[-<+]- <+[-<+]- go back to char memory
	>>>>>. print an x
	+[->+]-> move to 0 at begining of x
]
+[->+]->>>>>>> move to o#
[ if it's an o
	<+[-<+]- <+[-<+]- <+[-<+]- go back to char memory
	>>>>>>. print an x
	+[->+]- >+[->+]-> move to 0 at begining of o
]
+[->+]->>>>>>> move to _#
[ if it's an _
	<+[-<+]- <+[-<+]- <+[-<+]- go back to char memory
	>>>>>>. print an space
	+[->+]- >+[->+]-> move to 0 at begining of _
]
<+[-<+]- <+[-<+]- <+[-<+]- <+[-<+]- go back to char memory

>>>>>>>.<<<<<.>>.<<.>>.<<.>>>>>. <+[-<+]- print a horizontal line

#7
>+[->+]->>>>>>>> move to x#
[ if its an x
	<+[-<+]- <+[-<+]- go back to char memory
	>>>>>. print an x
	+[->+]-> move to 0 at begining of x
]
+[->+]->>>>>>>> move to o#
[ if it's an o
	<+[-<+]- <+[-<+]- <+[-<+]- go back to char memory
	>>>>>>. print an x
	+[->+]- >+[->+]-> move to 0 at begining of o
]
+[->+]->>>>>>>> move to _#
[ if it's an _
	<+[-<+]- <+[-<+]- <+[-<+]- go back to char memory
	>>>>>>. print an space
	+[->+]- >+[->+]-> move to 0 at begining of _
]
<+[-<+]- <+[-<+]- <+[-<+]- <+[-<+]- go back to char memory

>>>. print |

#8
>+[->+]->>>>>>>>> move to x#
[ if its an x
	<+[-<+]- <+[-<+]- go back to char memory
	>>>>>. print an x
	+[->+]-> move to 0 at begining of x
]
+[->+]->>>>>>>>> move to o#
[ if it's an o
	<+[-<+]- <+[-<+]- <+[-<+]- go back to char memory
	>>>>>>. print an x
	+[->+]- >+[->+]-> move to 0 at begining of o
]
+[->+]->>>>>>>>> move to _#
[ if it's an _
	<+[-<+]- <+[-<+]- <+[-<+]- go back to char memory
	>>>>>>. print an space
	+[->+]- >+[->+]-> move to 0 at begining of _
]
<+[-<+]- <+[-<+]- <+[-<+]- <+[-<+]- go back to char memory

>>>. print |

#9
>+[->+]->>>>>>>>>> move to x#
[ if its an x
	<+[-<+]- <+[-<+]- go back to char memory
	>>>>>. print an x
	+[->+]-> move to 0 at begining of x
]
+[->+]->>>>>>>>>> move to o#
[ if it's an o
	<+[-<+]- <+[-<+]- <+[-<+]- go back to char memory
	>>>>>>. print an x
	+[->+]- >+[->+]-> move to 0 at begining of o
]
+[->+]->>>>>>>>>> move to _#
[ if it's an _
	<+[-<+]- <+[-<+]- <+[-<+]- go back to char memory
	>>>>>>. print an space
	+[->+]- >+[->+]-> move to 0 at begining of _
]
<+[-<+]- <+[-<+]- <+[-<+]- <+[-<+]- go back to char memory

>>>>>>>..
