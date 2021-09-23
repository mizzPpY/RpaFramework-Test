*** Settings ***
Resource    Excel_Functionality.resource
Test Template    Compare Excel Files Template

*** Test Cases ***
ZTELTE Test    C:\\Users\\pypoon.IV\\Downloads\\ZteLte_2002_VisEx_V1.xlsx    C:\\Users\\pypoon.IV\\Downloads\\ZteLte_2002_VisEx_V2.xlsx
# GPEH Test    gpehFile1    gpehFile2
# PCHR Test    pchrFile1    pchrFile2

*** Keywords ***
Compare Excel Files Template
    [Arguments]    ${filepath1}    ${filepath2}
    @{result1}=    Get Row & Column Count of Excel File    ${filepath1}
    @{result2}=    Get Row & Column Count of Excel File    ${filepath2}
    Should Be Equal As Integers    ${result1}[0]    ${result2}[0]    Row counts are different
    Should Be Equal As Integers    ${result1}[1]    ${result2}[1]    Column counts are different
