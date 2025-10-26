"
TreeContainer serves as a collection manager for FruitTree objects.

It stores all trees in the orchard within the 'memory' collection
and provides methods for the trees
(e.g., finding the most productive or shortest ones).

"
Class {
	#name : 'TreeContainer',
	#superclass : 'Object',
	#instVars : [
		'memory'
	],
	#category : 'TeamProject_FruitTree',
	#package : 'TeamProject_FruitTree'
}

{ #category : 'programExamples' }
TreeContainer class >> ContainerExample [
	<script>
	|apple apricot apricot2 treeContainer|
	
	treeContainer := TreeContainer new.
	
	apple := AppleTree initializeWith: 'apple' age: 0 height: 1 yield: 0 bearingAge: 1 fruitColor: 'Red'.
	apricot := ApricotTree initializeWith: 'apricot' age: 0 height: 1 yield: 0 bearingAge: 1 hadFrost: false.
	apricot2 := ApricotTree initializeWith: 'apricot' age: 1 height: 1.5 yield: 20 bearingAge: 1 hadFrost: 
	false.

	treeContainer addTree: apple; addTree: apricot; addTree: apricot2.
	
	treeContainer growAllNYears: 2.
	treeContainer allReachedBearingAge. "true"
	
	treeContainer highestTree.  "apple | Age: 2 | Height: 2.0 | Yield: 20 | Fruit color: Red"
	
	treeContainer mostProductiveTree.  "apricot | Age: 2 | Height: 1.4 | Yield: 40 | Had Frost: false"
	
	treeContainer treesBelowHeight: 1.5.  "an OrderedCollection(apricot | Age: 2 | Height: 1.4 | Yield: 40 | 
													  Had Frost: false)"
	
	treeContainer top3Productive.  "a SortedCollection(apricot | Age: 3 | Height: 1.9 | Yield: 60 | Had Frost: false apricot | Age: 2 | Height: 1.4 | Yield: 40 | Had Frost: false apple | Age: 2 | Height: 2.0 | Yield: 20 | Fruit color: Red)"
	
	treeContainer addTreeFromUser.
	treeContainer printAll.
]

{ #category : 'programExamples' }
TreeContainer class >> TreesExample [
	<script>
	|myApple myApricot|
	
	myApple := AppleTree initializeWith: 'apple' age: 0 height: 1 yield: 0 bearingAge: 1 fruitColor: 'Red'.
	myApricot := ApricotTree initializeWith: 'apricot' age: 0 height: 1 yield: 0 bearingAge: 1 hadFrost: false.
	myApple.  "apple | Age: 0 | Height: 1 | Yield: 0 | Fruit color: Red"
	myApricot.  "apricot | Age: 0 | Height: 1 | Yield: 0 | Had Frost: false"
	
	myApple growYears: 2.
	myApricot growYears: 2.
	
	myApple.  "apple | Age: 2 | Height: 2.0 | Yield: 20 | Fruit color: Red"
	myApricot.  "apricot | Age: 2 | Height: 1.4 | Yield: 40 | Had Frost: false"
	
	myApple getYieldForThisYear.  "20"
	myApricot getYieldForThisYear.  "40"
	
	myApple growOneYear.
	myApricot hadFrost: true.
	myApricot growOneYear.
	
	myApple getYieldForThisYear.  "0 бо плодоносить раз на 2 роки"
	myApricot getYieldForThisYear.  "12.0 бо це 20% від 60"
]

{ #category : 'adding' }
TreeContainer >> addTree: aTree [
    "Add a tree to memory, ensuring it is a FruitTree."

    (aTree isKindOf: FruitTree) ifFalse: [
        ^self error: 'Only instances of FruitTree can be added'].
	memory add: aTree.
]

{ #category : 'adding' }
TreeContainer >> addTreeFromUser [
	| tree |
	tree := self getTreeFromUser.
   self addTree: tree.

]

{ #category : 'methods' }
TreeContainer >> allReachedBearingAge [
    ^ memory allSatisfy: [:t | t age >= t fruitBearingAge].
]

{ #category : 'adding' }
TreeContainer >> getTreeFromUser [
    | type name age height yield bearingAge extraField tree wasFrost |

    type := UIManager default 
        chooseFrom: #('AppleTree' 'ApricotTree') 
        title: 'Choose tree type:'.

    type = 0 ifTrue: [ ^ nil ].  "User canceled the dialog"

    name := UIManager default request: 'Enter tree name:'.
    age := (UIManager default request: 'Enter age:') asNumber.
    height := (UIManager default request: 'Enter height:') asNumber.
    yield := (UIManager default request: 'Enter yield:') asNumber.
    bearingAge := (UIManager default request: 'Enter fruit-bearing age:') asNumber.

    type = 1 ifTrue: [
        extraField := UIManager default request: 'Enter fruit color:'.
        tree := AppleTree 
            initializeWith: name 
            age: age 
            height: height 
            yield: yield 
            bearingAge: bearingAge 
            fruitColor: extraField.
    ].

    type = 2 ifTrue: [
        extraField := UIManager default chooseFrom: #('Yes' 'No') title: 'Were there frosts?'.
        wasFrost := (extraField = 1).  "true if 'Yes' chosen"
        tree := ApricotTree 
            initializeWith: name 
            age: age 
            height: height 
            yield: yield 
            bearingAge: bearingAge 
            hadFrost: wasFrost.
    ].

    ^ tree.

]

{ #category : 'methods' }
TreeContainer >> growAllNYears: aNumber [
    memory do: [ :tree | tree growYears: aNumber ].
]

{ #category : 'methods' }
TreeContainer >> highestTree [
    ^ memory detectMax: [:tree | tree height ].
]

{ #category : 'initialization' }
TreeContainer >> initialize [ 
	super initialize.
	memory := OrderedCollection new.
]

{ #category : 'accessing' }
TreeContainer >> memory [

	^ memory
]

{ #category : 'methods' }
TreeContainer >> mostProductiveTree [
    ^ memory detectMax: [ :tree | tree yield ].
]

{ #category : 'printing' }
TreeContainer >> printAll [
	Transcript open.
	memory do: [ :tree | Transcript show: tree printString; cr ].
]

{ #category : 'methods' }
TreeContainer >> top3Productive [
    ^ (memory asSortedCollection: [:a :b | a yield > b yield]) first: 3.
]

{ #category : 'methods' }
TreeContainer >> treesBelowHeight: aHeight [
    ^ memory select: [:t | t height <= aHeight].
]
