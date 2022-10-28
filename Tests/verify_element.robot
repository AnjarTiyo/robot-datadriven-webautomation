*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/variable.resource
Suite Setup      Begin Tests
Test Teardown   Go To    ${BASE_URL}
Suite Teardown  Close Browser

*** Test Cases ***
Scenario-Verify that the Registration form contains First Name, Last Name, DOB Month, DOB Date, DOB Year, Gender, Address, City, Province, Zipcode, Email, Mobile, Major and Submit Button
    Element Should Be Visible    ${FIRSTNAME_LOC}
    Element Should Be Visible    ${LASTNAME_LOC}
    Element Should Be Visible    ${MONTH_LOC}
    Element Should Be Visible    ${DAY_LOC}
    Element Should Be Visible    ${YEAR_LOC}
    Element Should Be Visible    ${GENDER_LOC}
    Element Should Be Visible    ${ADDRESS_LOC}
    Element Should Be Visible    ${CITY_LOC}
    Element Should Be Visible    ${PROVINCE_LOC}
    Element Should Be Visible    ${ZIP_LOC}
    Element Should Be Visible    ${EMAIL_LOC}
    Element Should Be Visible    ${MOBILE_LOC}
    Element Should Be Visible    ${MAJOR_LOC}
    Element Should Be Visible    ${SUBMIT_BTN}

Scenario-Verify Tab Button will navigate through form input
    Input Text    ${FIRSTNAME_LOC}    example
    Press Keys      None    TAB
    Element Should Be Focused    ${LASTNAME_LOC}
    Press Keys      None    TAB
    Element Should Be Focused    ${MONTH_LOC}
    Press Keys      None    TAB
    Element Should Be Focused    ${DAY_LOC}
    Press Keys      None    TAB
    Element Should Be Focused    ${YEAR_LOC}
    Press Keys      None    TAB
    Element Should Be Focused    ${GENDER_LOC}
    Press Keys      None    TAB
    Element Should Be Focused    ${ADDRESS_LOC}
    Press Keys      None    TAB
    Element Should Be Focused    ${CITY_LOC}
    Press Keys      None    TAB
    Element Should Be Focused    ${PROVINCE_LOC}
    Press Keys      None    TAB
    Element Should Be Focused    ${ZIP_LOC}
    Press Keys      None    TAB
    Element Should Be Focused    ${EMAIL_LOC}
    Press Keys      None    TAB
    Element Should Be Focused    ${MOBILE_LOC}
    Press Keys      None    TAB
    Element Should Be Focused    ${MAJOR_LOC}

Scenario-Verify Enter Button will submit the form
    Input Text                  ${FIRSTNAME_LOC}    John
    Input Text                  ${LASTNAME_LOC}     Doe
    Execute Javascript          window.scrollTo(0,document.body.scrollHeight)
    Input Text                  ${EMAIL_LOC}        johndoe@gmail.com
    Set Focus To Element        ${MAJOR_LOC}
    Click Element               ${MAJOR_LOC}
    Select From List By Value   ${MAJOR_LOC}        Quality Engineer
    Click Element               ${MAJOR_LOC}
    Press Keys                  None                ENTER
    Page Should Contain         Thank You!
