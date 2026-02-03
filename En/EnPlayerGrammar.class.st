Class {
	#name : 'EnPlayerGrammar',
	#superclass : 'EnOGGrammar',
	#category : 'En-Grammar Tests',
	#package : 'En',
	#tag : 'Grammar Tests'
}

{ #category : 'accessing' }
EnPlayerGrammar >> defineGrammar [ 

	^ '
		Player -> {
			name: String,
			characterClass: Warrior | Rogue | Mage,
			level: { type: SmallInteger, between: 0 and: 99 },
			missingExperienceForNextLevel: { type: SmallInteger, greaterThan: 0 }
		}.
	'
]

{ #category : 'accessing' }
EnPlayerGrammar >> initialize [ 

	super initialize.
	
	self addTypeDeclaration: (EnInstDecl new type: Player; instanceVariableDeclarations: {
		EnInstVarDecl new name: 'name'; type: String.
		EnInstVarDecl new name: 'characterClass'; type: (Warrior | Rogue | Mage).
		EnInstVarDecl new name: 'level'; type: SmallInteger; constraint: (EnConstraint between: 0 and: 99).
		EnInstVarDecl new name: 'missingExperienceForNextLevel'; type: SmallInteger; constraint: (EnConstraint greaterThan: 0).
	}).
]
