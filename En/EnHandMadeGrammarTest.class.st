Class {
	#name : 'EnHandMadeGrammarTest',
	#superclass : 'TestCase',
	#instVars : [
		'grammar'
	],
	#category : 'En-Grammar',
	#package : 'En',
	#tag : 'Grammar'
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
