Extension { #name : 'Boolean' }

{ #category : '*Mate' }
Boolean class >> acceptType: aType [

	^ self subclasses includes: aType
]
