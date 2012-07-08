encoding
newLogMessage: tag record: aRecord
	| array |
	array := Array new: 3.
	array at: 1 put: tag asByteArray.
	array at: 2 put: self portableUtil unixTimeSeconds.
	array at: 3 put: aRecord.
	^array