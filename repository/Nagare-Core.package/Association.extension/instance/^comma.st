*nagare-Core-converting
, otherAssoc
	| dict |
	dict := Dictionary new.
	dict at: self key put: self value.
	dict at: otherAssoc key put: otherAssoc value.
	^dict