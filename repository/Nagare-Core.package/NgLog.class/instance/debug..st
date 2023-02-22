logging
debug: exceptionOrRecord
	| record |
	(self policy shouldLogDebug) ifFalse: [^self].
	record := self policy errorRecordFrom: exceptionOrRecord.
	^self log: record tagged: self debugTag