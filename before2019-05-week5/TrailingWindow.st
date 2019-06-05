| aRectangle anImage aWindow|
aRectangle := 200 @ 100 extent: 400 @ 300.
anImage := JunImageUtility fromDisplay: aRectangle.
aWindow := ApplicationWindow new.
aWindow label: 'My First Window'.
aWindow component: anImage.
aWindow openIn: aRectangle.
JunSensorUtility cursorPoint: aRectangle topCenter.
[JunSensorUtility noButtonPressed]
	whileTrue:
		[aWindow displayPendingInvalidation.
		aRectangle := aWindow displayBox.
		aRectangle := aRectangle
			align: aRectangle topCenter
			with: JunSensorUtility cursorPoint.
		aWindow displayBox: aRectangle].
^aWindow