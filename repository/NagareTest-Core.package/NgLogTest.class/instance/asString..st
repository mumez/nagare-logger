private
asString: anObject
	"For VW"
	(anObject isKindOf: String) ifTrue: [^anObject asString].
	(anObject isKindOf: ByteArray) ifTrue: [^anObject asString].
	^ anObject printString