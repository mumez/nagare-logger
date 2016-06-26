initialize-release
initTags
	self tags
		do: [:each | | tag |
		tag := self tagPrefix, (self class perform: each). 
		self perform: (each, ':') asSymbol with: tag
	]