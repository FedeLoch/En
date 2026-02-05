Class {
	#name : 'MateStringGenerator',
	#superclass : 'MateBuiltInGenerator',
	#instVars : [
		'generator'
	],
	#category : 'Mate-Generation',
	#package : 'Mate',
	#tag : 'Generation'
}

{ #category : 'initialization' }
MateStringGenerator >> generate [

	^ generator gen: nil
]

{ #category : 'initialization' }
MateStringGenerator >> initialize [ 
	
	super initialize.
	generator := UmeGrammarGenerator new grammar: StringGrammar new.
]
