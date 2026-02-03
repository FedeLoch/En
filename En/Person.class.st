Class {
	#name : 'Person',
	#superclass : 'Object',
	#instVars : [
		'age'
	],
	#category : 'En-Testing Models',
	#package : 'En',
	#tag : 'Testing Models'
}

{ #category : 'accessing' }
Person >> age [
	
	^ age value
]

{ #category : 'accessing' }
Person >> age: aNumber [

	age := aNumber 
]

{ #category : 'accessing' }
Person >> model [
	
	"	Person -> { age: Age }.
		Age -> { value: SmallInteger }
	"
]

{ #category : 'accessing' }
Person >> name: aName [

	name := aName 
]
