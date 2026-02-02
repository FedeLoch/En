Class {
	#name : 'EnGenerator',
	#superclass : 'Object',
	#instVars : [
		'grammar'
	],
	#category : 'En-Generator',
	#package : 'En',
	#tag : 'Generator'
}

{ #category : 'accessing' }
EnGenerator >> gen: type [

	^ (self gen: (grammar typeDeclarations at: type) from: EnContext new) instantiate
]

{ #category : 'accessing' }
EnGenerator >> gen: declarationObject from: context [

	^ declarationObject gen: context
]

{ #category : 'accessing' }
EnGenerator >> grammar [

	^ grammar	
]

{ #category : 'accessing' }
EnGenerator >> grammar: aGrammar [

	grammar := aGrammar
]
