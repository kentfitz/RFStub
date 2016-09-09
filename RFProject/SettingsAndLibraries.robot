*** Settings ***
#Importing the Selenium2Library with a 15 sec timeout rule
Library		Selenium2Library	15
#Global Keywords and Mappings
Resource	ObjectRepository.robot
Resource	ProjectFunctions.robot
#FunctionlArea_WWWW Functions
Resource	${RESOURCE}/01_FunctionlArea_WWWW/FamDirFunctions.robot
#FunctionalArea_XXXX Functions
Resource	${RESOURCE}/02_FunctionalArea_XXXX/OfferingFunctions.robot


*** Variables ***
#Global URL Settings
${SUT}	http://qa.testsite.com/QA01/

#Global Browser Settings
${BROWSER}	chrome
