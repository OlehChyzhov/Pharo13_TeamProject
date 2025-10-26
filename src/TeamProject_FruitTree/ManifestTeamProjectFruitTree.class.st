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
	^ #(#(#(#RGMethodDefinition #(#ApricotTreeTest #testGrowOneYear #false)) #'2025-10-11T18:29:19.585+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleAssignmentInIfTrueRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#ApricotTree #growOneYear #false)) #'2025-10-11T18:20:16.754+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleBadMessageRule2V1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#ApricotTree #hadFrost: #false)) #'2025-10-25T21:45:19.859+03:00') #(#(#RGPackageDefinition #(#TeamProject_FruitTree)) #'2025-10-26T07:30:26.453+02:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleClassNotReferencedRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#AppleTree)) #'2025-10-11T16:32:26.667+03:00') #(#(#RGClassDefinition #(#ApricotTree)) #'2025-10-11T18:14:12.021+03:00') #(#(#RGClassDefinition #(#TreeContainer)) #'2025-10-12T09:51:30.169+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleCodeCruftLeftInMethodsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#TreeContainer #printAll #false)) #'2025-10-12T10:01:29.39+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleDefinesEqualNotHashRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#FruitTree)) #'2025-10-25T20:46:50.82+03:00') )
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
	^ #(#(#(#RGMethodDefinition #(#ApricotTreeTest #testGrowOneYear #false)) #'2025-10-11T18:29:21.882+03:00') )
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
ManifestTeamProjectFruitTree class >> ruleNoUnusedInstanceVariableRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#TreeContainer)) #'2025-10-12T09:51:32.985+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleReAssertWithBooleanEqualtiyRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#ApricotTreeTest #testTreeInitialize #false)) #'2025-10-11T18:22:52.813+03:00') #(#(#RGMethodDefinition #(#ApricotTreeTest #testTreeInitializeWith #false)) #'2025-10-11T18:24:41.455+03:00') #(#(#RGMethodDefinition #(#TreeContainerTest #testAllReachedBearingAge #false)) #'2025-10-12T13:45:01.472+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleReClassNotCategorizedRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#AppleTree)) #'2025-10-11T16:32:49.89+03:00') #(#(#RGClassDefinition #(#AppleTreeTest)) #'2025-10-11T16:54:29.301+03:00') #(#(#RGClassDefinition #(#ApricotTree)) #'2025-10-11T18:14:09.755+03:00') #(#(#RGClassDefinition #(#TreeContainer)) #'2025-10-12T09:51:21.678+03:00') #(#(#RGClassDefinition #(#FruitTree)) #'2025-10-25T20:46:48.595+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleReGuardClauseRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#AppleTree #growOneYear #false)) #'2025-10-11T16:49:41.22+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleReIvarNeitherReadNorWrittenRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#ApricotTree)) #'2025-10-11T18:14:07.602+03:00') #(#(#RGClassDefinition #(#TreeContainer)) #'2025-10-12T09:51:26.549+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleReShouldSendSuperInitializeAsFirstMessageV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#ApricotTree #initialize #false)) #'2025-10-11T18:14:35.687+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleReTestClassNameShouldEndWithTestRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#AppleTreeTest)) #'2025-10-11T16:54:24.592+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleReTestClassNameShouldNotEndWithTestsV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#AppleTreeTest)) #'2025-10-11T16:54:22.303+03:00') #(#(#RGClassDefinition #(#FruitTreeTest)) #'2025-10-12T14:55:34.27+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleReTestClassNotInPackageWithTestEndingNameRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#AppleTreeTest)) #'2025-10-11T16:54:37.482+03:00') #(#(#RGClassDefinition #(#FruitTreeTest)) #'2025-10-12T14:55:57.21+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleReUndeclaredVariableRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#AppleTree #lastFruitedYear #false)) #'2025-10-25T21:19:32.488+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleRefersToClassRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGPackageDefinition #(#TeamProject_FruitTree)) #'2025-10-26T08:19:42.373+02:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleTempsReadBeforeWrittenRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#TreeContainer #addTreeFromUser #false)) #'2025-10-12T10:09:32.277+03:00') )
]
