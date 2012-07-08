comparing
= other
	self class = other class ifFalse: [^false].
	^ self tagPrefix = other tagPrefix