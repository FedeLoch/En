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

	^ (generator gen: nil) asNumber
]

{ #category : 'translating' }
MateSmallIntegerGenerator >> generateWithConstraint: aConstraint [

	aConstraint ifNil: [ ^ self generate ].
	
	^ aConstraint universe atRandom
]

{ #category : 'initialization' }
MateSmallIntegerGenerator >> initialize [ 
	
	super initialize.
	generator := UmeGrammarGenerator new grammar: DecimalGrammar new.
]
