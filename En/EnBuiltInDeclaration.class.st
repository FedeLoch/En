Class {
	#name : 'EnBuiltInDeclaration',
	#superclass : 'EnTypeDeclaration',
	#instVars : [
		'generator'
	],
	#category : 'En-Grammar',
	#package : 'En',
	#tag : 'Grammar'
}

{ #category : 'accessing' }
EnBuiltInDeclaration >> generator [

	^ generator
]

{ #category : 'accessing' }
EnBuiltInDeclaration >> generator: aGenerator [

	generator := aGenerator 
]

{ #category : 'visiting' }
EnBuiltInDeclaration >> visiting: generator from: context [

	^ generator visitBuiltinDeclaration: self from: context 
]
