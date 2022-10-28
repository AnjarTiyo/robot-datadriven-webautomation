*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/variable.resource
#Resource        ../Keywords/keywords.robot

# Test Case Depedencies
Library         DataDriver      file=fill_form_test_case.xlsx  sheet_name=Sheet1   encoding=UTF-8
Test Template   Fill the new student enrollment form
Suite Setup     Begin Tests
Test Teardown   Go To    ${BASE_URL}
Suite Teardown  Close Browser

*** Test Cases ***
Scenario-${SCENARIO}
    Fill the new student enrollment form
    Assert result based on input

*** Keywords ***
Fill the new student enrollment form
    [Arguments]     ${FIRSTNAME}   ${LASTNAME}    ${MONTH}    ${DAY}      ${YEAR}     ${GENDER}   ${ADDRESS}  ${CITY}     ${PROVINCE}     ${ZIPCODE}  ${EMAIL}    ${MOBILE}   ${MAJOR}

    Input Text                  ${FIRSTNAME_LOC}    ${FIRSTNAME}
    Input Text                  ${LASTNAME_LOC}     ${LASTNAME}
    Set Focus To Element        ${MONTH_LOC}
    Click Element               ${MONTH_LOC}
    Select From List By Value   ${MONTH_LOC}        ${MONTH}
    Set Focus To Element        ${DAY_LOC}
    Click Element               ${DAY_LOC}
    Select From List By Label   ${DAY_LOC}          ${DAY}
    Set Focus To Element        ${YEAR_LOC}
    Click Element               ${YEAR_LOC}
    Select From List By Value   ${YEAR_LOC}         ${YEAR}
    Set Focus To Element        ${GENDER_LOC}
    Click Element               ${GENDER_LOC}
    Select From List By Value   ${GENDER_LOC}       ${GENDER}
    Input Text                  ${ADDRESS_LOC}      ${ADDRESS}
    Input Text                  ${CITY_LOC}         ${CITY}
    Input Text                  ${PROVINCE_LOC}     ${PROVINCE}
    Input Text                  ${ZIP_LOC}          ${ZIPCODE}
    Execute Javascript          window.scrollTo(0,document.body.scrollHeight)
    Input Text                  ${EMAIL_LOC}        ${EMAIL}
    Input Text                  ${MOBILE_LOC}       ${MOBILE}
    Set Focus To Element        ${MAJOR_LOC}
    Click Element               ${MAJOR_LOC}
    Select From List By Value   ${MAJOR_LOC}        ${MAJOR}
    Click Element               ${SUBMIT_BTN}

Assert result based on input
    #TODO replace with dynamic variable
    Page Should Contain         Thank You!