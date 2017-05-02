*** Settings ***
#Importing the Selenium2Library with a 15 sec timeout rule
Library		Selenium2Library	15
#Global Keywords and Mappings
Resource	ObjectLibrary.robot
Resource	ProjectFunctions.robot
#FunctionlArea_WWWW Functions



*** Variables ***
#Global URL Settings
${SUT}	http://www.google.com

#Global Browser Settings
${BROWSER}	chrome
