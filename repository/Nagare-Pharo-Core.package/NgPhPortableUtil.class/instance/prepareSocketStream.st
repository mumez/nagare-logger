private
prepareSocketStream
	| str |
	str := SocketStream openConnectionToHostNamed: self settings host port: self settings port.
	
	self socketStream: str