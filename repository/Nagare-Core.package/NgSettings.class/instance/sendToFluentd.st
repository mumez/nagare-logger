log-destination
sendToFluentd
	^self at: #sendToFluentd ifAbsentPut: [true]