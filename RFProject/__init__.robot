*** Settings ***
Resource	SettingsAndLibraries.robot	
Force Tags	Condition1
SuiteSetup	Open Browser	${SUT}	${BROWSER}
SuiteTeardown	Close All Browsers