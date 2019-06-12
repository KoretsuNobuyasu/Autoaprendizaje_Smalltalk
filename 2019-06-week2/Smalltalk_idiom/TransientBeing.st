| aDate aBegin |
aDate := Date readFrom: 'November 11, 1957' readStream.
aBegin := TransientBegin birthDay: aDate.
Transcript cr; show: aBeing age printString, 'years'.
Transcript cr; show: aBeing livingDays printString, 'days'.
^aBeing