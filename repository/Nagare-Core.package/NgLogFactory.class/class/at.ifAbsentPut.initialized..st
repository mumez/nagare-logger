instance creation
at: tagPrefix ifAbsentPut: aBlock initialized: initializer
	^ self loggers at: tagPrefix ifAbsentPut: [ | newLogger |
		newLogger := aBlock value.
		initializer ifNotNil: [initializer value: newLogger].
		newLogger
	] 