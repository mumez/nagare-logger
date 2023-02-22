accessing
ensuredSocketStream
	self socketStream isNil
		ifTrue: [self prepareSocketStream]
		ifFalse: [self socketStream isConnected
				ifFalse: [self releaseSocketStream; prepareSocketStream]].
	^ self socketStream