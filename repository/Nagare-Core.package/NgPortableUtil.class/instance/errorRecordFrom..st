converting
errorRecordFrom: anException
	| dic |
	(self isException: anException) ifFalse: [^anException].
	dic := Dictionary new.
	dic at: #receiver put: (self limitedStringFrom: anException receiver).	
	dic at: #description put: (self limitedStringFrom: anException description).
	dic at: #stack put:  (self shortStackStringFrom: anException).	
	^dic