private
asStringDictionary: bytesDict 
	| dict |
	dict := Dictionary new.
	bytesDict
		keysAndValuesDo: [:k :v | dict at: k asString put: (self asString: v)].
	^ dict