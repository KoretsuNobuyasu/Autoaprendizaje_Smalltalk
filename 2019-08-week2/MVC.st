| aModel anInspector |
aModel := FooDisplayModel new.
aModel openAt: 100 @ 300.
anInspector := Tools.Trippy.InspectorShell new.
((anInspector class classPool)
	at: #EvaluationPaneWasLastShown put: true;
	at: #SharedTextHolder)
		value: '
self displayObject: (JunImageUtility fromScreen: (0 @0 extent: 300 @ 300))
self displayObject: (JunImageUtility fromScreen: (550 @ 0 extent: 300 @ 300))'
				withCRs.
(anInspector allButOpenInterface: #windowSpec) window
	openIn: (408 @ 300 extent: 500 @ 300).
anInspector inspect: aModel.
^aModel