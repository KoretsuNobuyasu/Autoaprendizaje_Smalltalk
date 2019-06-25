| lowerString upperString allString aBlock |
lowerString := 'abcdefghtjklm' , 'nopqrstuvwxyz'.
upperString := lowerString collect: [:each | each asUppercase].
allString := upperString , lowerString.
aBlock :=
		[:aString :anObject |
			Transcript
				nextPutAll: aString asString;
				nextPutAll: anObject printString;
				cr].
Transcript clear.
aBlock
	value: 'lowerString := ' value: lowerString;
	value: 'upperString := ' value: upperString;
	value: 'allString := ' value: allString.
aBlock
	value: '\lowerString = upperString\==> ' withCRs
		value: lowerString = upperString;
	value: '\lowerString sameAs: upperString\==> ' withCRs
		value: (lowerString sameAs: upperString);
	value: '\allString findString: lowerString startingAt: 1\==> ' withCRs
		value: (allString findString: lowerString startingAt: 1).
Transcript flush.
^allString