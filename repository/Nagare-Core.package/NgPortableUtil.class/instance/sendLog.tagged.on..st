sending
sendLog: record tagged: tag on: logger
	| bytes |
	bytes := logger bytesToSendFrom: record tagged: tag.
	self sendBytes: bytes.
	^logger