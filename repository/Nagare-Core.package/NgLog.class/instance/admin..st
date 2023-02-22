logging
admin: record
	(self policy shouldLogAdmin) ifFalse: [^self].
	^self log: record tagged: self adminTag