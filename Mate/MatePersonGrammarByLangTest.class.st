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
MatePersonGrammarByLangTest >> testGrammarAgeDeclarationsMatch [
	
	self testDecl: MateAge expects: (MateInstDecl new type: MateAge; instanceVariableDeclarations: {
		MateInstVarDecl new name: 'value'; type: SmallInteger 
	})
]

{ #category : 'tests' }
MatePersonGrammarByLangTest >> testGrammarPersonDeclarationsMatch [

	self testDecl: MatePerson expects: (MateInstDecl new type: MatePerson; instanceVariableDeclarations: {
		MateInstVarDecl new name: 'age'; type: MateAge 
	})
]
