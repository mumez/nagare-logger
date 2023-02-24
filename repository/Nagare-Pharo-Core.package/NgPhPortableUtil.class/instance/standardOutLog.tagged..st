writing
standardOutLog: record tagged: tag
	| stdout recordString |
	stdout := Stdio stdout.
	OSPlatform current isWindows ifTrue: [ stdout setToEnd ].
	recordString := [ STON toJsonString: record ] on: Error do: [:ex | ex return: record printString ].
	stdout lf; 
		nextPutAll: DateAndTime now printString;
		nextPutAll: ' ';
		nextPutAll: tag;
		nextPutAll: ' ';
		nextPutAll: recordString;
		flush