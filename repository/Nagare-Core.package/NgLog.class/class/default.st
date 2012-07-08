instance creation
default
	"NgLog default"
	default ifNil: [default := NgLogFactory defaultLogger].
	^default