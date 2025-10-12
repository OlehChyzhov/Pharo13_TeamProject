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

{ #category : 'initialization' }
FruitTree class >> initializeWith: aSpeciesName age: anAge height: aHeight yield: aYield bearingAge: bearingAgeValue [
	"Create and return a new FruitTree initialized with the given values."
	| tree |
	tree := self new.
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
	^ self yield > anotherTree  yield
]

{ #category : 'accessing' }
FruitTree >> age [

	^ age
]

{ #category : 'accessing' }
FruitTree >> age: anAge [

	age := anAge
]

{ #category : 'accessing' }
FruitTree >> fruitBearingAge [

	^ fruitBearingAge
]

{ #category : 'accessing' }
FruitTree >> fruitBearingAge: anAge [

	fruitBearingAge := anAge
]

{ #category : 'methods' }
FruitTree >> growOneYear [
	"Tree grows one year"
	age := age + 1.
	height := height + 0.3.
	(age >= fruitBearingAge) ifTrue: [ yield := yield + 5 ]. "increase yield after bearing age"
]

{ #category : 'methods' }
FruitTree >> growYears: aNumber [
	"Grows for a given number of years"
	1 to: aNumber do: [ :i | self growOneYear ].
]

{ #category : 'accessing' }
FruitTree >> height [

	^ height
]

{ #category : 'accessing' }
FruitTree >> height: aHeight [

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

	speciesName := aName
]

{ #category : 'accessing' }
FruitTree >> yield [

	^ yield
]

{ #category : 'accessing' }
FruitTree >> yield: anYield [

	yield := anYield
]
