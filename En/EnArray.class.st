Class {
	#name : 'EnArray',
	#superclass : 'Object',
	#instVars : [
		'itemType'
	],
	#category : 'En-Custom Types',
	#package : 'En',
	#tag : 'Custom Types'
}

{ #category : 'instance creation' }
EnArray class >> itemType: anItemType [

	itemType := anItemType
]

{ #category : 'instance creation' }
EnArray class >> of: itemType [

	^ self new itemType: itemType
]

{ #category : 'accessing' }
EnArray >> itemType: anItemType [

	itemType := anItemType
]
