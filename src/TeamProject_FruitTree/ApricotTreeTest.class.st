Class {
	#name : 'ApricotTreeTest',
	#superclass : 'TestCase',
	#category : 'TeamProject_FruitTree',
	#package : 'TeamProject_FruitTree'
}

{ #category : 'tests' }
ApricotTreeTest >> testGrowOneYear [
	| tree |
	tree := ApricotTree
	initializeWith: 'Test Tree'
	age: 1
	height: 2
	yield: 0
	bearingAge: 2
	hadFrost: true.
	
 	"Grow one year"
    tree growOneYear.

    self assert: tree age = 2.
    self assert: (tree height round: 1) = 2.3.

    "Check that yield is reduced by 80% because hadFrost = true"
    "Since initial yield was 0, after multiplying by 0.2 it should remain 0"
    self assert: tree yield = 0.
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
