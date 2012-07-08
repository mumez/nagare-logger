accessing
heartbeatProcess
	heartbeatProcess ifNil: [self prepareHeartbeatProcess].
	^ heartbeatProcess