*** Settings ***
Test Setup     Open Browser  ${SUT}  ${BROWSER}
Test Teardown  Close All Browsers
Resource		../SettingsAndLibraries.robot
Resource		../ObjectLibrary.robot
Resource		../ProjectFunctions.robot
Library			Selenium2Library	15

*** Variables ***




*** Test Cases ***
Basic Search
  [Tags]	Testing
  Input Text  ${FRNT.txtSearch}  RobotFramework
  Wait Until Page Contains Element  xpath=//*[contains(@class, 'rc')]
  Input Text  ${RSLT.txtSearch}  Agile and Beyond 2017
  Click Button  ${rslt.btnsearch}
  Wait Until Page Contains Element  partial link=Agile and Beyond
  Click Link  partial link=Agile and Beyond
  Capture Page Screenshot


Open Search Result
  [Tags]  Results
  Search For Term From Front Page  Agile and Beyond 2017
  Wait Until Page Contains Element  partial link=Agile and Beyond
  Click Link  partial link=Agile and Beyond


*** Keywords ***
Search for Term From Front page
  [Arguments]  ${searchTerm}
  Input Text  ${FRNT.txtSearch}  ${searchTerm}
  Wait Until Page Contains Element  xpath=//*[contains(@class, 'rc')]

