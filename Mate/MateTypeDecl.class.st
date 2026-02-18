Class {
	#name : 'MateTypeDecl',
	#superclass : 'MateDecl',
	#instVars : [
		'grammar'
	],
	#category : 'Mate-Grammar',
	#package : 'Mate',
	#tag : 'Grammar'
}

{ #category : 'accessing' }
MateTypeDecl >> grammar: aGrammar [

	grammar := aGrammar 
]

{ #category : 'accessing' }
MateTypeDecl >> name [

	^ type name 
]

{ #category : 'rendering' }
MateTypeDecl >> renderShape [

	| label box color composite |

	label := RSLabel new text: self name; color: Color black.
	color := self heatColor: self totalVisits.
	
	box := RSBox new 
		extent: (label extent + (20@10));
		cornerRadius: 5;
		color: color;
		border: (RSBorder new color: Color black; width: 1).
		
	composite := RSComposite new model: self; shapes: { box . label }; yourself.
		
	composite @ (RSPopup new text: [ :n | 
		String streamContents: [ :s |
			s nextPutAll: n class name; cr.
			s nextPutAll: 'Visits: '; print: n totalVisits.
		]
	]).

	^ composite
]

{ #category : 'rendering' }
MateTypeDecl >> renderShapes [

	^ { self renderShape }
]
