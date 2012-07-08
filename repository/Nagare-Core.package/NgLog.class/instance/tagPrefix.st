accessing
tagPrefix
	tagPrefix ifNil: [tagPrefix := self settings defaultTagPrefix].
	^ tagPrefix