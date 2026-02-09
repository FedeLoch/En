Class {
	#name : 'MatePerson',
	#superclass : 'Object',
	#instVars : [
		'age'
	],
	#category : 'Mate-Testing Models',
	#package : 'Mate',
	#tag : 'Testing Models'
}

{ #category : 'accessing' }
MatePerson >> age [
	
	^ age value
]

{ #category : 'accessing' }
MatePerson >> age: aNumber [

	age := aNumber 
]

{ #category : 'accessing' }
MatePerson >> model [
	
	"	Person -> { age: Age }.
		Age -> { value: SmallInteger }
	"
]

{ #category : 'accessing' }
MatePerson >> name: aName [

	name := aName 
]
