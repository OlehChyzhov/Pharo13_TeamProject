Class {
	#name : 'AppleTreeTests',
	#superclass : 'TestCase',
	#category : 'TeamProject_FruitTree',
	#package : 'TeamProject_FruitTree'
}

{ #category : 'tests' }
AppleTreeTests >> testGrowOneYear [
    | tree |
    tree := AppleTree initializeWith: 'Tree' age: 1 height: 2 yield: 0 bearingAge: 2 fruitColor: 'Red'.

    "Year 1 → 2 (first growth)"
    tree growOneYear.

    self assert: tree age equals: 2.
    self assert: tree yield equals: 5.  "Fruited on even year"
    self assert: tree lastFruitedYear equals: 2.

    "Year 2 → 3 (second growth)"
    tree growOneYear.

    self assert: tree age equals: 3.
    self assert: tree yield equals: 5.  "No new yield, not even year"
    self assert: tree lastFruitedYear equals: 2.

]

{ #category : 'tests' }
AppleTreeTests >> testTreeInitialize [
	| tree |
	tree := AppleTree new.
	self assert: tree fruitColor equals: 'Undefined'.
	self assert: tree lastFruitedYear equals: 0.
]

{ #category : 'tests' }
AppleTreeTests >> testTreeInitializeWith [
	| tree |
	tree := AppleTree initializeWith: 'Test Tree' age: 1 height: 2 yield: 0 bearingAge: 2 fruitColor: 'Red'.
	self assert: tree speciesName equals: 'Test Tree'.
	self assert: tree age equals: 1.
	self assert: tree height equals: 2.
	self assert: tree yield equals: 0.
	self assert: tree fruitBearingAge equals: 2.
	self assert: tree fruitColor equals: 'Red'.
	self assert: tree lastFruitedYear equals: 0.
]
