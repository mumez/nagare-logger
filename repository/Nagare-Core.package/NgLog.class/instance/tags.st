accessing
tags
	| klasses |
	klasses := (Array with: self class) , self class allSuperclasses.
	^ klasses
		inject: Set new
		into: [ :sum :each | 
			sum addAll: ((each organization listAtCategoryNamed: #'accessing-tags')	select: [ :sele | sele isUnary ]); yourself ]