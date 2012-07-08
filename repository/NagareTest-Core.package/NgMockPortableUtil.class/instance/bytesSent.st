accessing
bytesSent
	^bytesSent ifNil: [bytesSent := OrderedCollection new]