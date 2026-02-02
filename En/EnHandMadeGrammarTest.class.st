Class {
	#name : 'EnHandMadeGrammarTest',
	#superclass : 'TestCase',
	#instVars : [
		'grammar'
	],
	#category : 'En-Grammar Tests',
	#package : 'En',
	#tag : 'Grammar Tests'
}

{ #category : 'running' }
EnHandMadeGrammarTest >> newGrammar [

	self subclassResponsibility 
]

{ #category : 'running' }
EnHandMadeGrammarTest >> setUp [
	super setUp.
	grammar := self newGrammar
]
