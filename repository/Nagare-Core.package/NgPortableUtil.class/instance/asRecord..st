converting
asRecord: anObject
	anObject class = Association ifTrue: [^ self dictionaryFromAssociations: (Array with: anObject)].
	(anObject class = Array and: [anObject notEmpty and: [(anObject at: 1) class = Association]])
		ifTrue: [^ self dictionaryFromAssociations: anObject].
	^anObject