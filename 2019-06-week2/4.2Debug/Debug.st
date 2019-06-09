| aCollection |
aCollection := OrderedCollection new: 10.
(1 to: 10) do: [:index | aCollection add: index * 100].
^aCollection