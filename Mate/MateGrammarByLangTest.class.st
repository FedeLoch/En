Class {
	#name : 'MateGrammarByLangTest',
	#superclass : 'MateGrammarTest',
	#category : 'Mate-Generation Tests',
	#package : 'Mate',
	#tag : 'Generation Tests'
}

{ #category : 'tests' }
MateGrammarByLangTest >> testDecl: type expects: expectedDecl [

	| decl |
	
	decl := grammar typeDeclarations at: type.
	decl grammar: nil.
	expectedDecl grammar: nil.

	self assert: (STON toString: decl) equals: (STON toString: expectedDecl)
]
