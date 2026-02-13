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
	
	edgeName := child declaration name.
	
	self addEdge: newChild at: edgeName.
	1 halt.
]
