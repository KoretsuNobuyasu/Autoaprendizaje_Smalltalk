[^1+1 * Float pi cos]method symbolic 'normal CompiledBlock numArgs=0 numTemps=0 frameSize=12

literals: ({Float} #pi #cos )

1 <4A> push 1
2 <4A> push 1
3 <DF 00> no-check send +
5 <34> push Float
6 <71> send pi
7 <72> send cos
8 <A8> send *
9 <DE 01>  outer(1) method return
'