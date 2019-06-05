| aWindow aGraphicsContext anImage |
aWindow := ScheduledWindow new.
aWindow openIn: (300@100 extent: 200 @ 200).
aGraphicsContext := aWindow graphicsContext.
anImage := JunImageUtility fromDisplay: (70@ 0 extent: 100@100).
aWindow sensor waitNoButton.
anImage
	follow: [aWindow sensor cursorPoint]
	while: [aWindow sensor noButtonPressed]
	on: aGraphicsContext.
^aWindow