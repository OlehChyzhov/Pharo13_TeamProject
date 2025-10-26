Class {
	#name : 'ApricotTreeTest',
	#superclass : 'TestCase',
	#category : 'TeamProject_FruitTree',
	#package : 'TeamProject_FruitTree'
}

{ #category : 'tests' }
ApricotTreeTest >> testGetYieldForThisYear [
	|tree|
	tree := ApricotTree initializeWith: 'Apricot' age: 0 height: 1 yield: 0 bearingAge: 1 hadFrost: false.
	
	tree growOneYear.
	self assert: tree age equals: 1.
   self assert: tree getYieldForThisYear equals: 0. "Bearing age is 1"

	tree growOneYear.
	self assert: tree age equals: 2.
   self assert: tree getYieldForThisYear equals: 40. "Bearing age is 1"

	tree growOneYear; hadFrost: true.
	self assert: tree age equals: 3.
   self assert: tree getYieldForThisYear equals: 12. "20% of 60"

]

{ #category : 'tests' }
ApricotTreeTest >> testTreeInitialize [
	| tree |
	tree := ApricotTree new.
	self assert: tree hadFrost equals: false.
]

{ #category : 'tests' }
ApricotTreeTest >> testTreeInitializeWith [
	| tree |
	tree := ApricotTree initializeWith: 'Test Tree' age: 1 height: 2 yield: 0 bearingAge: 2 hadFrost: true.
	self assert: tree speciesName equals: 'Test Tree'.
	self assert: tree age equals: 1.
	self assert: tree height equals: 2.
	self assert: tree yield equals: 0.
	self assert: tree fruitBearingAge equals: 2.
	self assert: tree hadFrost equals: true.
	
]
