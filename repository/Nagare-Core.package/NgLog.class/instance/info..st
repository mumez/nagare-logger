logging
info: record
	(self policy shouldLogInfo) ifFalse: [^self].
	^self portableUtil sendLog: record tagged: self infoTag on: self