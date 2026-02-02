Class {
	#name : 'EnPlayerGrammarTest',
	#superclass : 'EnHandMadeGrammarTest',
	#category : 'En-Grammar Tests',
	#package : 'En',
	#tag : 'Grammar Tests'
}

{ #category : 'running' }
EnPlayerGrammarTest >> newGrammar [

	^ EnPlayerGrammar new.
]

{ #category : 'tests' }
EnPlayerGrammarTest >> testGrammarCanGenerateAPerson [

	"Generalize test with a doTest grammar -> obj -> derivation -> obj"
	| player |
	
	player := grammar gen: Player.

	self assert: (player class) equals: Player.
	self assert: (player characterClass superClass class) equals: CharacterClass
]
