Class {
	#name : 'EnInstDecl',
	#superclass : 'EnTypeDecl',
	#instVars : [
		'instanceVariableDeclarations'
	],
	#category : 'En-Grammar',
	#package : 'En',
	#tag : 'Grammar'
}

{ #category : 'initialization' }
EnInstDecl >> initialize [ 
	
	super initialize.
	instanceVariableDeclarations := OrderedCollection new.
]

{ #category : 'accessing' }
EnInstDecl >> instanceVariableDeclarations [

	^ instanceVariableDeclarations
]

{ #category : 'accessing' }
EnInstDecl >> instanceVariableDeclarations: decls [ 

	instanceVariableDeclarations := decls
]

{ #category : 'visiting' }
EnInstDecl >> visiting: aVisitor from: context [

	^ aVisitor visitInstanceDeclaration: self from: context 
]
