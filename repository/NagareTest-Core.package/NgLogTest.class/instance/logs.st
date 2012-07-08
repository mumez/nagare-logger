private
logs
	| messages mpBytesCol |
	mpBytesCol := NgPortableUtil default bytesSent.
	messages := self ng settings useStomp
				ifTrue: [mpBytesCol
						collect: [:each | Object fromStomp: each]]
				ifFalse: [mpBytesCol
						collect: [:each | MpMessagePack unpack: each]].
	^ messages
		collect: [:each | 
			each at: 1 put: (each at: 1) asString.
			each]