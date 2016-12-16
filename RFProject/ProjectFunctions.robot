*** Settings ***
Resource        SettingsAndLibraries.robot
Resource        ObjectRepository.robot

*** Variables ***

*** Keywords ***
Login
	[Arguments]	${user}	${password}
	Go To		${SUT}
	Input Text	${LOGIN.txtUser}	${user}
	Input Text	${LOGIN.txtPassword}	${password}
	Click Button	${LOGIN.btnLogin}
	Wait Until Page Contains Element	${GLOBAL.lnkLogout}
	

	
Logout
	Click Button	${GLOBAL.btnLogout}
	

	
Select From Dropdown
#Checks to see if the currently selected value is the desired one and if not, changes the value in the dropdown. 
	[Arguments]	${sLocator}	${sDesiredValue}
	${sCurrentValue}=  Get Element Attribute  ${sLocator}@value
	Run Keyword Unless  '${sCurrentValue}'=='${sDesiredValue}'  Select From DropdownSub	${sLocator}	${sDesiredValue}

	
Select From DropdownSub
#This function is used by the Select From Dropdown function to execute a subset of steps conditionally
	[Arguments]	${sLocator}	${sDesiredValue}
	Click Element  ${sLocator}
	Wait Until Element Is Visible	xpath=//*[text()='${sDesiredValue}']	5
	Click Element  xpath=//*[text()='${sDesiredValue}']
	Sleep  5s

Mouseover Subnav
# After using this function, you'll need to select your subnav menu item. Following that you should set your selenium speed back to 0s
	[Arguments]	${iMenuNum}
	Set Selenium Speed  .5s	
	Focus  xpath=//*[@id="menucontainer"]/ul/li[${iMenuNum}]/a
	Mouse Over  xpath=//*[@id="menucontainer"]/ul/li[${iMenuNum}]/a