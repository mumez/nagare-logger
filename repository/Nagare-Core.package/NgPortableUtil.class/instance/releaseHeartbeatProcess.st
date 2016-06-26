private
releaseHeartbeatProcess
	self heartbeatProcess ifNil: [^self].
	[self heartbeatProcess terminate] on: ProcessAlreadyTerminating do: [:ex |].
	self heartbeatProcess: nil