logging
fatal: exceptionOrRecord
	| record |
	(self policy shouldLogFatal) ifFalse: [^self].
	record := self policy errorRecordFrom: exceptionOrRecord.
	^self log: record tagged: self fatalTag