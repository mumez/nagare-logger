testing
testAdmin
	| logs |
	"self debug: #testAdmin"
	self ng admin: 'test1'.
	self ng admin: 222.
	logs := self logs.
	self assert: logs size = 2.
	self assert: ((logs at: 1) at: 1) = self ng adminTag.
	self assert: ((logs at: 2) at: 1) = self ng adminTag.
	
	self assert: (((logs at: 1) at: 3) at: 'data') asString = 'test1'.
	self assert: (((logs at: 2) at: 3) at: 'data') = 222