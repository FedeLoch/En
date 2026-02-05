Class {
	#name : 'MateHandMadeGrammarTest',
	#superclass : 'TestCase',
	#instVars : [
		'grammar'
	],
	#category : 'Mate-Generation Tests',
	#package : 'Mate',
	#tag : 'Generation Tests'
}

{ #category : 'running' }
MateHandMadeGrammarTest >> newGrammar [

	self subclassResponsibility 
]

{ #category : 'running' }
MateHandMadeGrammarTest >> setUp [
	super setUp.
	grammar := self newGrammar
]
