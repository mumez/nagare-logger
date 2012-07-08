accessing
heartbeatInterval
	^self at: #heartbeatInterval ifAbsentPut: [1]