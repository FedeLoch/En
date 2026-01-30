Class {
	#name : 'EnInstanceDeclaration',
	#superclass : 'EnTypeDeclaration',
	#instVars : [
		'instanceVariableDeclarations'
	],
	#category : 'En-Grammar',
	#package : 'En',
	#tag : 'Grammar'
}

{ #category : 'as yet unclassified' }
EnInstanceDeclaration >> gen [
	
	^ instanceVariableDeclarations inject: type new into: [ :inst :instDecl |
		"TODO: consider constraints later"
		inst instVarNamed: instDecl name put: (grammar gen: instDecl type).
		inst
	]  
]

{ #category : 'accessing' }
EnInstanceDeclaration >> instanceVariableDeclarations: decls [ 

	instanceVariableDeclarations := decls
]
