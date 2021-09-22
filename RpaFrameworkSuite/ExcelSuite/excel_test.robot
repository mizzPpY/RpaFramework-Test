*** Settings ***
Resource    Excel_Functionality.resource

*** Test Cases ***
Compare Excel Files
    @{result1}=    Get Row & Column Count of Excel File    C:\\Users\\pypoon.IV\\Downloads\\ZteLte_2002_VisEx_V1.xlsx
    @{result2}=    Get Row & Column Count of Excel File    C:\\Users\\pypoon.IV\\Downloads\\ZteLte_2002_VisEx_V2.xlsx
    Should Be Equal As Integers    ${result1}[0]    ${result2}[0]    Row counts are different
    Should Be Equal As Integers    ${result1}[1]    ${result2}[1]    Column counts are different
