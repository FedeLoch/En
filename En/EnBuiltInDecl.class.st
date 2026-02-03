Class {
	#name : 'EnBuiltInDecl',
	#superclass : 'EnTypeDecl',
	#instVars : [
		'generator'
	],
	#category : 'En-Grammar',
	#package : 'En',
	#tag : 'Grammar'
}

{ #category : 'accessing' }
EnBuiltInDecl >> generator [

	^ generator
]

{ #category : 'accessing' }
EnBuiltInDecl >> generator: aGenerator [

	generator := aGenerator 
]

{ #category : 'visiting' }
EnBuiltInDecl >> visiting: aVisitor from: context [

	^ aVisitor visitBuiltinDeclaration: self from: context 
]
