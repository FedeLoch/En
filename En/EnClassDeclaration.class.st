Class {
	#name : 'EnClassDeclaration',
	#superclass : 'EnTypeDeclaration',
	#category : 'En-Grammar',
	#package : 'En',
	#tag : 'Grammar'
}

{ #category : 'visiting' }
EnClassDeclaration >> visit: generator from: context [

	^ generator visitClassDeclaration: self from: context 
]
