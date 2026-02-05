Class {
	#name : 'MateColorGenerator',
	#superclass : 'MateBuiltInGenerator',
	#category : 'Mate-Generation',
	#package : 'Mate',
	#tag : 'Generation'
}

{ #category : 'translating' }
MateColorGenerator >> generate [

	^ Color random
	 
]
