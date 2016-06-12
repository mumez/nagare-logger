testing
testPrefix
	| logs |
	"self debug: #testPrefix"
	self >@ 'myApp' access: 'test1'.
	self ng info: 222.
	self >@ 'myApp'  info: 333.
	
	logs := self logs.
	self assert: logs size = 3.
	self assert: ((logs at: 1) at: 1) = (self >@ 'myApp') accessTag.
	self assert: ((logs at: 2) at: 1) = (self ng) infoTag.
	self assert: ((logs at: 3) at: 1) = (self >@ 'myApp') infoTag.
	
	self assert: ((logs at: 1) at: 3) asString = 'test1'.
	self assert: ((logs at: 2) at: 3) = 222.
	self assert: ((logs at: 3) at: 3) = 333.
	
	(self >@ 'myApp') release