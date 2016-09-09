*** Settings ***
Resource	${RESOURCE}/SettingsAndLibraries.robot

*** Test Cases ***
Delete Exisiting Member Via Member Details
	[Tags]  Critical
	Login  testuser2	password1
	Open Page1
	Edit Existing User 	Jane	Doe
	