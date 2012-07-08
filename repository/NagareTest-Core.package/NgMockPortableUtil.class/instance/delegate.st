accessing
delegate
	^delegate ifNil: [delegate := NgPortableUtil defaultActualClass new]