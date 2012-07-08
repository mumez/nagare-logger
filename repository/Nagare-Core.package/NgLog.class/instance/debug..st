logging
debug: exceptionOrRecord
	| record |
	(self policy shouldLogDebug) ifFalse: [^self].
	record := self policy errorRecordFrom: exceptionOrRecord.
	^self portableUtil sendLog: record tagged: self debugTag on: self