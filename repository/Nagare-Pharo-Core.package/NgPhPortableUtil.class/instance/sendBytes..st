sending
sendBytes: bytes
	[self ensuredSocketStream nextPutAllFlush: bytes] on: NetworkError do: [:ex |
		(NgNetworkError originalError: ex) signal
	]