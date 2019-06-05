| anInteger |
anInteger := -1234567890123456789.
Transcript clear.
(2 to: 35) do:
		[:radix |
		| aString |
		aString := anInteger printStringRadix: radix.
		anInteger positive
			ifTrue: [aString := radix printString , 'r' , aString]
			ifFalse:
				[aString := '-' , radix printString , 'r'
							, (aString copyFrom: 2 to: aString size)].
		Transcript
			nextPutAll: aString;
			cr;
			flush]