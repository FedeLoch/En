Class {
	#name : 'EnInstanceVariableDeclaration',
	#superclass : 'Object',
	#instVars : [
		'name',
		'type'
	],
	#category : 'En-Grammar',
	#package : 'En',
	#tag : 'Grammar'
}

{ #category : 'as yet unclassified' }
EnInstanceVariableDeclaration >> gen [

	1 halt.
]

{ #category : 'accessing' }
EnInstanceVariableDeclaration >> name [

	^ name
]

{ #category : 'accessing' }
EnInstanceVariableDeclaration >> name: instanceVariableName [

	name := instanceVariableName 
]

{ #category : 'accessing' }
EnInstanceVariableDeclaration >> type [

	^ type
]

{ #category : 'accessing' }
EnInstanceVariableDeclaration >> type: instanceVariableType [

	type := instanceVariableType 
]
