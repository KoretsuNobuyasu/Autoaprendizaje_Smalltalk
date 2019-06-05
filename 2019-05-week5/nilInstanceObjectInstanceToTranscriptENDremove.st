| aValue |
Transcript clear.
Smalltalk
	defineSharedVariable: #TransientVariable
	private: false
	constant: false
	category: 'Transient-Variable'
	initializer: 'nil'.
aValue := #{Smalltalk.TransientVariable} value.
Transcript
	nextPutAll: aValue printString;
	cr.
#{Smalltalk.TransientVariable} value: Object new.
aValue := #{Smalltalk.TransientVariable} value.
Transcript
	nextPutAll: aValue printString;
	cr.
Smalltalk removeKey: #TransientVariable ifAbsent: [nil].
Transcript flush
