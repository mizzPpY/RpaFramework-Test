*** Settings ***
Library    RPA.Word.Application

*** Test Cases ***
Open Word File
    Open Application    visible=True
    Open File    filename=C:\\Users\\pypoon.IV\\OneDrive - InfoVista\\Documents\\For Lance.docx