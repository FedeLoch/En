Extension { #name : 'Object' }

{ #category : '*Mate' }
Object class >> acceptType: aType [
	
	^ self = aType
]

{ #category : '*Mate' }
Object class >> getOne [

	^ self
]

{ #category : '*Mate' }
Object class >> getOneFrom: context [
	"For single types (not MateOptionalType), just return self ignoring context"
	^ self
]

{ #category : '*Mate' }
Object class >> renderShapes [

	| box label composite color |
	
	label := RSLabel new text: self name; color: Color black.
	color := Color veryLightGray.
	
	box := RSBox new 
		extent: (label extent + (20@10));
		cornerRadius: 5;
		color: color;
		border: (RSBorder new color: Color black; width: 1).
		
	composite := RSComposite new model: self; shapes: { box . label }; yourself.
		
	composite @ (RSPopup new text: [ :n | 
		String streamContents: [ :s |
			s nextPutAll: n class name; cr
		]
	]).

	^ {composite}
]

{ #category : '*Mate' }
Object class >> types [

	^ { self }
]

{ #category : '*Mate' }
Object class >> updateReward: improvement context: context from: decl [
	
	^ nil
]

{ #category : '*Mate' }
Object class >> | aClass [ 
	
	^ MateOptionalType options: { self . aClass }
]
