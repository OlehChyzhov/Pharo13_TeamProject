"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : 'ManifestTeamProjectFruitTree',
	#superclass : 'PackageManifest',
	#category : 'TeamProject_FruitTree-Manifest',
	#package : 'TeamProject_FruitTree',
	#tag : 'Manifest'
}

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleClassNotReferencedRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#AppleTree)) #'2025-10-11T16:32:26.667+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleEqualNotUsedRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#'FruitTree class' #initializeWith:age:height:yield:bearingAge: #true)) #'2025-10-11T10:51:24.856+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleExcessiveArgumentsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#FruitTree #initializeWith:age:height:yield:bearingAge: #false)) #'2025-10-11T09:37:29.998+03:00') #(#(#RGMethodDefinition #(#'FruitTree class' #initializeWith:age:height:yield:bearingAge: #true)) #'2025-10-11T10:51:27.379+03:00') #(#(#RGMethodDefinition #(#AppleTree #initializeWith:age:height:yield:bearingAge:fruitColor: #false)) #'2025-10-11T16:40:12.808+03:00') #(#(#RGMethodDefinition #(#'AppleTree class' #initializeWith:age:height:yield:bearingAge:fruitColor: #true)) #'2025-10-11T16:52:18.917+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleInconsistentMethodClassificationRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#FruitTree #initialize #false)) #'2025-10-11T09:32:12.192+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleReClassNotCategorizedRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#AppleTree)) #'2025-10-11T16:32:49.89+03:00') #(#(#RGClassDefinition #(#AppleTreeTests)) #'2025-10-11T16:54:29.301+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleReGuardClauseRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#AppleTree #growOneYear #false)) #'2025-10-11T16:49:41.22+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleReTestClassNameShouldEndWithTestRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#AppleTreeTests)) #'2025-10-11T16:54:24.592+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleReTestClassNameShouldNotEndWithTestsV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#AppleTreeTests)) #'2025-10-11T16:54:22.303+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleReTestClassNotInPackageWithTestEndingNameRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#AppleTreeTests)) #'2025-10-11T16:54:37.482+03:00') )
]
