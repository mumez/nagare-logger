writing
standardOutLog: record tagged: tag
	| stdout recordString |
	(FileDirectory slash = '\') ifTrue:[
		^ super standardOutLog: record tagged: tag
	].
	stdout := FileStream stdout.
	recordString := [ record asJsonString ] on: Error do: [:ex | ex return: record printString ].
	stdout lf; 
		nextPutAll: DateAndTime now printString;
		nextPutAll: ' ';
		nextPutAll: tag;
		nextPutAll: ' ';
		nextPutAll: recordString;
		flush