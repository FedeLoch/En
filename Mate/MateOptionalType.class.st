Class {
	#name : 'MateOptionalType',
	#superclass : 'Object',
	#instVars : [
		'optionTypes',
		'rewards',
		'visits',
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

{ #category : 'comparing' }
MateOptionalType >> = anObject [

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	
	^ optionTypes = anObject types
]

{ #category : 'visiting' }
MateOptionalType >> acceptType: aType [

	^ optionTypes includes: aType
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

	| selected |
	
	selected := self selectAtype: context.
	self updateVisits: context selecting: selected.
	
	^ selected
]

{ #category : 'comparing' }
MateOptionalType >> hash [

	^ optionTypes hash
]

{ #category : 'rendering' }
MateOptionalType >> heatColorFor: type [

	| ratio visitsForType totalVisits |
	
	totalVisits := self totalVisits.

	totalVisits = 0 ifTrue: [ ^ Color white ].
	visitsForType := self totalVisitsFor: type.
	visitsForType = 0 ifTrue: [ ^ Color white ].

	ratio := visitsForType / totalVisits.

	^ Color r: 1 g: 1 - ratio b: 1 - ratio
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
MateOptionalType >> name [
	
	^ (optionTypes collect: #name) asOrderedCollection joinUsing: ' | '
]

{ #category : 'accessing' }
MateOptionalType >> options: options [ 
	
	optionTypes addAll: options
]

{ #category : 'rendering' }
MateOptionalType >> renderShapes [

	^ (optionTypes collect: [ :type | self renderType: type ]) asOrderedCollection 
]

{ #category : 'rendering' }
MateOptionalType >> renderType: type [

	| label color box composite |
	label := RSLabel new
		         text: type name;
		         color: Color black.
	color := self heatColorFor: type.

	box := RSBox new
		       extent: label extent + (20 @ 10);
		       cornerRadius: 5;
		       color: color;
		       border: (RSBorder new
				        color: Color black;
				        width: 1).

	composite := RSComposite new
		             model: type;
		             shapes: {
				             box.
				             label };
		             yourself.

	composite @ (RSPopup new text: [ :n |
			 String streamContents: [ :s |
					 s
						 nextPutAll: n class name;
						 cr.
					 s
						 nextPutAll: 'Visits: ';
						 print: (self totalVisitsFor: n) ] ]).
	^ composite
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
MateOptionalType >> totalVisits [

	visits values ifEmpty: [ ^ 0 ].

	^ (visits values collect: [ :dict | dict values sum ]) sum
]

{ #category : 'rendering' }
MateOptionalType >> totalVisitsFor: type [

	^ (visits collect: [ :dict | (dict at: type ifPresent: [ :t | t ] ifAbsent: [ 0 ])]) sum
]

{ #category : 'visiting' }
MateOptionalType >> types [

	^ optionTypes
]

{ #category : 'as yet unclassified' }
MateOptionalType >> updateReward: improvement context: context from: decl [
	
	| key optionToReward |

	key := context key.
	optionToReward := (context parentNode edges at: decl name) instance class.
	
	rewards at: key ifAbsentPut: [ Dictionary new ].
	rewards at: key at: optionToReward ifAbsentPut: [ 1 ].
	
	(rewards at: key) at: optionToReward update: [ :reward | (reward + improvement) max: 1 ].
]

{ #category : 'reward' }
MateOptionalType >> updateVisits: context selecting: selected [

	| key |
	
	key := context key.
	visits at: key ifAbsentPut: [ Dictionary new ].
	visits at: key at: selected ifAbsentPut: [ 0 ].
	
	(visits at: key) at: selected update: [ :v | v + 1 ]
]

{ #category : 'accessing' }
MateOptionalType >> visits [

	^ visits
]

{ #category : 'logical operations' }
MateOptionalType >> | aClass [ 

	optionTypes add: aClass 
]
