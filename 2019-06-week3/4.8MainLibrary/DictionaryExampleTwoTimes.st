| aDictionary aCollection |
aDictionary := Dictionary new.
aDictionary add: 1 -> '1st'.
aDictionary add: 2 -> '3rd'.
aDictionary add: 3 -> '5th'.
aDictionary add: 4 -> '2nd'.
aDictionary add: 5 -> '4th'.
aDictionary at: '1st' put: 'first'.
aDictionary at: '3rd' put: 'third'.
aDictionary at: '5th' put: 'fifth'.
aDictionary at: '2nd' put: 'second'.
aDictionary at: '4th' put: 'fourth'.
aCollection := SortedCollection new.
aDictionary keysAndValuesDo:
	[:key :value |
	(aDictionary includesKey: value)
			ifTrue:
				[| ordinal |
				ordinal := aDictionary at: value.
				aCollection add: key -> ordinal]].
Transcript clear.
aCollection do:
		[:association |
		Transcript
			nextPutAll: association key printString;
			nextPutAll: ' -> ';
			nextPutAll: association value printString;
			cr].
Transcript flush.
^aDictionary