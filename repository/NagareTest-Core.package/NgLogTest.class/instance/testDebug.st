testing
testDebug
	| logs |
	"self debug: #testDebug"	
	self ng debug: 'test1'.
	self ng debug: 222.
	logs := self logs.
	self assert: logs size = 2.
	self assert: ((logs at: 1) at: 1) = self ng debugTag.
	self assert: ((logs at: 2) at: 1) = self ng debugTag.
	
	self assert: ((logs at: 1) at: 3) = 'test1' asByteArray.
	self assert: ((logs at: 2) at: 3) = 222