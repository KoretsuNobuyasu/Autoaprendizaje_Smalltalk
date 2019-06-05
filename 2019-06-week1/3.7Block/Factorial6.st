| anInteger |
anInteger := 6.
(2 to: anInteger by: 1) inject: 1 into: [:v :n | v * n]