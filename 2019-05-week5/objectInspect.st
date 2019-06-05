| anArray |
anArray := Array new: 10.
(1 to: 10) do: [:index | anArray at: index put: index * 100].
^anArray

| aRectangle anImage |
aRectangle := 70 @ 0 extent: 100 @ 100.
anImage := JunImageUtility fromDisplay: aRectangle.
anImage inspect.
^aRectangle