Class {
	#name : 'EnClassDecl',
	#superclass : 'EnTypeDecl',
	#category : 'En-Grammar',
	#package : 'En',
	#tag : 'Grammar'
}

{ #category : 'visiting' }
EnClassDecl >> visiting: aVisitor from: context [

	^ aVisitor visitClassDeclaration: self from: context 
]
