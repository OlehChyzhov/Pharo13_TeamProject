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
ManifestTeamProjectFruitTree class >> ruleEqualNotUsedRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#'FruitTree class' #initializeWith:age:height:yield:bearingAge: #true)) #'2025-10-11T10:51:24.856+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleExcessiveArgumentsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#FruitTree #initializeWith:age:height:yield:bearingAge: #false)) #'2025-10-11T09:37:29.998+03:00') #(#(#RGMethodDefinition #(#'FruitTree class' #initializeWith:age:height:yield:bearingAge: #true)) #'2025-10-11T10:51:27.379+03:00') )
]

{ #category : 'code-critics' }
ManifestTeamProjectFruitTree class >> ruleInconsistentMethodClassificationRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#FruitTree #initialize #false)) #'2025-10-11T09:32:12.192+03:00') )
]
