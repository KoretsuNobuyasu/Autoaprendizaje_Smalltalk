| anArray aBag aSet |
anArray := Array
			with: OrderedCollection
			with: Array
			with: Bag
			with: Set.
aBag := Bag new.
aSet := Set new.
anArray
	do: [:each | each selectors do:
				[:it |
				aBag add: it.
				aSet add: it]].
Transcript clear.
aSet asSortedCollection do:
	[:each |
	|multiplicity |
	multiplicity := aBag occurrencesOf: each.
	multiplicity > 1
		ifTrue:
			[Transcript
				nextPutAll: '[';
				nextPutAll: multiplicity printString;
				nextPutAll: '] ';
				nextPutAll: each printString;
				cr]].
Transcript flush.
^Array with: aBag with: aSet