logging
info: record
	(self policy shouldLogInfo) ifFalse: [^self].
	^self log: record tagged: self infoTag