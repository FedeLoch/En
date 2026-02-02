Class {
	#name : 'EnOGBuiltInNode',
	#superclass : 'EnOGDerivationNode',
	#category : 'En-Parsing',
	#package : 'En',
	#tag : 'Parsing'
}

{ #category : 'as yet unclassified' }
EnOGBuiltInNode >> getInstance [
	
	"TODO: consider the context | constraints "
	^ declaration generator generate
]
