| theDouble |
theDouble := 1.23456d.
Transcript clear.
(-1000 to: 1000) do:
		[:n |
		Object errorSignal handle: [:exception | exception return]
			do:
				[| aDouble |
				aDouble := theDouble * (10 ** n).
				aDouble <= theDouble class zero
					ifFalse:
						[Transcript
							nextPutAll: aDouble printString;
							cr;
							flush]]]