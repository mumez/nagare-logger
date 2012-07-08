testing
testExceptionLog
	"self debug: #testExceptionLog"
	
	| errorInfo |
	[1/0] on: Error do: [:ex | ex ngLog].
	
	self assert: self logs size = 1.
	self assert: ((self logs at: 1) at: 1) = self ng errorTag.
	
	errorInfo := self asStringDictionary: ((self logs at: 1) at: 3).
	
	self assert:  (errorInfo at: 'receiver') = '1'.
	self assert:  (errorInfo includesKey: 'description').
	self assert:  (errorInfo includesKey: 'stack')