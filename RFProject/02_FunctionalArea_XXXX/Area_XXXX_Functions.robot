*** Keywords ***
### Test #####
Open Family Directory
	#Assumes you've logged in 
	Click Element	${GLOBAL.lnkFamDir}
	Wait Until Page Contains Element	${FAMDIR.lnkFamList}

Edit Existing Family
	[Arguments]	${FirstName}	${LastName}
	#Narrow down to families with the right last name
	Input Text	${FAM.txtFuzzySearch}	${LastName}
	#Press Enter
	Press Key	${FAM.txtFuzzySearch}	\\13
	#Opens the family
	Click Element 	link=${LastName}, ${FirstName}
	#Wait for the screen to change
	Wait Until Page Contains Element	${FAM.btnEditDetails}
	#Clicks the edit details button	
	Click Button	${FAM.btnEditDetails}
	Wait Until Page Contains Element	${FAM.btnSave}
 