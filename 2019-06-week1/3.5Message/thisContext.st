| aContext aBlock |
[:aClass :thisMessage |
aContext := thisContext.
aBlock :=
	[:context |
	(aClass == context receiver class and: [thisMessage == context selector])
		ifTrue: [^true].
	context sender ifNotNil: [:it | aBlock value: it sender]].
aBlock value: aContext sender.
^false]
	value: TextEditorController
	value: #printIt