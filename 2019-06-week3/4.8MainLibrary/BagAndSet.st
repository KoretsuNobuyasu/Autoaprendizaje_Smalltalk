| anArray aBag aSet |
anArray := #('1st' '2nd' '3rd' '4th').
aBag := Bag new.
2 timesRepeat: [anArray do: [:each | aBag add: each]].
Transcript
	clear;
	nextPutAll: aBag printString;
	cr.
aSet := Set new.
2 timesRepeat: [anArray do: [:each | aSet add: each]].
Transcript
	nextPutAll: aSet printString;
	cr;
	flush.
^Array with: aBag with: aSet