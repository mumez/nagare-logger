encoding
encodeByStomp: logMessage
	"use richer StOMP(Smalltalk Object MP) for encoding"
	| enc |
	enc := StompWriter onBytes: (ByteArray new: 50).
	^enc encode: logMessage.