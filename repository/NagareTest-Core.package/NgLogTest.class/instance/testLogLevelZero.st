testing
testLogLevelZero
	"self debug: #testLogLevelZero"
	self ng settings: (NgSettings new logLevel: 0; yourself).
	self ng debug: 'test1'.
	self ng debug: 222.
	
	self assert: self logs size = 0.
	
	self ng settings: nil