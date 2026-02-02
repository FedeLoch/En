Class {
	#name : 'EnOGBuiltInNode',
	#superclass : 'EnOGDerivationNode',
	#category : 'En-Parsing',
	#package : 'En',
	#tag : 'Parsing'
}

{ #category : 'as yet unclassified' }
EnOGBuiltInNode >> instantiate [
	
	"TODO: consider the context | constraints "
	^ declaration type gen
]
