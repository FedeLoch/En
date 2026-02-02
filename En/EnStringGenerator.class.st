Class {
	#name : 'EnStringGenerator',
	#superclass : 'EnBuiltInGenerator',
	#instVars : [
		'generator'
	],
	#category : 'En-BuiltIn Generators',
	#package : 'En',
	#tag : 'BuiltIn Generators'
}

{ #category : 'initialization' }
EnStringGenerator >> generate [

	^ generator gen: nil
]

{ #category : 'initialization' }
EnStringGenerator >> initialize [ 
	
	super initialize.
	generator := PBTGrammarGenerator new grammar: StringGrammar new.
]
