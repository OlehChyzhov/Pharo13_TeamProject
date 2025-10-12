Class {
	#name : 'FruitTreeTest',
	#superclass : 'TestCase',
	#category : 'TeamProject_FruitTree',
	#package : 'TeamProject_FruitTree'
}

{ #category : 'methods' }
FruitTreeTest >> testGrowOneYear [
	| tree |
	tree := FruitTree initializeWith: 'Test Tree' age: 1 height: 1 yield: 0 bearingAge: 2.
	tree growOneYear.
	self assert: tree age equals: 2.
	self assert: tree height equals: 1.30.
	self assert: tree yield equals: 5.
]

{ #category : 'methods' }
FruitTreeTest >> testGrowYears [
    | tree |
    tree := FruitTree initializeWith: 'Test Tree' age: 1 height: 1 yield: 0 bearingAge: 2.
    tree growYears: 3.
    self assert: tree age equals: 4.
    self assert: (tree height round: 2) equals: 1.9.
    self assert: tree yield equals: 15.

]

{ #category : 'initialization' }
FruitTreeTest >> testTreeInitialize [
	| tree |
	tree := FruitTree new.
	self assert: tree age equals: 0.
	self assert: tree height equals: 0.
	self assert: tree yield equals: 0.
]

{ #category : 'tests' }
FruitTreeTest >> testTreeInitializeWith [
	| tree |
	tree := FruitTree initializeWith: 'Test Tree' age: 2 height: 1.2 yield: 0 bearingAge: 3.
	self assert: tree speciesName equals: 'Test Tree'.
	self assert: tree age equals: 2.
	self assert: tree height equals: 1.2.
	self assert: tree yield equals: 0.
	self assert: tree fruitBearingAge equals: 3.
]
