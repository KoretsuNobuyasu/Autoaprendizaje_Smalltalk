| aCollection |
aCollection := OrderedCollection new.
Transcript
	clear;
	nextPutAll: aCollection printString;
	cr.
#('1st' '2nd' '3rd') do:
		[:each |
		aCollection addLast: each.
		Transcript
			nextPutAll: aCollection printString;
			cr].
aCollection size timesRepeat:
		[| anElement |
		anElement := aCollection removeFirst.
		Transcript
			nextPutAll: anElement printString;
			space;
			nextPutAll: aCollection printString;
			cr].
Transcript flush.
^aCollection