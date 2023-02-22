logging
warn: exceptionOrRecord
	| record |
	(self policy shouldLogWarn) ifFalse: [^self].
	record := self policy errorRecordFrom: exceptionOrRecord.
	^self log: record tagged: self warnTag