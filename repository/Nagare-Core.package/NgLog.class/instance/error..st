logging
error: exceptionOrRecord
	| record |
	(self policy shouldLogError) ifFalse: [^self].
	record := self policy errorRecordFrom: exceptionOrRecord.
	^self log: record tagged: self errorTag