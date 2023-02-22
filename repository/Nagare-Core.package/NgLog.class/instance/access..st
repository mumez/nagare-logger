logging
access: record
	(self policy shouldLogAccess) ifFalse: [^self].
	^self log: record tagged: self accessTag