Class {
	#name : 'EnPersonGrammarTest',
	#superclass : 'EnHandMadeGrammarTest',
	#category : 'En-Grammar Tests',
	#package : 'En',
	#tag : 'Grammar Tests'
}

{ #category : 'running' }
EnPersonGrammarTest >> newGrammar [

	^ EnPersonGrammar new.
]

{ #category : 'tests' }
EnPersonGrammarTest >> testGrammarCanGenerateAPerson [

	self assert: (grammar gen: Person) class equals: Person.
	self assert: (grammar gen: Person) age class equals: SmallInteger
]

{ #category : 'tests' }
EnPersonGrammarTest >> testGrammarCanGenerateAnAge [

	self assert: (grammar gen: Age) class equals: Age.
	self assert: (grammar gen: Age) value class equals: SmallInteger
]
