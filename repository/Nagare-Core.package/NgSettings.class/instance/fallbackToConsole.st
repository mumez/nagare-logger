accessing
fallbackToConsole
	^self at: #fallbackToConsole ifAbsentPut: [false]