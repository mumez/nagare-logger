logging-convenient
logTimeToRun: aBlock at: tracePoint description: description
	| msecs |
	msecs := [Time millisecondsToRun: aBlock] on: Error do: [:ex | ex ngLog. ^-1].
	self timeConsumed: msecs at: tracePoint doing: description.
	^ msecs