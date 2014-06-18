*Nagare-Core-converting
, otherAssoc
	otherAssoc isCollection ifTrue: [ ^super, otherAssoc].
	self at: otherAssoc key put: otherAssoc value.
	^self