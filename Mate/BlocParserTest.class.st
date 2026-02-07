Class {
	#name : 'BlocParserTest',
	#superclass : 'MateParserTest',
	#category : 'Mate-Parsing Tests',
	#package : 'Mate',
	#tag : 'Parsing Tests'
}

{ #category : 'tests' }
BlocParserTest >> newGrammar [

	^ MateBlocGrammar new
]

{ #category : 'tests' }
BlocParserTest >> testGivenAGeneratedBlChildrenArrayItCanGiveTheGrammarDerivation [

	self doTest: (grammar gen: BlChildrenArray)
]

{ #category : 'tests' }
BlocParserTest >> testGivenAGeneratedBlCustomVisualsItCanGiveTheGrammarDerivation [

	self doTest: (grammar gen: BlCustomVisuals)
]

{ #category : 'tests' }
BlocParserTest >> testGivenAGeneratedBlElementItCanGiveTheGrammarDerivation [

	self doTest: (grammar gen: BlElement)
]

{ #category : 'tests' }
BlocParserTest >> testGivenAGeneratedBlLayoutCommonConstraintsAxisItCanGiveTheGrammarDerivation [

	self doTest: (grammar gen: BlLayoutCommonConstraintsAxis)
]

{ #category : 'tests' }
BlocParserTest >> testGivenAGeneratedBlLayoutCommonConstraintsItCanGiveTheGrammarDerivation [

	self doTest: (grammar gen: BlLayoutCommonConstraints)
]

{ #category : 'tests' }
BlocParserTest >> testGivenAGeneratedBlLayoutExactResizerItCanGiveTheGrammarDerivation [

	self doTest: (grammar gen: BlLayoutExactResizer)
]

{ #category : 'tests' }
BlocParserTest >> testGivenAGeneratedBlPaintBackgroundItCanGiveTheGrammarDerivation [

	self doTest: (grammar gen: BlPaintBackground)
]

{ #category : 'tests' }
BlocParserTest >> testGivenAGeneratedBlTriangleGeometryItCanGiveTheGrammarDerivation [

	self doTest: (grammar gen: BlTriangleGeometry)
]
