accessing
silentOnNetworkError
	^self at: #silentOnNetworkError ifAbsentPut: [false]