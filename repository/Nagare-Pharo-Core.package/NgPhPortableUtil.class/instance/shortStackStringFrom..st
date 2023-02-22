converting
shortStackStringFrom: anException 
	| ctx stackString |
	ctx := anException signalerContext.
	stackString := ctx isNil
				ifTrue: ['']
				ifFalse: [String
						streamContents: [:strm | (ctx stackOfSize: 20)
								do: [:item | strm print: item. strm nextPutAll: '\'. 
										 ]]].
	^ stackString