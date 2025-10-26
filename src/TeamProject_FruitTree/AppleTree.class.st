"
AppleTree represents a specific type of FruitTree that produces apples.

It extends the base FruitTree class by adding:
- fruitColor : a String describing the color of the apples (e.g., 'Red', 'Green').
- lastFruitedYear : an Integer indicating the most recent year the tree produced fruit

"
Class {
	#name : 'AppleTree',
	#superclass : 'FruitTree',
	#instVars : [
		'fruitColor',
		'lastYearFruited'
	],
	#category : 'TeamProject_FruitTree',
	#package : 'TeamProject_FruitTree'
}

{ #category : 'magicVariables' }
AppleTree class >> getHeightIncrease [
	"Height increased each year"
	^ 0.5.
]

{ #category : 'magicVariables' }
AppleTree class >> getYieldIncrease [
	"Yield increased each year"
	^ 10.
]

{ #category : 'initialization' }
AppleTree class >> initializeWith: aSpeciesName age: anAge height: aHeight yield: aYield bearingAge: bearingAgeValue fruitColor: aColor [

	| tree |
	tree := self basicNew.
	tree speciesName: aSpeciesName.
	tree age: anAge.
	tree height: aHeight.
	tree yield: aYield.
	tree fruitBearingAge: bearingAgeValue.
	tree fruitColor: aColor.
	tree lastYearFruited: false.
	^ tree
]

{ #category : 'accessing' }
AppleTree >> fruitColor [

	^ fruitColor
]

{ #category : 'accessing' }
AppleTree >> fruitColor: anObject [
    "Set the fruit color, ensuring it is a valid non-empty string."

    (anObject isString and: [anObject isNotEmpty]) ifFalse: [
        ^self error: 'Fruit color must be a non-empty string'].

	fruitColor := anObject
]

{ #category : 'methods' }
AppleTree >> getYieldForThisYear [
	self lastYearFruited ifTrue: [ ^ 0. ] ifFalse: [ ^ super getYieldForThisYear. ]
]

{ #category : 'methods' }
AppleTree >> growOneYear [
    super growOneYear.
    self lastYearFruited: self lastYearFruited not.
]

{ #category : 'initialization' }
AppleTree >> initialize [
	super initialize.
	self fruitColor: 'Undefined'.
	self lastYearFruited: false.
]

{ #category : 'accessing' }
AppleTree >> lastYearFruited [

	^ lastYearFruited
]

{ #category : 'accessing' }
AppleTree >> lastYearFruited: anObject [
    "Set whether the tree fruited last year. Must be a Boolean (true or false)."

    (anObject isKindOf: Boolean) ifFalse: [
        ^self error: 'lastYearFruited must be a Boolean (true or false)'].
	lastYearFruited := anObject
]

{ #category : 'printing' }
AppleTree >> printOn: aStream [
	super printOn: aStream.
	aStream
		nextPutAll: ' | Fruit color: ';
		nextPutAll: fruitColor.
]
