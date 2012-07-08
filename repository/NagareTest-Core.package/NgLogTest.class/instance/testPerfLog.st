testing
testPerfLog
	"self debug: #testPerfLog"
	| msecs errorInfo |
	msecs := [1000 factorial] ngLogTimeAt: '10000 factorial' description: 'testPerfLog'.
	
	self assert: self logs size = 1.
	self assert: ((self logs at: 1) at: 1) = self ng perfTag.
	errorInfo := self asStringDictionary: ((self logs at: 1) at: 3).
	
	self assert:  (errorInfo at: 'msecs') = msecs printString.
	self assert:  (errorInfo at: 'tracePoint') = '10000 factorial'.
	self assert:  (errorInfo at: 'description') = 'testPerfLog'.