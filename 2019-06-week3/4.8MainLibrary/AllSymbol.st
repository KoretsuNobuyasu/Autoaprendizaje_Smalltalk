| anObject anArray |
anObject := 123.
anArray := Array new: 3.
anArray at: 1 put: Set new.
anArray at: 2 put: Set new.
anArray at: 3 put: Set new.
anObject class withAllSuperclasses do:
		[:each |
		each selectors do:
				[:aSymbol |
				| aSet |
				aSet := anArray at: aSymbol precedence.
				aSet add: aSymbol]].
Transcript clear.
(Array
	with: 'unary message selectors'
	with: 'binary message selectors'
	with: 'keyword message selectors') with: anArray
		do:
			[:aString :aSet |
			Transcript
				nextPutAll: aString;
				nextPutAll: ' (';
				nextPutAll: aSet size printString;
				nextPutAll: ')';
				cr.
			aSet asSortedCollection do:
				[:each |
				4 timesRepeat: [Transcript space].
				Transcript
					nextPutAll: each printString;
					cr]].
Transcript flush.
^anArray