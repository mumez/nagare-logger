instance creation
logger: tagPrefix 
	^self at: tagPrefix ifAbsentPut: [NgLog tagPrefix: tagPrefix].
	