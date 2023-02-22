accessing
fallbackToConsole
	^self at: #fallbackToConsole ifAbsentPut: [true]