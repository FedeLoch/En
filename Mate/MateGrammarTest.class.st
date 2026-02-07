Class {
	#name : 'MateGrammarTest',
	#superclass : 'TestCase',
	#instVars : [
		'grammar'
	],
	#category : 'Mate-Generation Tests',
	#package : 'Mate',
	#tag : 'Generation Tests'
}

{ #category : 'running' }
MateGrammarTest >> newGrammar [

	self subclassResponsibility 
]

{ #category : 'running' }
MateGrammarTest >> setUp [
	super setUp.
	grammar := self newGrammar
]
