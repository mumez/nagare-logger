logging
perf: record
	(self policy shouldLogProfile) ifFalse: [^self].
	^self log: record tagged: self perfTag