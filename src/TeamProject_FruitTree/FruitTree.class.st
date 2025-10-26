"
FruitTree is the abstract base class for all types of fruit-bearing trees in the orchard system.
It defines common properties that every fruit tree shares, including:

- speciesName : a String representing the type or name of the tree.
- age : an Integer representing the current age of the tree in years.
- height : a Number representing the tree's height in meters.
- yield : an Integer representing the amount of fruit the tree produces per season.
- fruitBearingAge : an Integer indicating the age at which the tree starts producing fruit.

Subclasses like AppleTree, ApricotTree inherit from FruitTree
and may add specific attributes.

"
Class {
	#name : 'FruitTree',
	#superclass : 'Object',
	#instVars : [
		'speciesName',
		'age',
		'height',
		'yield',
		'fruitBearingAge'
	],
	#category : 'TeamProject_FruitTree',
	#package : 'TeamProject_FruitTree'
}

{ #category : 'magicVariables' }
FruitTree class >> getHeightIncrease [
	"Height increased each year"
	^ 0.3.
]

{ #category : 'magicVariables' }
FruitTree class >> getYieldIncrease [
	"Yield increased each year"
	^ 5.
]

{ #category : 'initialization' }
FruitTree class >> initializeWith: aSpeciesName age: anAge height: aHeight yield: aYield bearingAge: bearingAgeValue [
	"Create and return a new FruitTree initialized with the given values."
	| tree |
	tree := self basicNew.
	tree speciesName: aSpeciesName.
	tree age: anAge.
	tree height: aHeight.
	tree yield: aYield.
	tree fruitBearingAge: bearingAgeValue.
	
	^ tree.
]

{ #category : 'methods' }
FruitTree >> < anotherTree [
	"Comparing happens by tree yield"
	^ self yield < anotherTree  yield
]

{ #category : 'methods' }
FruitTree >> = anotherTree [
	"Comparing happens by tree yield"
	^ self yield = anotherTree  yield
]

{ #category : 'methods' }
FruitTree >> > anotherTree [
	"Comparing happens by tree yield"
	^ anotherTree < self
]

{ #category : 'accessing' }
FruitTree >> age [

	^ age
]

{ #category : 'accessing' }
FruitTree >> age: anAge [
	(anAge isNumber and: [anAge >= 0]) ifFalse: [
        ^self error: 'Age must be a non-negative number'].

	age := anAge
]

{ #category : 'accessing' }
FruitTree >> fruitBearingAge [

	^ fruitBearingAge
]

{ #category : 'accessing' }
FruitTree >> fruitBearingAge: anAge [
	(anAge isNumber and: [anAge >= 1]) ifFalse: [
        ^self error: 'Age cannot be less than 1'].

	fruitBearingAge := anAge
]

{ #category : 'methods' }
FruitTree >> getYieldForThisYear [
    "Return the yield for this year if the tree is old enough to bear fruit, otherwise 0."

    ^ (self age > self fruitBearingAge)
        ifTrue: [ self yield ]
        ifFalse: [ 0 ]

]

{ #category : 'methods' }
FruitTree >> growOneYear [
	"Tree grows one year"
	age := age + 1.
	height := height + self class getHeightIncrease.
	yield := yield + self class getYieldIncrease.
]

{ #category : 'methods' }
FruitTree >> growYears: aNumber [
	"Grows for a given number of years"
	
	(aNumber isInteger and: [aNumber > 0]) ifFalse: [
		^self error: 'Number of years must be a positive integer'].
	
	1 to: aNumber do: [ :i | self growOneYear ].
]

{ #category : 'accessing' }
FruitTree >> height [

	^ height
]

{ #category : 'accessing' }
FruitTree >> height: aHeight [
	(aHeight isNumber and: [aHeight >= 0]) ifFalse: [
        ^self error: 'Height must be a non-negative number'].

	height := aHeight
]

{ #category : 'initialization' }
FruitTree >> initialize [
	"Initialize default values for a new FruitTree instance."
	super initialize.
	speciesName := 'Unknown'.
	age := 0.
	height := 0.
	yield := 0.
	fruitBearingAge := 3.  "Tree starts producing fruits after this age"
]

{ #category : 'printing' }
FruitTree >> printOn: aStream [
	aStream 
	nextPutAll: speciesName;
	nextPutAll: ' | Age: '; print: age;
	nextPutAll: ' | Height: '; print: height;
	nextPutAll: ' | Yield: '; print: yield.
]

{ #category : 'accessing' }
FruitTree >> speciesName [

	^ speciesName
]

{ #category : 'accessing' }
FruitTree >> speciesName: aName [
    (aName isString and: [aName isNotEmpty]) ifFalse: [
        ^self error: 'Species name must be a non-empty string'].

	speciesName := aName
]

{ #category : 'accessing' }
FruitTree >> yield [

	^ yield
]

{ #category : 'accessing' }
FruitTree >> yield: anYield [
    (anYield isNumber and: [anYield >= 0]) ifFalse: [
        ^self error: 'Yield must be a non-negative number'].

	yield := anYield
]
