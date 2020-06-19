sending
sendLog: record tagged: tag on: logger
	| bytes |
	bytes := logger bytesToSendFrom: record tagged: tag.
	[self sendBytes: bytes] on: NgNetworkError do: [:ex |
		self handleNetworkError: ex record: record tagged: tag on: logger.
	].
	^logger