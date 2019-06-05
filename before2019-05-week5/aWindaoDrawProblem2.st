| aString aBlock aModel aWindow |
aString := '私の名前'.
aBlock := [:graphicsContext :aView | 
    | aComposedText |
    aComposedText := ComposedText
        withText: aString asText
        style: (JunFontModel textStyleHeight: 72).
    aComposedText
        displayOn: graphicsContext
        at: aView bounds center - aComposedText bounds center].
aModel := JunAbstractModel new.
aModel displayBlock: aBlock.
aWindow := ApplicationWindow new.
aWindow label: '私のウィンドウ'.
aWindow minimumSize: 400 @ 300.
aWindow background: (ColorValue brightness: 0.9).
aWindow component: (JunAbstractView model: aModel).
aWindow open
