Class {
	#name : 'GardenTests',
	#superclass : 'TestCase',
	#instVars : [
		'garden',
		'tree1',
		'tree2'
	],
	#category : 'TeamProject_FruitTree',
	#package : 'TeamProject_FruitTree'
}

{ #category : 'running' }
GardenTests >> setUp [
	super setUp.

    "Create a garden and some trees for testing"
    garden := Garden new.
    tree1 := AppleTree initializeWith: 'My Apple' age: 12 height: 6 yield: 39 bearingAge: 2 fruitColor: 'Red'.

    tree2 := ApricotTree initializeWith: 'My Apricot' age: 32 height: 15 yield: 31 bearingAge: 3 hadFrost: true.

    garden plant: tree1.
    garden plant: tree2.
]

{ #category : 'tests' }
GardenTests >> testDidTreesGetFreezeDamage [
    self assert: (garden didTreesGetFreezeDamage) = true.
]

{ #category : 'tests' }
GardenTests >> testFindAppleTreesWithColor [
    | result |
    result := garden findAppleTreesWithColor: 'Red'.
    self assert: (result includes: tree1).
    self assert: (result size) = 1.
]

{ #category : 'tests' }
GardenTests >> testFindTreesOfClass [
    | result |
    result := garden findTreesOfClass: FruitTree.
    self assert: (result includes: tree1).
    self assert: (result includes: tree2).
]

{ #category : 'tests' }
GardenTests >> testTotalYield [
    self assert: (garden totalYield) = (tree1 getYieldForThisYear + tree2 getYieldForThisYear).
]
