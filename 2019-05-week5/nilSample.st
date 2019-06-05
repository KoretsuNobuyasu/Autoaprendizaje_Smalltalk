| aValueHolder |
aValueHolder := ValueHolder new.
"下のコメントを外して実行するとオブジェクトが未定でなくなる"
"aValueHolder value: Object new."
aValueHolder value
	ifNil:
		[Transcript
			cr;
			show: 'not yet bound']
	ifNotNil:
		[:aValue |
		Transcript
			cr;
			show: aValue printString]
