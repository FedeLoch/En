Class {
	#name : 'MatePathProp',
	#superclass : 'Object',
	#instVars : [
		'prop'
	],
	#category : 'Mate-Grammar',
	#package : 'Mate',
	#tag : 'Grammar'
}

{ #category : 'instance creation' }
MatePathProp class >> from: propName [

	^ self new prop: propName
]

{ #category : 'accessing' }
MatePathProp >> prop: propName [

	prop := propName
]
