| theFloat|
theFloat := 1.23456.
Transcript clear.
(-100 to: 100) do:
		[:n |
		Object errorSignal handle: [:exception | exception return]
			do:
				[| aFloat |
				aFloat := theFloat * (10 ** n).
				aFloat <= theFloat class zero
					ifFalse:
						[Transcript
							nextPutAll: aFloat printString;
							cr;
							flush]]]