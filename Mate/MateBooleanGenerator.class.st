Class {
	#name : 'MateBooleanGenerator',
	#superclass : 'MateBuiltInGenerator',
	#category : 'Mate-Generation',
	#package : 'Mate',
	#tag : 'Generation'
}

{ #category : 'translating' }
MateBooleanGenerator >> generate [

	^ { true . false } atRandom
]
