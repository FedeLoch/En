Class {
	#name : 'EnBuiltInDeclaration',
	#superclass : 'EnTypeDeclaration',
	#category : 'En-Grammar',
	#package : 'En',
	#tag : 'Grammar'
}

{ #category : 'visiting' }
EnBuiltInDeclaration >> visit: generator from: context [

	^ generator visitBuiltinDeclaration: self from: context 
]
