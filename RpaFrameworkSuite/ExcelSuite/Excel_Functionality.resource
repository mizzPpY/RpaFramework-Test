*** Settings ***
Library    RPA.Excel.Files

*** Keywords ***
Get Row & Column Count of Excel File
    [Arguments]    ${filepath}
    [Documentation]    This will open the specified excel file anf get its number of rows and columns.
    ...                The output value will be in a list, where first value is row count and second value is column count.
    ...                \nExample:
    ...                | Get Row & Column Count of Excel File | D:\\Files\\sample.xlsx |
    Open Workbook    ${filepath}
    Read File & Get Content
    ${rowCount}=    Get Number of Rows In File
    Log To Console    ${filepath} row count is ${rowCount}
    ${colCount}=    Get Number of Columns In File
    Log To Console    ${filepath} column count is ${colCount}
    @{result}=    Create List    ${rowCount}    ${colCount}
    [Return]    ${result}

Read File & Get Content
    [Documentation]    This will read the opened excel file current sheet and save its content as global variable.
    ...                ${CONTENT} will be a nested list. Use this after calling Open Workbook keyword.
    ...                \nExample:
    ...                | Open Workbook | ${filepath} |
    ...                | Read File & Get Content |
    ${content}=    Read Worksheet    header=False
    Set Global Variable    ${CONTENT}       ${content}
    
Get Number of Rows In File
    [Documentation]    This will get the opened excel file current sheet's content row count. 
    ...                The output value will be an integer. Use this after calling Read File & Get Content keyword.
    ...                \nExample:
    ...                | Read File & Get Content |
    ...                | ${rowCount}= | Get Number of Rows In File |
    ${rowcount}=    Get Length    ${CONTENT}
    [Return]    ${rowcount}

Get Number of Columns In File
    [Documentation]    This will get the opened excel file current sheet's content column count.
    ...                The output value will be an integer.
    ...                \nExample:
    ...                | Read File & Get Content |
    ...                | ${colCount}= | Get Number of Columns In File |
    ${colcount}=    Get Length    ${CONTENT}[0]
    [Return]    ${colcount}
