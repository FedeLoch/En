Class {
	#name : 'EnBuiltInDeclaration',
	#superclass : 'EnTypeDeclaration',
	#category : 'En-Grammar',
	#package : 'En',
	#tag : 'Grammar'
}

{ #category : 'as yet unclassified' }
EnBuiltInDeclaration >> gen: aContext [

	^ type gen: aContext
]
