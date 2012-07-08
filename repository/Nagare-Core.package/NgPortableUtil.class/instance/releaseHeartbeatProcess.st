private
releaseHeartbeatProcess
	self heartbeatProcess ifNil: [^self].
	self heartbeatProcess terminate.
	self heartbeatProcess: nil