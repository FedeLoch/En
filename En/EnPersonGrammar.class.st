Class {
	#name : 'EnPersonGrammar',
	#superclass : 'EnOGGrammar',
	#category : 'En-Grammar',
	#package : 'En',
	#tag : 'Grammar'
}

{ #category : 'accessing' }
EnPersonGrammar >> initialize [ 
	
	super initialize.
	
	self addTypeDeclaration: (EnInstanceDeclaration new type: Person; instanceVariableDeclarations: {
		EnInstanceVariableDeclaration new name: 'age'; type: Age 
	}).
	self addTypeDeclaration: (EnInstanceDeclaration new type: Age; instanceVariableDeclarations: {
		EnInstanceVariableDeclaration new name: 'value'; type: SmallInteger 
	}).
]
