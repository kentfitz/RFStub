*** Settings ***
Test Setup     Open Browser  ${SUT}  ${BROWSER}
Test Teardown  Close All Browsers
Resource		../SettingsAndLibraries.robot
Resource		../ObjectLibrary.robot
Resource		../ProjectFunctions.robot
Library			Selenium2Library	15
Library         OperatingSystem



*** Variables ***


*** Test Cases ***
Search for Product
  Go to  ${SUT}/shopping?hl=en
  Input Text  ${SHP.txtSrch}  3d Printer
  Click Button  ${SHP.btnSrch}
  Wait Until Page Contains Element  xpath=//*[contains(@class, 'pstl')]



Write Product Results to File
  Search For Product Function  3dPrinter
  ${iResultCount}=  get matching xpath count  xpath=//*[contains(@class, 'pstl')]
  Remove File  ShoppingResults.txt
  Create File  ShoppingResults.txt
  :FOR    ${INDEX}    IN RANGE  1  ${iResultCount}
  \    ${TitleELEMENT}=  Get Text  xpath=(//*[contains(@class, 'pstl')])[${INDEX}]
  \    ${Price}=  Get Text  xpath=(//*[contains(@class, '_tyb')]/*[contains(@class, 'price')])[${INDEX}]
  \    Log    ${TitleELEMENT}
  \    Append To File  ShoppingResults.txt  ${TitleELEMENT}: ${Price} ${\n}


*** Keywords ***
Search for Product Function
  [Arguments]  ${SearchTerm}
  Go to  ${SUT}/shopping?hl=en
  Input Text  ${SHP.txtSrch}  ${SearchTerm}
  Click Button  ${SHP.btnSrch}
  Wait Until Page Contains Element  xpath=//*[contains(@class, 'pstl')]