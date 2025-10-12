Class {
	#name : 'TreeContainerTest',
	#superclass : 'TestCase',
	#instVars : [
		'orchard',
		'apple1',
		'apricot1',
		'apple2',
		'apricot2'
	],
	#category : 'TeamProject_FruitTree',
	#package : 'TeamProject_FruitTree'
}

{ #category : 'running' }
TreeContainerTest >> setUp [
	super setUp.
	orchard := TreeContainer new.
	apple1 := AppleTree initializeWith: 'Apple One' age: 3 height: 10 yield: 10 bearingAge: 2 fruitColor: 
	'Red'.

	apricot1 := ApricotTree initializeWith: 'Apricot One' age: 6 height: 2 yield: 45 bearingAge: 1 hadFrost: 
	false.

	apple2 := AppleTree initializeWith: 'Apple Two' age: 3 height: 2.5 yield: 15 bearingAge: 2 fruitColor: 
	'Green'.

	apricot2 := ApricotTree initializeWith: 'Apricot Two' age: 4 height: 2 yield: 5 bearingAge: 3 hadFrost: 
	true.

	orchard addTree: apple1.
	orchard addTree: apricot1.
	orchard addTree: apple2.
	orchard addTree: apricot2.
]

{ #category : 'tests' }
TreeContainerTest >> testAllReachedBearingAge [
	self assert: orchard allReachedBearingAge equals: true.
	
	orchard addTree: 
	(AppleTree initializeWith: 'Apple' age: 1 height: 4 yield: 0 bearingAge: 4 fruitColor: 'Red').
	
	self assert: orchard allReachedBearingAge equals: false.
]

{ #category : 'tests' }
TreeContainerTest >> testGrowAllNYears [
	orchard growAllNYears: 1.
	self assert: apple1 age equals: 4.
	self assert: apricot1 age equals: 7.
	self assert: apple2 age equals: 4.
	self assert: apricot2 age equals: 5.
]

{ #category : 'tests' }
TreeContainerTest >> testHighestTree [
	self assert: orchard highestTree speciesName equals: 'Apple One'.
]

{ #category : 'tests' }
TreeContainerTest >> testMostProductiveTree [
	self assert: orchard mostProductiveTree speciesName equals: 'Apricot One'.
]

{ #category : 'tests' }
TreeContainerTest >> testTop3Productive [
| result |
    result := orchard top3Productive.

    self assert: result size equals: 3.
    self assert: (result collect: #yield) equals: #(45 15 10) asOrderedCollection.
]

{ #category : 'tests' }
TreeContainerTest >> testTreesBelowHeight [
| result |
    result := orchard treesBelowHeight: 2.
    self assert: result size equals: 2.
    self assert: (result includes: apricot1).
    self assert: (result includes: apricot2).
]
