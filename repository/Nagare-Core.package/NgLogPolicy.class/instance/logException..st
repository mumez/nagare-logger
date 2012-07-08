actions
logException: anException
	(self consideredAsFatal: anException) ifTrue: [^self logger fatal: anException].
	(self consideredAsWarning: anException) ifTrue: [^self logger warn: anException].
	self logger error: anException