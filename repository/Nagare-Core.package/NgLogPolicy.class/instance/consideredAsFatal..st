testing
consideredAsFatal: anException
	(self settings fatalClasses includes: anException) ifTrue: [^true].
	^ false