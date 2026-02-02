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

{ #category : 'accessing' }
EnInstanceDeclaration >> instanceVariableDeclarations: decls [ 

	instanceVariableDeclarations := decls
]

{ #category : 'visiting' }
EnInstanceDeclaration >> visit: generator from: context [

	^ generator visitInstanceDeclaration: self from: context 
]
