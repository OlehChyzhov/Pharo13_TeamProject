"
Presenter class for tree system
"
Class {
	#name : 'SpTreeSystemPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'container',
		'treeListModel',
		'yearsInput',
		'addButton',
		'growButton'
	],
	#category : 'TeamProject_FruitTree',
	#package : 'TeamProject_FruitTree'
}

{ #category : 'methods' }
SpTreeSystemPresenter >> addTreeFromUser [
	container addTreeFromUser.
	treeListModel items: container memory. "refresh table"
]

{ #category : 'layout' }
SpTreeSystemPresenter >> defaultLayout [
	| titleLabel treeListInput treeListLayout buttonsLayout mainLayout |

"Title label"
titleLabel := SpLabelPresenter new.
titleLabel label: 'Fruit Tree Manager'.

treeListInput := yearsInput.
treeListInput placeholder: 'Enter Number Of Years'.

"Tree list container"
treeListLayout := SpBoxLayout newVertical.
treeListLayout add: treeListModel height: 200. "Hinted height for the list"

"Bottom row: input + buttons"
buttonsLayout := SpBoxLayout newHorizontal.
buttonsLayout add: treeListInput.
buttonsLayout add: growButton.
buttonsLayout add: addButton.

"Main vertical layout"
mainLayout := SpBoxLayout newVertical.
mainLayout spacing: 10.
mainLayout add: titleLabel.
mainLayout add: treeListLayout expand: true.
mainLayout add: buttonsLayout.

^ mainLayout

]

{ #category : 'methods' }
SpTreeSystemPresenter >> growTrees [
	| years |
	years := yearsInput number.
	years ifNil: [ ^ self inform: 'Please enter a valid number of years.' ].
	container growAllNYears: years.
	treeListModel items: container memory.
]

{ #category : 'initialization' }
SpTreeSystemPresenter >> initializePresenters [
	super initializePresenters.
	container := TreeContainer new.
	treeListModel := SpTablePresenter new.
	treeListModel 
		addColumn: (SpStringTableColumn title: 'Species' evaluated: [:tree | tree speciesName]);
		addColumn: (SpStringTableColumn title: 'Age' evaluated: [ :tree | tree age asString ]);
		addColumn: (SpStringTableColumn title: 'Height' evaluated: [ :tree | tree height asString ]);
		addColumn: (SpStringTableColumn title: 'Yield' evaluated: [ :tree | tree yield asString ]);
		addColumn: (SpStringTableColumn title: 'Color/Frost' evaluated: [ :tree | 
			(tree isKindOf: AppleTree) 
			ifTrue: [ tree fruitColor ] 
			ifFalse: [ tree hadFrost asString ] ]).
			
		treeListModel items: container memory.
		yearsInput := SpNumberInputFieldPresenter new.
		
		addButton := SpButtonPresenter new label: 'Add Tree'; action: [ self addTreeFromUser ].
		growButton := SpButtonPresenter new label: 'Grow Trees'; action: [ self growTrees ].
		
]

{ #category : 'initialization' }
SpTreeSystemPresenter >> initializeWindow: aWindowPresenter [
	super initializeWindow: aWindowPresenter.
	aWindowPresenter title: 'Tree System UI'; initialExtent: 600 @ 320; resizable: false.
]
