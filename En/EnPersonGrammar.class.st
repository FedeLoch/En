Class {
	#name : 'EnPersonGrammar',
	#superclass : 'EnOGGrammar',
	#category : 'En-Grammar Tests',
	#package : 'En',
	#tag : 'Grammar Tests'
}

{ #category : 'accessing' }
EnPersonGrammar >> defineGrammar [ 

	^ '
	 	Person -> { age: Age }.
	 	Age -> { value: SmallInteger }.
	'
]

{ #category : 'accessing' }
EnPersonGrammar >> initialize [ 
	
	super initialize.
	
	self addTypeDeclaration: (EnInstDecl new type: Person; instanceVariableDeclarations: {
		EnInstVarDecl new name: 'age'; type: Age 
	}).
	self addTypeDeclaration: (EnInstDecl new type: Age; instanceVariableDeclarations: {
		EnInstVarDecl new name: 'value'; type: SmallInteger 
	}).
]
