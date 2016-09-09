*** Settings ***
Resource		${RESOURCE}/SettingsAndLibraries.robot

*** Variables ***




*** Test Cases ***
Login And Change Menu
	[Tags]	Testing
	Login  RealUserName	RealPassword
	Click Link  Functional AreaWWWW
	Select From Dropdown  DropDownMenuID	MenuOption

	
	