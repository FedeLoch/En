Class {
	#name : 'MateStringGrammar',
	#superclass : 'GncGrammar',
	#instVars : [
		'ntString',
		'ntCharacter'
	],
	#category : 'Mate-Generation',
	#package : 'Mate',
	#tag : 'Generation'
}

{ #category : 'initialization' }
MateStringGrammar >> defineGrammar [

	ntString --> ntCharacter, ntString | ntCharacter.
	
	ntCharacter --> ($a - $z).
	
	^ ntString
]
