initialize-release
release
	NgLogFactory removeKey: self tagPrefix ifAbsent: [^self].
	self initialize