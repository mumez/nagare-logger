logging
error: exceptionOrRecord
	| record |
	(self policy shouldLogError) ifFalse: [^self].
	record := self policy errorRecordFrom: exceptionOrRecord.
	^self portableUtil sendLog: record tagged: self errorTag on: self