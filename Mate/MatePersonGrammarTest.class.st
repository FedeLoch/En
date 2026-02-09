Class {
	#name : 'MatePersonGrammarTest',
	#superclass : 'MateHandMadeGrammarTest',
	#category : 'Mate-Generation Tests',
	#package : 'Mate',
	#tag : 'Generation Tests'
}

{ #category : 'running' }
MatePersonGrammarTest >> newGrammar [

	^ MatePersonGrammar new.
]

{ #category : 'tests' }
MatePersonGrammarTest >> testGrammarCanGenerateAPerson [

	self assert: (grammar gen: MatePerson) class equals: MatePerson.
	self assert: (grammar gen: MatePerson) age class equals: SmallInteger
]

{ #category : 'tests' }
MatePersonGrammarTest >> testGrammarCanGenerateAnAge [

	self assert: (grammar gen: MateAge) class equals: MateAge.
	self assert: (grammar gen: MateAge) value class equals: SmallInteger
]
