| aRectangle anImage aWindow |
aRectangle := 200 @ 100 extent: 400 @ 300.
anImage := JunImageUtility fromDisplay: aRectangle.
aWindow := ApplicationWindow new.
aWindow := ApplicationWindow new.
aWindow label: 'My First Window'.
aWindow component: anImage.
aWindow openIn: aRectangle.
32
	timesRepeat:
	[aWindow displayPendingInvalidation.
	(Delay forMilliseconds: 100) wait.
	aRectangle := aWindow displayBox.
	aRectangle := aRectangle translatedBy: 4 @ 3.
	aWindow displayBox: aRectangle].
^aWindow