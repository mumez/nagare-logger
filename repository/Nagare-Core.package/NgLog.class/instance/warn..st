logging
warn: exceptionOrRecord
	| record |
	(self policy shouldLogWarn) ifFalse: [^self].
	record := self policy errorRecordFrom: exceptionOrRecord.
	^self portableUtil sendLog: record tagged: self warnTag on: self