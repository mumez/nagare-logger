initialize-release
initTags
	#(accessTag adminTag debugTag fatalTag infoTag perfTag errorTag warnTag)
		do: [:each | | tag |
		tag := self tagPrefix, (self class perform: each). 
		self perform: (each, ':') asSymbol with: tag
	]