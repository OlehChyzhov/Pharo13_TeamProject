"
Apricot Tree
Subclass of the FruitTree
"
Class {
	#name : 'ApricotTree',
	#superclass : 'FruitTree',
	#instVars : [
		'hadFrost'
	],
	#category : 'TeamProject_FruitTree',
	#package : 'TeamProject_FruitTree'
}

{ #category : 'magicVariables' }
ApricotTree class >> getHeightIncrease [
	"Height increased each year"
	^ 0.2.
]

{ #category : 'magicVariables' }
ApricotTree class >> getYieldIncrease [
	"Yield increased each year"
	^ 20.
]

{ #category : 'initialization' }
ApricotTree class >> initializeWith: aSpeciesName age: anAge height: aHeight yield: aYield bearingAge: bearingAgeValue hadFrost: hadFrostValue [

	| tree |
	tree := self basicNew.
	tree speciesName: aSpeciesName.
	tree age: anAge.
	tree height: aHeight.
	tree yield: aYield.
	tree fruitBearingAge: bearingAgeValue.
	tree hadFrost: hadFrostValue.
	^ tree
]

{ #category : 'methods' }
ApricotTree >> getYieldForThisYear [
	self hadFrost ifTrue: [ ^ super getYieldForThisYear * 0.2. ] ifFalse: [ ^ super getYieldForThisYear. ]
]

{ #category : 'accessing' }
ApricotTree >> hadFrost [

	^ hadFrost
]

{ #category : 'accessing' }
ApricotTree >> hadFrost: anObject [
    "Set whether the tree experienced frost. Must be a Boolean (true or false)."

    (anObject isKindOf: Boolean) ifFalse: [
        ^self error: 'hadFrost must be a Boolean (true or false)'].

    hadFrost := anObject.

]

{ #category : 'initialization' }
ApricotTree >> initialize [
	super initialize.
	self hadFrost: false.
]

{ #category : 'printing' }
ApricotTree >> printOn: aStream [
	super printOn: aStream.
	aStream
		nextPutAll: ' | Had Frost: ';
		print: self hadFrost.
]
