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
		'lastFruitedYear'
	],
	#category : 'TeamProject_FruitTree',
	#package : 'TeamProject_FruitTree'
}

{ #category : 'initialization' }
AppleTree class >> initializeWith: aSpeciesName age: anAge height: aHeight yield: aYield bearingAge: bearingAgeValue fruitColor: aColor [

	| tree |
	tree := self new.
	tree speciesName: aSpeciesName.
	tree age: anAge.
	tree height: aHeight.
	tree yield: aYield.
	tree fruitBearingAge: bearingAgeValue.
	tree fruitColor: aColor.
	tree lastFruitedYear: 0.
	^ tree
]

{ #category : 'accessing' }
AppleTree >> fruitColor [

	^ fruitColor
]

{ #category : 'accessing' }
AppleTree >> fruitColor: anObject [

	fruitColor := anObject
]

{ #category : 'methods' }
AppleTree >> growOneYear [
	"Simulate the growth of the apple tree over one year.
	
	Increases:
	- age by 1 year
	- height by 0.3 meters

	If the tree is old enough to bear fruit and its age is even,
	it produces additional yield (+5) and updates lastFruitedYear"

    age := age + 1.
    height := height + 0.3.
    (self age >= self fruitBearingAge and: [(self age \\ 2) == 0]) ifTrue: [
        yield := yield + 5.
        lastFruitedYear := self age.
    ].

]

{ #category : 'initialization' }
AppleTree >> initialize [
	super initialize.
	self fruitColor: 'Undefined'.
	self lastFruitedYear: 0.
]

{ #category : 'accessing' }
AppleTree >> lastFruitedYear [

	^ lastFruitedYear
]

{ #category : 'accessing' }
AppleTree >> lastFruitedYear: anObject [

	lastFruitedYear := anObject
]

{ #category : 'printing' }
AppleTree >> printOn: aStream [
	super printOn: aStream.
	aStream
		nextPutAll: ' | Fruit color: ';
		nextPutAll: fruitColor.
]
