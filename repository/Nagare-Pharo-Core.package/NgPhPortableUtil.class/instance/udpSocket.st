accessing
udpSocket

	^udpSocket ifNil: [udpSocket := Socket newUDP]