| aDate aBeing |
aDate := Date readFrom: 'November 11, 1957' readStream.
aBeing := TransientBeing birthDay: aDate.
Transcript cr; show: aBeing age printString , 'years'.
Transcript cr; show: aBeing livingDays printString, 'days'.
^aBeing

Browser open
"Browser open が使えない。"
"P56"