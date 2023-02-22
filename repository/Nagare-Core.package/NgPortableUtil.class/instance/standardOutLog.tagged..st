writing
standardOutLog: record tagged: tag
	| stdout |
	stdout := Stdio stdout.
	stdout lf; 
		nextPutAll: DateAndTime now printString;
		nextPutAll: ' ';
		nextPutAll: tag;
		nextPutAll: ' ';
		nextPutAll: record printString;
		flush