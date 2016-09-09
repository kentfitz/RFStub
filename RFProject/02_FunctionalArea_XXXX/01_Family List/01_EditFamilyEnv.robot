*** Settings ***
Resource	${RESOURCE}/SettingsAndLibraries.robot

*** Test Cases ***
Edit Existing Data and Change Parameter
	[Tags] 	Critical
	Login  testuser1  test123
	Open Page 1
	Edit Existing Data	User Name
	Change Parameter	4242444
	
	
