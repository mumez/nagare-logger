logging
access: record
	(self policy shouldLogAccess) ifFalse: [^self].
	^self portableUtil sendLog: record tagged: self accessTag on: self