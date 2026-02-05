Class {
	#name : 'MateBuiltInGenerator',
	#superclass : 'Object',
	#category : 'Mate-Generation',
	#package : 'Mate',
	#tag : 'Generation'
}

{ #category : 'translating' }
MateBuiltInGenerator >> generate [

	self subclassResponsibility 
]

{ #category : 'translating' }
MateBuiltInGenerator >> generateWithConstraint: aConstraint [
	"TODO: Subclasses override it."

	^ self generate
]
