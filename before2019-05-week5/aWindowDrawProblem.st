| aString  aURL aFilename aWindow |
aString := 'http://www.kyoto-su.ac.jp/images/logo.gif'.
aURL := JunURL named: aString.
aURL exists ifFalse: [^nil].
aFilename := Filename defaultDirectory construct: aURL asURI tail.
aURL downloadTo: aFilename.
aFilename exists ifFalse: [^nil].
anImage := JunImageUtility fromFile: aFilename.

aWindow := ApplicationWindow new.
aWindow label: '私のウィンドウ'.
aWindow minimumSize: 400 @ 300.
aWindow component: anImage.
aWindow openIn: (100@100 extent: 600@450).
^aWindow