Class {
	#name : 'EnOptionalType',
	#superclass : 'Object',
	#instVars : [
		'optionTypes'
	],
	#category : 'En-Grammar',
	#package : 'En',
	#tag : 'Grammar'
}

{ #category : 'accessing' }
EnOptionalType class >> options: classes [

	^ self new options: classes
]

{ #category : 'as yet unclassified' }
EnOptionalType >> getOne [

	"TODO: use rewards here"
	
	^ optionTypes atRandom 
]

{ #category : 'initialization' }
EnOptionalType >> initialize [ 

	super initialize.
	optionTypes := Set new.
]

{ #category : 'accessing' }
EnOptionalType >> options: options [ 
	
	optionTypes addAll: options
]

{ #category : 'logical operations' }
EnOptionalType >> | aClass [ 

	optionTypes add: aClass 
]
