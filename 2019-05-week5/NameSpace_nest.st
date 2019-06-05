| aCollection aBlock |
Transcript clear.
ObjectMemory globalGarbageCollect.
aCollection := NameSpace allInstances.
aCollection := aCollection
			asSortedCollection: [:a :b | a printString < b printString].
aBlock := 
		[:aNameSpace :anInteger |
		anInteger timesRepeat: [Transcript nextPutAll: '| '].
		Transcript
			nextPutAll: aNameSpace printString;
			cr;
			flush.
		(aCollection select: [:each | each environment = aNameSpace])
			do: [:each | aBlock value: each value: anInteger + 1 ]].
aBlock value: Root value: 0

