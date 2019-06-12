| targetObject |
Transcript clear.
targetObject := 3.
(1 to: 6) do:
		[:nth |
		| anObject |
		anObject := targetObject.
		Transcript nextPutAll: targetObject printString.
		nth timesRepeat:
			[anObject := anObject class.
			Transcript nextPutAll: ' class'].
		Transcript
			cr;
			nextPutAll: '==>';
			nextPutAll: anObject printString;
			cr;
			flush]
	separatedBy: [Transcript cr]