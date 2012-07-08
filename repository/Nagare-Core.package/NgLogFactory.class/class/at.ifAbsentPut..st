instance creation
at: tagPrefix ifAbsentPut: aBlock
	^self at: tagPrefix ifAbsentPut: aBlock initialized: nil