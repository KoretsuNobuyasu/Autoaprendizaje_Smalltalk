| aClass aDictionary |
aClass := Magnitude.
aDictionary := Dictionary new.
aClass selectors do:
		[:selector |
		| method steps bytes |
		method := aClass compiledMethodAt: selector.
		steps := (method getSource select: [:c | c = Character cr]) size + 1.
		bytes := method bytesSize.
		aDictionary at: selector put: (Array with: steps with: bytes)].
Transcript clear.
aDictionary associations asSortedCollection do:
		[:association |
		Transcript
			nextPutAll: association key printString;
			nextPutAll: ' -> ';
			nextPutAll: association value printString;
			cr].
Transcript flush.
^aDictionary	