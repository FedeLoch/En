Class {
	#name : 'EnHandMadePersonGrammarTest',
	#superclass : 'EnHandMadeGrammarTest',
	#category : 'En-Grammar',
	#package : 'En',
	#tag : 'Grammar'
}

{ #category : 'tests' }
EnHandMadePersonGrammarTest >> newGrammar [

	| objGrammar |
	
	objGrammar := EnGrammar new.
	
	objGrammar addTypeDeclaration: (EnInstanceDeclaration new type: Person; instanceVariableDeclarations: {
		EnInstanceVariableDeclaration new name: 'age'; type: Age 
	}).
	objGrammar addTypeDeclaration: (EnInstanceDeclaration new type: Age; instanceVariableDeclarations: {
		EnInstanceVariableDeclaration new name: 'value'; type: SmallInteger 
	}).
	
	^ objGrammar 
	
]

{ #category : 'tests' }
EnHandMadePersonGrammarTest >> testBuildAPersonGrammarByHand [

	self assert: (grammar class) equals: EnGrammar 
	
]

{ #category : 'tests' }
EnHandMadePersonGrammarTest >> testGrammarCanGenerateAPerson [

	self assert: (grammar gen: Person) class equals: Person.
	self assert: (grammar gen: Person) age class equals: SmallInteger
]

{ #category : 'tests' }
EnHandMadePersonGrammarTest >> testGrammarCanGenerateAnAge [

	self assert: (grammar gen: Age) class equals: Age.
	self assert: (grammar gen: Age) value class equals: SmallInteger
]
