accessing
writeToStandardOutput
	^self at: #writeToStandardOutput ifAbsentPut: [false]