testing
testComprexLog
	"self debug: #testComprexLog"
	"Log arbitrary complex records"
	"Requires StOMP"
	
	| logs origRecord retrievedRecord |
	self assert: (Object canUnderstand: #toStomp).
	self ng settings: (NgSettings new useStomp: true; yourself).
	
	self ng debug: 'test1'.
	self ng info: #test2 -> 222.
	origRecord := Array with: #test3->3.14 with: (#time -> Time now) with: (#date -> Date today).
	self ng fatal: origRecord.
	
	logs := self logs.
	
	self assert: logs size = 3.
	self assert: ((logs at: 1) at: 1) = self ng debugTag.
	self assert: ((logs at: 2) at: 1) = self ng infoTag.
	self assert: ((logs at: 3) at: 1) = self ng fatalTag.
	
	self assert: ((logs at: 1) at: 3) = 'test1'.
	self assert: ((logs at: 2) at: 3) = (#test2 -> 222).
	retrievedRecord := ((logs at: 3) at: 3).
	self assert: retrievedRecord size = origRecord size.
	self assert: (retrievedRecord at: 1) = (origRecord at: 1).
	self assert: (retrievedRecord at: 2) key = (origRecord at: 2) key.
	self assert: (retrievedRecord at: 2) value asSeconds = (origRecord at: 2) value asSeconds.
	self assert: (retrievedRecord at: 3) key = (origRecord at: 3) key.
	self assert: (retrievedRecord at: 3) value asSeconds = (origRecord at: 3) value asSeconds.
	
	self ng settings: nil