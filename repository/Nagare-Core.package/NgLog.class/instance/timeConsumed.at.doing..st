logging-convenient
timeConsumed: msecs at: tracePoint doing: description
	| map |
	map := Dictionary new.
	map at: #msecs put: msecs.
	map at: #tracePoint put: tracePoint.
	description ifNotNil: [map at: #description put: description].
	self perf: map