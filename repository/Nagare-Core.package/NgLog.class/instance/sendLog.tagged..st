private
sendLog: record tagged: tag
	self settings sendToFluentd ifFalse: [ ^self ].
	^ self portableUtil sendLog: record tagged: tag on: self