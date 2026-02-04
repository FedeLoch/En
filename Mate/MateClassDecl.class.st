Class {
	#name : 'MateClassDecl',
	#superclass : 'MateTypeDecl',
	#category : 'Mate-Grammar',
	#package : 'Mate',
	#tag : 'Grammar'
}

{ #category : 'visiting' }
MateClassDecl >> visiting: aVisitor from: context constraint: aConstraint [

	^ aVisitor visitClassDeclaration: self from: context 
]
