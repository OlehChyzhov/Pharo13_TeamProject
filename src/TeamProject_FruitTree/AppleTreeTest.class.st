Class {
	#name : 'AppleTreeTest',
	#superclass : 'TestCase',
	#category : 'TeamProject_FruitTree',
	#package : 'TeamProject_FruitTree'
}

{ #category : 'tests' }
AppleTreeTest >> testGrowOneYear [
    | tree |
    tree := AppleTree initializeWith: 'Tree' age: 0 height: 1 yield: 0 bearingAge: 1 fruitColor: 'Red'.

    tree growOneYear.
    self assert: tree age equals: 1.
    self assert: tree getYieldForThisYear equals: 0. "Bearing age is 1"
    self assert: tree lastYearFruited equals: true.

    tree growOneYear.
    self assert: tree age equals: 2.
    self assert: tree getYieldForThisYear equals: 20.
    self assert: tree lastYearFruited equals: false.

    tree growOneYear.
    self assert: tree age equals: 3.
    self assert: tree getYieldForThisYear equals: 0.
    self assert: tree lastYearFruited equals: true.

]

{ #category : 'tests' }
AppleTreeTest >> testTreeInitialize [
	| tree |
	tree := AppleTree new.
	self assert: tree fruitColor equals: 'Undefined'.
	self assert: tree lastYearFruited equals: false.
]

{ #category : 'tests' }
AppleTreeTest >> testTreeInitializeWith [
	| tree |
	tree := AppleTree initializeWith: 'Test Tree' age: 1 height: 2 yield: 0 bearingAge: 2 fruitColor: 'Red'.
	self assert: tree speciesName equals: 'Test Tree'.
	self assert: tree age equals: 1.
	self assert: tree height equals: 2.
	self assert: tree yield equals: 0.
	self assert: tree fruitBearingAge equals: 2.
	self assert: tree fruitColor equals: 'Red'.
	self assert: tree lastYearFruited equals: false.
]
