| aCollection aStream aModel |
aCollection := Set new.
Smalltalk allBehaviorsDo: [:each | aCollection addAll: each selectors].
aCollection := aCollection select: [:each|
				each numArgs = 0 and: [each isKeyword not]].
aCollection := aCollection asSortedCollection asArray.
aStream := WriteStream on: String new.
aCollection do: [:each | aStream nextPutAll: each asString; cr].
aModel := ValueHolder with: aStream contents.
ComposedTextView open: aModel label: 'Unary Message Selectors'.
^aCollection