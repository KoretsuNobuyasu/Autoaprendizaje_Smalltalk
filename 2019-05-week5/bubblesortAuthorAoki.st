| anArray n i |
anArray := Array withAll: #(8 3 5 9 1).
n := anArray size.
i := 1.
[i < n]
    whileTrue:
        [| a b |
        a := anArray at: i.
        b := anArray at: i + 1.
        a > b
            ifTrue:
                [anArray at: i put: b.
                anArray at: i + 1 put: a.
                i := 1]
            ifFalse: [i := i + 1]].
^anArray