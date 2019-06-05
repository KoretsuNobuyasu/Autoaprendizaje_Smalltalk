"Squeakで動く円"
| aPen |
aPen := Pen new.
aPen defaultNib: 5.
aPen place: 300 @ 300.
#(#black #red #green #blue #black #red #green #blue #black #red #green #blue #black #red #green #blue #black #red #green #blue)
	do: [:aSymbol | 
		| aColor |
		(Delay forMilliseconds: 1) wait.
		aColor := Color perform: aSymbol.
		aPen color: aColor.
		aPen go: 10.
		aPen turn: 20].
aPen