*** Settings ***
Test Setup     Open Browser  ${SUT}  ${BROWSER}
Test Teardown  Close All Browsers
Resource		../../SettingsAndLibraries.robot
Resource		../../ObjectRepository.robot
Resource		../../ProjectFunctions.robot
Library			Selenium2Library	15

*** Test Cases ***
Edit Existing Data and Change Parameter
	[Tags] 	Critical
	Login  testuser1  test123
	Open Page 1
	Edit Existing Data	User Name
	Change Parameter	4242444
	
	
