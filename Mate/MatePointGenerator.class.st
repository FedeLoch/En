Class {
	#name : 'MatePointGenerator',
	#superclass : 'MateBuiltInGenerator',
	#category : 'Mate-Generation',
	#package : 'Mate',
	#tag : 'Generation'
}

{ #category : 'translating' }
MatePointGenerator >> generate [

	^ 	100 atRandom @ 100 atRandom
]
