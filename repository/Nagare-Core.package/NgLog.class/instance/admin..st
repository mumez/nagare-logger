logging
admin: record
	(self policy shouldLogAdmin) ifFalse: [^self].
	^self portableUtil sendLog: record tagged: self adminTag on: self