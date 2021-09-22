*** Settings ***
Documentation   Template robot main suite.
Library         RPA.PDF

*** Test Cases ***
Minimal task
    ${pageCount}=    Get Number Of Pages    C:\\Users\\pypoon.IV\\OneDrive - InfoVista\\Documents\\Infovista VistaNEO CM Package Installation Guide.pdf
    Log To Console    ${pageCount}