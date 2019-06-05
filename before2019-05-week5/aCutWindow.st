| aRectangle anImage aWindow |
aRectangle := 0 @ 0 extent: 300 @ 300.
anImage := Screen default completeContentsOfArea: aRectangle.
aWindow := ScheduledWindow new.
aWindow component: anImage.
aWindow openIn: (100 @ 100 extent: aRectangle extent)