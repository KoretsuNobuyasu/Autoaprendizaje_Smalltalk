| aCollection aStream aModel |
aCollection := Set new.
Smalltalk allBehaviorsDo: [:each | aCollection addAll: each selectors].
aCollection := aCollection select: [:each |
				each numArgs >= 1 and: [each isKeyword]].
aCollection := aCollection asSortedCollection asArray.
aStream := WriteStream on: String new.
aCollection do: [:each | aStream nextPutAll: each asString; cr].
aModel := ValueHolder with: aStream contents.
ComposedTextView open: aModel label: 'Keyword Message Selectors'.
^aCollection