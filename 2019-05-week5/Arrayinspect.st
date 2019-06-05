#(123 123.45 1.2345d2 $A $あ 'Smalltalk' #Smalltalker #[0 255]) inspect

#(#(123 123.45 1.2345d2 $A) #($あ 'Smalltalk' #Smalltalker #[0 255])) inspect

| anArray |
anArray := Array new: 2.
anArray at: 1
	put: (Array
			with: 123
			with: 123.45
			with: 1.2345d2
			with: $A).
anArray at: 2
	put: (Array
			with: $あ
			with: 'Smalltalk'
			with: #Smalltalker
			with: #[0 255]).
anArray inspect