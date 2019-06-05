"aokiオブジェクトを生成し表示して答えるプログラムです。"
"ダブルクォーと""で囲んだものはコメントで、プログラムの実行には関与しません"
| aBody |
aBody := JunOpenGL3dObject aoki. "aokiオブジェクトをこしらえてaBodyに束縛します"
aBody show.	"aBody(aokiオブジェクト)にshowのメッセージを送ります"
^aBody 		"aBody(aokiオブジェクト)にリターンします"