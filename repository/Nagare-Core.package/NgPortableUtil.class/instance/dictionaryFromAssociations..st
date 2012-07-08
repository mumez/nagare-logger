converting
dictionaryFromAssociations: assocs
	| dict |
	dict := Dictionary new: assocs size.
	dict addAll: assocs.
	^ dict