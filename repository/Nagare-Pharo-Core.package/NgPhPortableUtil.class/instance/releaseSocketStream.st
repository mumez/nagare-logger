private
releaseSocketStream
	self socketStream ifNil: [^self].
	self socketStream close.
	self socketStream: nil