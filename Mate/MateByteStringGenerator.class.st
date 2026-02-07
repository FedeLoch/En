Class {
	#name : 'MateByteStringGenerator',
	#superclass : 'MateBuiltInGenerator',
	#instVars : [
		'generator'
	],
	#category : 'Mate-Generation',
	#package : 'Mate',
	#tag : 'Generation'
}

{ #category : 'initialization' }
MateByteStringGenerator >> generate [

	^ generator gen: nil
]

{ #category : 'initialization' }
MateByteStringGenerator >> initialize [ 
	
	super initialize.
	generator := UmeGrammarGenerator new grammar: StringGrammar new.
]
