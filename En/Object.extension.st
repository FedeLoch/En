Extension { #name : 'Object' }

{ #category : '*En' }
Object class >> getOne [

	^ self
]

{ #category : '*En' }
Object class >> | aClass [ 
	
	^ EnOptionalType options: { self . aClass }
]
