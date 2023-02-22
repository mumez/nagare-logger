error-handling
consoleOutRecord: record tagged: tag originated: originator
	Transcript cr; 
		show: DateAndTime now printString; space;
		show: tag; space;
		show: record printString.
	originator ifNotNil: [ 
		Transcript
			show: ' < ';
			show: originator printString
	]