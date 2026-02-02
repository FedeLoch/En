Class {
	#name : 'EnOGDerivationNode',
	#superclass : 'Object',
	#instVars : [
		'declaration',
		'edges',
		'context'
	],
	#category : 'En-Parsing',
	#package : 'En',
	#tag : 'Parsing'
}

{ #category : 'initialization' }
EnOGDerivationNode >> addEdge: anEdge at: key [

	edges at: key put: anEdge
]

{ #category : 'accessing' }
EnOGDerivationNode >> context: aContext [

	context := aContext 
]

{ #category : 'accessing' }
EnOGDerivationNode >> declaration: anEnInstanceDeclaration [ 

	declaration := anEnInstanceDeclaration
]

{ #category : 'initialization' }
EnOGDerivationNode >> initialize [ 
	
	super initialize.
	edges := Dictionary new.
]

{ #category : 'as yet unclassified' }
EnOGDerivationNode >> instantiate [

	self subclassResponsibility 
]

{ #category : 'as yet unclassified' }
EnOGDerivationNode >> recursiveBackPropagate: improvement from: context seen: set [

	1 halt.
]
