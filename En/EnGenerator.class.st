Class {
	#name : 'EnGenerator',
	#superclass : 'Object',
	#instVars : [
		'grammar'
	],
	#category : 'En-Parsing',
	#package : 'En',
	#tag : 'Parsing'
}

{ #category : 'accessing' }
EnGenerator >> gen: type [

	^ (self gen: (grammar typeDeclarations at: type) from: EnContext new) instantiate
]

{ #category : 'accessing' }
EnGenerator >> gen: declarationObject from: context [

	^ declarationObject visit: self from: context

]

{ #category : 'accessing' }
EnGenerator >> grammar [

	^ grammar	
]

{ #category : 'accessing' }
EnGenerator >> grammar: aGrammar [

	grammar := aGrammar
]

{ #category : 'visiting' }
EnGenerator >> visitBuiltinDeclaration: decl from: context [
	
	^ EnOGBuiltInNode new declaration: decl; context: context

]

{ #category : 'visiting' }
EnGenerator >> visitClassDeclaration: decl from: context [ 

	1 halt.
]

{ #category : 'visiting' }
EnGenerator >> visitInstanceDeclaration: decl from: context [ 

	^ decl instanceVariableDeclarations inject: (EnOGInstanceNode new declaration: decl; context: context) into: [ :node :instVarDecl |
		node addEdge: (self visitInstanceVariableDeclaration: instVarDecl from: context) at: instVarDecl name.
		node.
	]
]

{ #category : 'visiting' }
EnGenerator >> visitInstanceVariableDeclaration: instVarDecl from: context [

	^ (grammar typeDeclarations at: (instVarDecl type)) visit: self from: context

"	
	instanceVariableDeclarations inject: type new into: [ :inst :instDecl |
		""TODO: consider constraints later""
		inst instVarNamed: instDecl name put: (grammar gen: instDecl type).
		inst
	]  "
]
