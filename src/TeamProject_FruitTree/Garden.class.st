"
A Collection of Trees
"
Class {
	#name : 'Garden',
	#superclass : 'Object',
	#instVars : [
		'owner',
		'trees'
	],
	#category : 'TeamProject_FruitTree',
	#package : 'TeamProject_FruitTree'
}

{ #category : 'methods' }
Garden class >> getAgeThatCountsAsOldTree [
	^ 40.
]

{ #category : 'initialization' }
Garden class >> initializeWithOwner: anOwner [
	|garden|
	garden := self basicNew.
	garden owner: anOwner.
	garden trees: TreeContainer new.
	^ garden.
]

{ #category : 'testing' }
Garden >> askToRemoveOldTrees [
        self trees memory removeAllSuchThat: [ :tree | tree age > 100 ]
]

{ #category : 'methods' }
Garden >> didTreesGetFreezeDamage [
    ^ (trees memory anySatisfy: [ :t | t isKindOf: ApricotTree ]).
]

{ #category : 'methods' }
Garden >> findAppleTreesWithColor: aColor [
    ^ trees memory select: [ :t |
        (t isKindOf: AppleTree) and: [ t fruitColor = aColor ] ].
]

{ #category : 'methods' }
Garden >> findTreesOfClass: aClass [
	^ trees memory select: [ :t | t isKindOf: aClass ].
]

{ #category : 'testing' }
Garden >> getAgeThatCountsAsOldTree [ ^ 10
]

{ #category : 'testing' }
Garden >> getYieldForThisYear [
        ^ 0
]

{ #category : 'methods' }
Garden >> growNYears: aNumber [
	trees growAllNYears: aNumber.
	self askToRemoveOldTrees.
]

{ #category : 'methods' }
Garden >> initialize [
	self trees: TreeContainer new.
	self owner: 'Unknown'.
]

{ #category : 'accessing' }
Garden >> owner [

	^ owner
]

{ #category : 'accessing' }
Garden >> owner: aName [

	(aName isString and: [aName isNotEmpty]) ifFalse: [
        ^self error: 'Owner name must be a non-empty string'].

	owner := aName.
]

{ #category : 'methods' }
Garden >> plant: aTree [
	self trees addTree: aTree.
]

{ #category : 'printing' }
Garden >> printAllTrees [
	self trees printAll.
]

{ #category : 'printing' }
Garden >> printOn: aStream [
	aStream 
	nextPutAll: 'Garden Owner: ', owner;
	nextPutAll: ' | Trees: '; print: trees.
]

{ #category : 'methods' }
Garden >> remove: aTree [
	self trees removeTree: aTree.
]

{ #category : 'methods' }
Garden >> removeOlderThan: anAge [
	self trees removeTreeWithAgeGreaterThan: anAge.
]

{ #category : 'methods' }
Garden >> totalYield [
    ^ trees memory inject: 0 into: [:sum :tree | sum + tree getYieldForThisYear].
]

{ #category : 'accessing' }
Garden >> trees [

	^ trees
]

{ #category : 'accessing' }
Garden >> trees: aTreeContainer [

    (aTreeContainer isKindOf: TreeContainer) ifFalse: [
        ^self error: 'Only instances of TreeContainer can be added'].

	trees := aTreeContainer
]
