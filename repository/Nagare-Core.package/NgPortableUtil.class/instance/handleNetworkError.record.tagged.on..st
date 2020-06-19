error-handling
handleNetworkError: aNgNetworkError record: record tagged: tag on: logger
	| settings |
	settings := logger settings.
	settings fallbackToConsole ifTrue: [ 
		self consoleOutRecord: record tagged: tag originated: aNgNetworkError.
	].

	settings silentOnNetworkError ifFalse: [ aNgNetworkError pass ]