| anArray | 
anArray := Array new: 5.
anArray at: 1 put: 3 asPoint + 4 asPoint.
^anArray #(7 @ 7 nil nil nil nil)t: 3 asPoint + 4 asPoint