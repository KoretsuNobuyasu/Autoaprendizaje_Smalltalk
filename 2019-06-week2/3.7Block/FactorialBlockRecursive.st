| aBlock |
aBlock :=
	[:anInteger |
	| errorBlock recursionBlock |
	errorBlock := [self error: 'Factorial is invalid on negative numbers.'].
	recursionBlock := [aBlock value: anInteger - 1].
	anInteger < 0 ifTrue: [errorBlock value].
	anInteger = 0 ifTrue: [1] ifFalse: [anInteger * recursionBlock value]].
aBlock value: 6 

"以下、ブロックを用いた典型的なプログラム制御構造メッセージ送信の雛形"
"
anObject ifNil: ["不定の時の処理]
anObject ifNotNil: ["不定ではない時の処理"]
anObject ifNotNil: [:it | "不定ではない時の処理"]
anObject ifNil: ["不定の時の処理"] ifNotNil: ["不定ではない時の処理"]
anObject ifNil: ["不定の時の処理"] ifNotNil] [:it |"不定ではない時の処理"]
anBoolean ifTrue: ["真の時の処理"]
anBoolean ifFalse: ["偽の時の処理"]
anBoolean ifTrue: ["真の時の処理"] ifFalse: ["偽の時の処理"]
aBoolean and: ["真の時の処理"]
aBoolean or: ["偽の時の処理"]
"
