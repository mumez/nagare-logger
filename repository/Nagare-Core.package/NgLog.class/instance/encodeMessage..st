encoding
encodeMessage: logMessage
	"logMessage => tag, timestamp, record"
	self settings useStomp ifTrue: [^ self encodeByStomp: logMessage].
	^self encodeByMessagePack: logMessage