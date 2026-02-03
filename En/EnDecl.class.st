Class {
	#name : 'EnDecl',
	#superclass : 'Object',
	#instVars : [
		'rewards',
		'visits',
		'type'
	],
	#category : 'En-Grammar',
	#package : 'En',
	#tag : 'Grammar'
}

{ #category : 'initialization' }
EnDecl >> initialize [ 

	super initialize.
	rewards := Dictionary new.
	visits := Dictionary new.
]

{ #category : 'accessing' }
EnDecl >> type [

	^ type
]

{ #category : 'accessing' }
EnDecl >> type: aType [

	type := aType 
]

{ #category : 'as yet unclassified' }
EnDecl >> updateReward: improvement context: context [

	rewards at: context ifAbsentPut: [ 1 ].
	
	rewards at: context update: [ :reward | (reward + improvement) max: 1 ]
]

{ #category : 'as yet unclassified' }
EnDecl >> updateVisits: context [

	visits at: context ifAbsentPut: [ 0 ].
	
	visits at: context update: [ :visit | visit + 1 ]
]

{ #category : 'visiting' }
EnDecl >> visit: generator from: context [

	self updateVisits: context.
	^ self visiting: generator from: context
]

{ #category : 'visiting' }
EnDecl >> visiting: generator from: context [

	self subclassResponsibility 
]
