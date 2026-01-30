Class {
	#name : 'EnOGGrammar',
	#superclass : 'Object',
	#instVars : [
		'typeDeclarations',
		'builtInTypeDeclarations',
		'builtInTypes'
	],
	#category : 'En-Grammar',
	#package : 'En',
	#tag : 'Grammar'
}

{ #category : 'accessing' }
EnOGGrammar >> addTypeDeclaration: decl [

	decl grammar: self.
	typeDeclarations at: decl type put: decl
]

{ #category : 'as yet unclassified' }
EnOGGrammar >> backpropagate: derivationObject from: context [
]

{ #category : 'accessing' }
EnOGGrammar >> builtInTypeDeclarations [

	^ builtInTypes inject: Dictionary new into: [ :dict :type |
		dict at: type put: (EnBuiltInDeclaration new type: type).
		dict
	]
]

{ #category : 'as yet unclassified' }
EnOGGrammar >> gen: type [
	
	^ (typeDeclarations at: type) gen
]

{ #category : 'as yet unclassified' }
EnOGGrammar >> gen: derivationObject from: context [

	1 halt.
]

{ #category : 'accessing' }
EnOGGrammar >> initialize [

	super initialize.
	builtInTypes := { SmallInteger . Float . Boolean . String }.
	typeDeclarations := self builtInTypeDeclarations.
]

{ #category : 'accessing' }
EnOGGrammar >> typeDeclarations: declarations [

	declarations do: [ :decl | self addTypeDeclaration: decl ].
]
