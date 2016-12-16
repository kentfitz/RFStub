*** Settings ***
Test Setup     Open Browser  ${SUT}  ${BROWSER}
Test Teardown  Close All BrowsersResource		../../SettingsAndLibraries.robot
Resource		../../ObjectRepository.robot
Resource		../../ProjectFunctions.robot
Library			Selenium2Library	15

*** Test Cases ***
Delete Exisiting Member Via Member Details
	[Tags]  Critical
	Login  testuser2	password1
	Open Page1
	Edit Existing User 	Jane	Doe
	
