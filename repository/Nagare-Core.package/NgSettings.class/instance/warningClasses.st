accessing
warningClasses
	^self at: #warningClasses ifAbsentPut: [Set new]