"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : 'ManifestMate',
	#superclass : 'PackageManifest',
	#category : 'Mate-Manifest',
	#package : 'Mate',
	#tag : 'Manifest'
}

{ #category : 'code-critics' }
ManifestMate class >> ruleBadMessageRule2V1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#MateGenerator #objectInstance:constraint: #false)) #'2026-02-04T11:53:50.023896+01:00') #(#(#RGClassDefinition #(#MateGenerator)) #'2026-02-04T11:54:10.145282+01:00') )
]
