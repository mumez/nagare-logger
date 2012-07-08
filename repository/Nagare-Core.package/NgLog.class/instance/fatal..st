logging
fatal: exceptionOrRecord
	| record |
	(self policy shouldLogFatal) ifFalse: [^self].
	record := self policy errorRecordFrom: exceptionOrRecord.
	^self portableUtil sendLog: record tagged: self fatalTag on: self