*** Settings ***
#Importing the Selenium2Library with a 15 sec timeout rule
Library		Selenium2Library	15
#Global Keywords and Mappings
Resource	ObjectRepository.robot
Resource	ProjectFunctions.robot
#FunctionlArea_WWWW Functions
Resource	01_FunctionlArea_WWWW/Functions.robot
#FunctionalArea_XXXX Functions
Resource	02_FunctionalArea_XXXX/Functions.robot


*** Variables ***
#Global URL Settings
${SUT}	http://qa.testsite.com/QA01/

#Global Browser Settings
${BROWSER}	chrome
