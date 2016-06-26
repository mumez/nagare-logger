private
heartbeatTo: host port: port
	self udpSocket isValid ifFalse: [ ^self ].
	self udpSocket sendData: '' toHost: (NetNameResolver addressForName: host) port: port