accessing
fatalClasses
	^self at: #fatalClasses ifAbsentPut: [Set new]