Extension { #name : 'Object' }

{ #category : '*Mate' }
Object class >> getOne [

	^ self
]

{ #category : '*Mate' }
Object class >> getOneFrom: context [
	"For single types (not MateOptionalType), just return self ignoring context"
	^ self
]

{ #category : '*Mate' }
Object class >> | aClass [ 
	
	^ MateOptionalType options: { self . aClass }
]
