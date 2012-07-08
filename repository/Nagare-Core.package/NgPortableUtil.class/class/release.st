class initialization
release
	"NgPortableUtil release"
	default ifNotNil: [default release].
	self initDefault.
	NgLogFactory initialize.