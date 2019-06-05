| aClass aBeing |
aClass := Smalltalk
	defineClass: #TransientBeing
	superclass: #{Core.Object}
	indexedType: #none
	private: false
	instanceVariableNames: 'firstName familyName birthday address phoneNumber'
	classInstanceVariableNames: 'numberOfTransientBeings'
	imports: ''
	category: 'Transient-Being'.
aClass inspect.
aBeing := aClass new.
aBeing inspect

#{Smalltalk.TransientBeing} ifDefinedDo: [:aClass | aClass removeFromSystem]