| aCollection |
aCollection := OrderedCollection new.
aCollection add: 123.
aCollection add: $a.
aCollection add: #current.
aCollection addFirst: 'prologue'.
aCollection addLast: 'epilogue'.
aCollection add: 'previous' before: #current.
aCollection add: 'next' after: #current.
aCollection add: 'encore'.
Transcript clear.
aCollection with: (1 to: aCollection size)
	do:
		[:each :index |
		Transcript
			nextPutAll: index printString;
			nextPutAll: ': ';
			nextPutAll: each printString;
			cr].
Transcript flush.
^aCollection