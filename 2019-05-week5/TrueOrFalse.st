| aBoolean |
aBoolean := JunDialog confirm: 'Are you happy?'.
aBoolean
	ifTrue:
		[Transcript
			clear;
			cr;
			show: 'I''m happy']
	ifFalse:
		[Transcript
			clear;
			cr;
			show: 'I''m not happy']