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

{ #category : 'initialization' }
ApricotTree class >> initializeWith: aSpeciesName age: anAge height: aHeight yield: aYield bearingAge: bearingAgeValue hadFrost: hadFrostValue [

	| tree |
	tree := self new.
	tree speciesName: aSpeciesName.
	tree age: anAge.
	tree height: aHeight.
	tree yield: aYield.
	tree fruitBearingAge: bearingAgeValue.
	tree hadFrost: hadFrostValue.
	^ tree
]

{ #category : 'methods' }
ApricotTree >> growOneYear [
	"Simulate one year of growth for the apricot tree.

	Increases age by 1 and height by 0.3 meters.
	If the tree is old enough to bear fruit:
	- reduces yield by 80% if frost occurred,
	- otherwise increases yield by 5."
    
    age := age + 1.
    height := height + 0.3.

    (age >= fruitBearingAge) ifTrue: [
        (hadFrost) 
            ifTrue: [ 
                "Reduce yield by 80%"
                yield := yield * 0.2 
            ]
            ifFalse: [
                yield := yield + 5
            ].
    ].
]

{ #category : 'accessing' }
ApricotTree >> hadFrost [

	^ hadFrost
]

{ #category : 'accessing' }
ApricotTree >> hadFrost: anObject [

	hadFrost := anObject
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
