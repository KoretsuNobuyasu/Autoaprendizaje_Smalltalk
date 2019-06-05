| aClass |
aClass := Smalltalk
	defineClass: #TransientBeing
	superclass: #{Core.Object}
	indexedType: #none
	private: false
	instanceVariableNames: 'firstName familyName birthday address phoneNumber'
	classInstanceVariableNames: ' umberOfTransientBeings'
	imports: ''
	category: 'Transient-Being'.
aClass
	defineSharedVariable: #TransientVariable
	private: false
	constant: false
	category: 'Transient-Variable'
	initializer: 'nil'.
aClass browse

#{Smalltalk.TransientBeing} ifDefinedDo: [:aClass | aClass removeFromSystem]