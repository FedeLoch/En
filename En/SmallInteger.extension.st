Extension { #name : 'SmallInteger' }

{ #category : '*En' }
SmallInteger class >> gen [
	
	^ (self minVal to: self maxVal) atRandom 
]
