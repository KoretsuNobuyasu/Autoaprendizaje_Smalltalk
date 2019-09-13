	| aDialog aFile aStream aBuffer aBlock aString |
	aDialog := Tools.OpenFileDialog new.
	aFile := aDialog open ifTrue: [aDialog selection] ifFalse: [^nil].
	aStream := (aFile withEncoding: #UTF_8) readStream.
	aBuffer := WriteStream on: String new.
	aBlock :=
			[aBuffer
				nextPutAll: '<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<array>
'.
			[aStream atEnd] whileFalse: 
					[aString := aStream upTo: Character cr.
					aString isEmpty
						ifFalse: 
							[| firstIndex lastIndex aShortcut aPhrase |
							firstIndex := aString findFirst: [:each | each = Character tab].
							lastIndex := aString findLast: [:each | each = Character tab].
							aShortcut := aString copyFrom: 1 to: firstIndex - 1.
							aPhrase := aString copyFrom: lastIndex + 1 to: aString size.
							aBuffer
								nextPutAll: '	<dict>
		<key>shortcut</key>
		<string>';
								nextPutAll: aShortcut;
								nextPutAll: '</string>
		<key>phrase</key>
		<string>';
								nextPutAll: aPhrase;
								nextPutAll: '</string>
	</dict>';
								cr]].
			aBuffer nextPutAll: '</array>
</plist>
'].
	aBlock ensure: [aStream close].
	aString := aBuffer contents.
	Core.Transcript
		clear;
		show: aString.
	^aString