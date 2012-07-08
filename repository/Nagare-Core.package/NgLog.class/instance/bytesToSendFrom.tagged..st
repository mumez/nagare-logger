encoding
bytesToSendFrom: record tagged: tag
	| logMessage |
	logMessage := self newLogMessage: tag record: (self asRecord: record).
	^self encodeMessage: logMessage