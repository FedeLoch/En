Class {
	#name : 'EnPlayerGrammarTest',
	#superclass : 'EnHandMadeGrammarTest',
	#category : 'En-Grammar Tests',
	#package : 'En',
	#tag : 'Grammar Tests'
}

{ #category : 'running' }
EnPlayerGrammarTest >> newGrammar [

		"	Player -> {
			name: String,
			characterClass: Warrior | Rogue | Mage,
			level: { type: SmallInteger, constraints: { between: 0 and: 99 } },
			missingExperienceForNextLevel: { type: SmallInteger, constraints: { greaterThan: 0 } }
		}.
	"
]
