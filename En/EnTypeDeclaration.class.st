Class {
	#name : 'EnTypeDeclaration',
	#superclass : 'Object',
	#instVars : [
		'type',
		'grammar',
		'rewards'
	],
	#category : 'En-Grammar',
	#package : 'En',
	#tag : 'Grammar'
}

{ #category : 'as yet unclassified' }
EnTypeDeclaration >> gen [

	^ type gen
]

{ #category : 'accessing' }
EnTypeDeclaration >> grammar: aGrammar [

	grammar := aGrammar 
]

{ #category : 'initialization' }
EnTypeDeclaration >> initialize [ 

	super initialize.
	rewards := Dictionary new.
]

{ #category : 'accessing' }
EnTypeDeclaration >> type [

	^ type
]

{ #category : 'accessing' }
EnTypeDeclaration >> type: aType [

	type := aType 
]
