| anArray |
anArray := Array new: 5.
Transcript
	clear;
	nextPutAll: anArray printString;
	cr.
anArray at: 1 put: 'first'.
anArray at: 3 put: 'third'.
anArray at: 5 put: 'fifth'.
Transcript
	nextPutAll: anArray printString;
	cr.
anArray at: 2 put: 'second'.
anArray at: 4 put: 'fourth'.
Transcript
	nextPutAll: anArray printString;
	cr.
anArray keysAndValuesDo:
		[:index :value |
		Transcript
			nextPutAll: index printString;
			nextPutAll: ': ';
			nextPutAll: value printString;
			cr].
Transcript flush.
^anArray