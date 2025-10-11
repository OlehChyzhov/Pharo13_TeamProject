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
ManifestTeamProjectFruitTree class >> ruleAssertEqualSignIntoAssertEqualsV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#ApricotTreeTests #testGrowOneYear #false)) #'2025-10-11T18:29:19.585+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleAssignmentInIfTrueRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#ApricotTree #growOneYear #false)) #'2025-10-11T18:20:16.754+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleClassNotReferencedRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#AppleTree)) #'2025-10-11T16:32:26.667+03:00') #(#(#RGClassDefinition #(#ApricotTree)) #'2025-10-11T18:14:12.021+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleEqualNotUsedRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#'FruitTree class' #initializeWith:age:height:yield:bearingAge: #true)) #'2025-10-11T10:51:24.856+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleExcessiveArgumentsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#FruitTree #initializeWith:age:height:yield:bearingAge: #false)) #'2025-10-11T09:37:29.998+03:00') #(#(#RGMethodDefinition #(#'FruitTree class' #initializeWith:age:height:yield:bearingAge: #true)) #'2025-10-11T10:51:27.379+03:00') #(#(#RGMethodDefinition #(#AppleTree #initializeWith:age:height:yield:bearingAge:fruitColor: #false)) #'2025-10-11T16:40:12.808+03:00') #(#(#RGMethodDefinition #(#'AppleTree class' #initializeWith:age:height:yield:bearingAge:fruitColor: #true)) #'2025-10-11T16:52:18.917+03:00') #(#(#RGMethodDefinition #(#'ApricotTree class' #initializeWith:age:height:yield:bearingAge:hadFrost: #true)) #'2025-10-11T18:15:53.227+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleFloatEqualityComparisonRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#ApricotTreeTests #testGrowOneYear #false)) #'2025-10-11T18:29:21.882+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleInconsistentMethodClassificationRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#FruitTree #initialize #false)) #'2025-10-11T09:32:12.192+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleMissingSuperSendsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#ApricotTree #initialize #false)) #'2025-10-11T18:14:37.855+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleReAssertWithBooleanEqualtiyRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#ApricotTreeTests #testTreeInitialize #false)) #'2025-10-11T18:22:52.813+03:00') #(#(#RGMethodDefinition #(#ApricotTreeTests #testTreeInitializeWith #false)) #'2025-10-11T18:24:41.455+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleReClassNotCategorizedRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#AppleTree)) #'2025-10-11T16:32:49.89+03:00') #(#(#RGClassDefinition #(#AppleTreeTests)) #'2025-10-11T16:54:29.301+03:00') #(#(#RGClassDefinition #(#ApricotTree)) #'2025-10-11T18:14:09.755+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleReGuardClauseRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#AppleTree #growOneYear #false)) #'2025-10-11T16:49:41.22+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleReIvarNeitherReadNorWrittenRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#ApricotTree)) #'2025-10-11T18:14:07.602+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleReShouldSendSuperInitializeAsFirstMessageV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#ApricotTree #initialize #false)) #'2025-10-11T18:14:35.687+03:00') )
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
