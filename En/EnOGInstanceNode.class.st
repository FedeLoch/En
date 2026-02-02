Class {
	#name : 'EnOGInstanceNode',
	#superclass : 'EnOGDerivationNode',
	#category : 'En-Parsing',
	#package : 'En',
	#tag : 'Parsing'
}

{ #category : 'as yet unclassified' }
EnOGInstanceNode >> getInstance [

	^ edges keys inject: declaration type new into: [ :inst :edgeName |
		"TODO: Consider the 'context | constraints'"
		inst instVarNamed: edgeName put: (edges at: edgeName) instantiate.
		inst
	]
]
