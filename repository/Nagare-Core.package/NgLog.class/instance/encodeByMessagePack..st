encoding
encodeByMessagePack: logMessage
	"use plainer MP for encoding"
	| enc |
	enc := MpEncoder onBytes: (ByteArray new: 30).
	enc settings stringAsBytes: true.
	^enc encode: logMessage.