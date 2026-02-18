Class {
	#name : 'MateInstVarDecl',
	#superclass : 'MateDecl',
	#instVars : [
		'name',
		'constraint'
	],
	#category : 'Mate-Grammar',
	#package : 'Mate',
	#tag : 'Grammar'
}

{ #category : 'comparing' }
MateInstVarDecl >> = anObject [

	super = anObject ifFalse: [ ^ false ].
	
	^ name = anObject name and: [ constraint = anObject constraint ]
]

{ #category : 'as yet unclassified' }
MateInstVarDecl >> acceptType: aType [

	^ type acceptType: aType
]

{ #category : 'as yet unclassified' }
MateInstVarDecl >> chooseOneTypeFrom: context [

	^ type getOneFrom: context
]

{ #category : 'accessing' }
MateInstVarDecl >> constraint [

	^ constraint
]

{ #category : 'accessing' }
MateInstVarDecl >> constraint: aConstraint [

	constraint := aConstraint
]

{ #category : 'comparing' }
MateInstVarDecl >> hash [

	^ (super hash bitXor: name hash) bitXor: constraint hash
]

{ #category : 'accessing' }
MateInstVarDecl >> name [

	^ name
]

{ #category : 'accessing' }
MateInstVarDecl >> name: instanceVariableName [

	name := instanceVariableName 
]

{ #category : 'accessing' }
MateInstVarDecl >> renderShape [

	| label box color composite |
	label := RSLabel new
		         text: self name , ': ' , (self type ifNil: [ 'nil' ] ifNotNil: [ self type name ]);
		         color: Color black.
	color := self heatColor: self totalVisits.

	box := RSBox new
		       extent: label extent + (20 @ 10);
		       cornerRadius: 5;
		       color: color;
		       border: (RSBorder new
				        color: Color black;
				        width: 1).

	composite := RSComposite new
		             model: self;
		             shapes: { box . label };
		             yourself.

	composite @ (RSPopup new text: [ :n |
			 String streamContents: [ :s |
					 s nextPutAll: n class name; cr.
					 s nextPutAll: 'Visits: ';
						 print: n totalVisits ] ]).

	^ composite
]

{ #category : 'accessing' }
MateInstVarDecl >> renderShapes [

	type ifNil: [ ^ { self renderShape } ].
	
	^ { self renderShape },  type renderShapes
]

{ #category : 'accessing' }
MateInstVarDecl >> types [

	^ type types
]

{ #category : 'visiting' }
MateInstVarDecl >> visiting: aVisitor from: context constraint: aConstraint [

	^ aVisitor visitInstVarDecl: self from: context
]
