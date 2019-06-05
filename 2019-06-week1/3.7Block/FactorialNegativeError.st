| aBlock |
aBlock := 
	[:anInteger |
	|errorBlock factorialBlock |
	errorBlock := [self error: 'Factorial is invalid on negative numbers.'].
	factorialBlock := [:v :n | v * n].
	anInteger < 0 ifTrue: [errorBlock value].
	(2 to: anInteger by: 1) inject: 1 into: factorialBlock].
aBlock value: 6 