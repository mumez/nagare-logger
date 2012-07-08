initialize-release
release
	super release
	delegate ifNotNil: [delegate release].
	delegate := nil.
	bytesSent := nil