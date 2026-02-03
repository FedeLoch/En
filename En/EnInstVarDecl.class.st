Class {
	#name : 'EnInstVarDecl',
	#superclass : 'EnDecl',
	#instVars : [
		'name',
		'constraint'
	],
	#category : 'En-Grammar',
	#package : 'En',
	#tag : 'Grammar'
}

{ #category : 'as yet unclassified' }
EnInstVarDecl >> chooseOneType [

	^ type getOne
]

{ #category : 'as yet unclassified' }
EnInstVarDecl >> chooseOneTypeFrom: context [

	^ type getOneFrom: context
]

{ #category : 'accessing' }
EnInstVarDecl >> constraint [

	^ constraint
]

{ #category : 'accessing' }
EnInstVarDecl >> constraint: aConstraint [

	constraint := aConstraint 
]

{ #category : 'accessing' }
EnInstVarDecl >> name [

	^ name
]

{ #category : 'accessing' }
EnInstVarDecl >> name: instanceVariableName [

	name := instanceVariableName 
]
