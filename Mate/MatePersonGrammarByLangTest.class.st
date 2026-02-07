Class {
	#name : 'MatePersonGrammarByLangTest',
	#superclass : 'MateGrammarByLangTest',
	#category : 'Mate-Generation Tests',
	#package : 'Mate',
	#tag : 'Generation Tests'
}

{ #category : 'running' }
MatePersonGrammarByLangTest >> newGrammar [

	^ MatePersonGrammarByLang new
]

{ #category : 'tests' }
MatePersonGrammarByLangTest >> testGrammarCanGenerateAPerson [

	self assert: (grammar gen: Person) class equals: Person.
	self assert: (grammar gen: Person) age class equals: SmallInteger
]

{ #category : 'tests' }
MatePersonGrammarByLangTest >> testGrammarCanGenerateAnAge [

	self assert: (grammar gen: Age) class equals: Age.
	self assert: (grammar gen: Age) value class equals: SmallInteger
]
