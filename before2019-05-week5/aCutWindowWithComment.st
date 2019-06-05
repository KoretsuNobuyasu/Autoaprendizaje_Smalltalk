"画面の切り取りを行い、それをウィンドウの中に表示します。"
| aRectangle anImage aWindow |
aRectangle := 0 @ 0 extent: 300 @ 300. "切り取り領域"
anImage := Screen default completeContentsOfArea: aRectangle. "画面の切り取り"
aWindow := ScheduledWindow new. "ウィンドウのインスタンスを作成"
aWindow component: anImage. "切り取った画像をウィンドウの内容に指定"
aWindow openIn:(100 @ 100 extent: aRectangle extent) "ウィンドウのオープン"