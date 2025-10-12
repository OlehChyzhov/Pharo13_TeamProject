"
Container (Custom Wrapper) for all trees
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

{ #category : 'adding' }
TreeContainer >> addTree: aTree [
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
