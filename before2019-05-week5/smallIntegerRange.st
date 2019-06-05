| value |
value := -1.
[(value subtractOrFail: 1) notNil]
	whileTrue: [value := value + value].
^value to: (value + 1) negated