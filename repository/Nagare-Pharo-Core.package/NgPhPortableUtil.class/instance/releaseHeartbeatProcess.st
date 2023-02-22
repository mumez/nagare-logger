private
releaseHeartbeatProcess
	super releaseHeartbeatProcess.
	udpSocket
		ifNotNil: 
			[udpSocket destroy.
			udpSocket := nil]