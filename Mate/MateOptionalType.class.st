Class {
	#name : 'MateOptionalType',
	#superclass : 'Object',
	#instVars : [
		'optionTypes',
		'rewards',
		'visits',
		'lastSelected',
		'explorationConstant'
	],
	#category : 'Mate-Custom Types',
	#package : 'Mate',
	#tag : 'Custom Types'
}

{ #category : 'accessing' }
MateOptionalType class >> options: classes [

	^ self new options: classes
]

{ #category : 'as yet unclassified' }
MateOptionalType >> getBestRewardedType: context [

	| bestType bestScore totalVisits contextRewards contextVisits |
	
	bestType := nil.
	bestScore := Float negativeInfinity.
	contextVisits := visits at: context key.
	contextRewards := rewards at: context key.
	
	totalVisits := contextVisits values sum.
	
	optionTypes do: [ :type | | typeVisits typeReward score |
		typeVisits := contextVisits at: type.
		typeReward := contextRewards at: type ifAbsent: [ 1 ].
		
		"UCT = (reward(rule) / visits(rule)) + C * sqrt(log(total_visits) / visits(rule)))"
		score := (typeReward / typeVisits) + (explorationConstant * ((totalVisits ln / typeVisits) sqrt)).
		
		score > bestScore ifTrue: [ bestScore := score. bestType := type ].
	].

	^ bestType ifNil: [ self getOne ]
]

{ #category : 'as yet unclassified' }
MateOptionalType >> getOne [
	"Fallback random selection without context"
	
	^ optionTypes atRandom 
]

{ #category : 'as yet unclassified' }
MateOptionalType >> getOneFrom: context [

	lastSelected := self selectAtype: context.
	self updateVisits: context.
	
	^ lastSelected
]

{ #category : 'initialization' }
MateOptionalType >> initialize [ 

	super initialize.
	optionTypes := Set new.
	rewards := Dictionary new.
	visits := Dictionary new.
	explorationConstant := 2.
]

{ #category : 'accessing' }
MateOptionalType >> options: options [ 
	
	optionTypes addAll: options
]

{ #category : 'accessing' }
MateOptionalType >> rewards [

	^ rewards
]

{ #category : 'as yet unclassified' }
MateOptionalType >> selectAtype: context [
	
	| contextVisits differenceAtLevel |
	
	"Case where the context was not explored before"
	visits at: context key ifAbsent: [ ^ self getOne ].
	
	contextVisits := visits at: context key.
	
	"Case where in the context, there are options unexplored yet"
	differenceAtLevel := (optionTypes difference: contextVisits keys).
	differenceAtLevel ifNotEmpty: [ ^ differenceAtLevel asArray first ].
	
	"Case where there is no reward, so, random"
	rewards at: context key ifAbsent: [ ^ self getOne ].

	"Case where we can choose a type by using previous reward information"
	^ self getBestRewardedType: context
]

{ #category : 'as yet unclassified' }
MateOptionalType >> updateReward: improvement context: context [ 
	
	"TODO: not sure if I should use lastSelected"
	| key |
	
	key := context key.
	rewards at: key ifAbsentPut: [ Dictionary new ].
	rewards at: key at: lastSelected ifAbsentPut: [ 1 ].
	
	(rewards at: key) at: lastSelected update: [ :reward | (reward + improvement) max: 1 ].
]

{ #category : 'reward' }
MateOptionalType >> updateVisits: context [

	| key |
	
	key := context key.
	visits at: key ifAbsentPut: [ Dictionary new ].
	visits at: key at: lastSelected ifAbsentPut: [ 0 ].
	
	(visits at: key) at: lastSelected update: [ :v | v + 1 ]
]

{ #category : 'accessing' }
MateOptionalType >> visits [

	^ visits
]

{ #category : 'logical operations' }
MateOptionalType >> | aClass [ 

	optionTypes add: aClass 
]
