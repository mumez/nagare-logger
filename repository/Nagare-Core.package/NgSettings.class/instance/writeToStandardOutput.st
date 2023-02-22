log-destination
writeToStandardOutput
	^self at: #writeToStandardOutput ifAbsentPut: [false]