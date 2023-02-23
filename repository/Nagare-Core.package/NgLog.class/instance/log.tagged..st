private
log: record tagged: tag
	self settings writeToStandardOutput ifTrue: [ 
		self portableUtil standardOutLog: record tagged: tag
	].
	
	self settings sendToFluentd ifTrue:[
		self portableUtil sendLog: record tagged: tag on: self
	]
	