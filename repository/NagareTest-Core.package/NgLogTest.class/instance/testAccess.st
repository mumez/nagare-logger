testing
testAccess
	| logs |
	"self debug: #testAccess"
	self ng access: 'test1'.
	self ng access: 222.
	logs := self logs.
	self assert: logs size = 2.
	self assert: ((logs at: 1) at: 1) = self ng accessTag.
	self assert: ((logs at: 2) at: 1) = self ng accessTag.
	
	self assert: ((logs at: 1) at: 3) = 'test1' asByteArray.
	self assert: ((logs at: 2) at: 3) = 222