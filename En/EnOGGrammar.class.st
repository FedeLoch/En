Class {
	#name : 'EnOGGrammar',
	#superclass : 'Object',
	#instVars : [
		'typeDeclarations',
		'builtInTypeDeclarations',
		'builtInTypes',
		'generator',
		'parser'
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
EnOGGrammar >> backpropagate: node improvement: improvement from: context [

	node recursiveBackPropagate: improvement from: context seen: Set new
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

	^ generator gen: type
]

{ #category : 'as yet unclassified' }
EnOGGrammar >> gen: declarationObject from: context [

	^ generator gen: declarationObject from: context
]

{ #category : 'accessing' }
EnOGGrammar >> initialize [

	super initialize.
	builtInTypes := { SmallInteger . Float . Boolean . String }.
	typeDeclarations := self builtInTypeDeclarations.
	generator := EnGenerator new grammar: self.
	parser := EnParser new grammar: self.
]

{ #category : 'accessing' }
EnOGGrammar >> typeDeclarations [

	^ typeDeclarations
]

{ #category : 'accessing' }
EnOGGrammar >> typeDeclarations: declarations [

	declarations do: [ :decl | self addTypeDeclaration: decl ]
]
