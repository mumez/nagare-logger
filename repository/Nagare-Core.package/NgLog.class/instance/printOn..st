printing
printOn: aStream
	aStream nextPutAll: self class name.
	aStream nextPutAll: ' ('.
	aStream nextPutAll: self tagPrefix.
	aStream nextPutAll: ')'.