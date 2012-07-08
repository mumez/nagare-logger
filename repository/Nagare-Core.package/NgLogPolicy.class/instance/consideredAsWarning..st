testing
consideredAsWarning: anException
	(self settings warningClasses includes: anException) ifTrue: [^true].
	^ anException isKindOf: Warning