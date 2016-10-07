*** Settings ***
Resource		../SettingsAndLibraries.robot
Resource		../ObjectRepository.robot
Resource		../ProjectFunctions.robot
Library			Selenium2Library	15
*** Variables ***




*** Test Cases ***
Login And Change Menu
	[Tags]	Testing
	Login  RealUserName	RealPassword
	Click Link  Functional AreaWWWW
	Select From Dropdown  DropDownMenuID	MenuOption

	
	
