converting
limitedStringFrom: anObject
	| str limitedStringSize |
	str := anObject isString ifTrue: [anObject] ifFalse: [anObject printString].
	limitedStringSize := self settings limitedStringSize.
	(str isEmpty or: [str size <= limitedStringSize]) ifTrue: [^str].
	^str copyFrom: 1 to: limitedStringSize