converting
dictionaryFromAssociations: assocs
	| dict |
	dict := Dictionary new: assocs size.
	assocs do: [ :each |
		dict at: each key put: each value.
	].
	^ dict