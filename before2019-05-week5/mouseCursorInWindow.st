| aWindow aGraphicsContext |
aWindow := ScheduledWindow new.
aWindow openIn: (100 @ 100 extent: 100 @ 100).
aGraphicsContext := aWindow graphicsContext.
[InputState default mouseButtons = 0]
	whileTrue:
		[| aRectangle anImage |
		ScheduledControllers checkForEvents.
		aRectangle := 0 @ 0 extent: 100 @ 100.
		aRectangle := aRectangle
						align: aRectangle center
						with: InputSensor cursorPoint.
		aRectangle := Screen default bounds intersect: aRectangle.
		anImage := Screen default completeContentsOfArea: aRectangle.
		anImage displayOn: aGraphicsContext].
aWindow controller closeAndUnschedule