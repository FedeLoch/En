Class {
	#name : 'MateOGInstanceNode',
	#superclass : 'MateOGDerivationNode',
	#category : 'Mate-Derivation Tree',
	#package : 'Mate',
	#tag : 'Derivation Tree'
}

{ #category : 'rendering' }
MateOGInstanceNode >> nodeColor [
	
	^ Color fromHexString: '3498DB'
]

{ #category : 'as yet unclassified' }
MateOGInstanceNode >> replaceChild: child by: newChild [

	"Update my edges but also update the instance"
	| edgeName |
	
	"TODO: delegate to its declaration instead of doing it here ?"
	edgeName := child declaration name.
	self addEdge: newChild at: edgeName.
	self instance instVarNamed: edgeName put: newChild instance
]
