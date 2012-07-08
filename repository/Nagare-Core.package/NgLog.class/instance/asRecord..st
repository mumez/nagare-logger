encoding
asRecord: anObject
	self settings useStomp ifTrue: [^ anObject].
	^ self portableUtil asRecord: anObject