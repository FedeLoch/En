Class {
	#name : 'MateSmallIntegerGenerator',
	#superclass : 'MateBuiltInGenerator',
	#instVars : [
		'generator'
	],
	#category : 'Mate-Generation',
	#package : 'Mate',
	#tag : 'Generation'
}

{ #category : 'translating' }
MateSmallIntegerGenerator >> generate [

	^ (SmallInteger minVal to: SmallInteger maxVal) atRandom 
]

{ #category : 'translating' }
MateSmallIntegerGenerator >> generateWithConstraint: aConstraint [

	aConstraint ifNil: [ ^ self generate ].
	
	^ aConstraint universe atRandom asInteger
]

{ #category : 'initialization' }
MateSmallIntegerGenerator >> initialize [ 
	
	super initialize.
	generator := UmeGrammarGenerator new grammar: DecimalGrammar new.
]
