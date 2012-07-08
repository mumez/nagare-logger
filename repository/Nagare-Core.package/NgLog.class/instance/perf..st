logging
perf: record
	(self policy shouldLogProfile) ifFalse: [^self].
	^self portableUtil sendLog: record tagged: self perfTag on: self