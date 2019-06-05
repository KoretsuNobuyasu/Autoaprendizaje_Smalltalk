| aCollection aStream aModel |
aCollection := Set new.
Smalltalk allBehaviorsDo: [:each |
	each isMeta ifFalse: [aCollection add: each name]].
aCollection := aCollection asSortedCollection asArray.
aStream := WriteStream on: String new.
aCollection do: [:each | aStream nextPutAll: each asString; cr].
aModel := ValueHolder with: aStream contents.
ComposedTextView open: aModel label: 'Class Names'.
^aCollection