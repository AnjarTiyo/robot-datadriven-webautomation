*** Settings ***
Library     SeleniumLibrary
Library     DateTime
Library     Screenshot      ${SCREENSHOT_DIR}
Library     Collections
Library     String

*** Variables ***
${BASE_URL}             https://form.jotform.com/223000285333442
${SCREENSHOT_DIR}       ../Screenshot/
${FIRSTNAME_LOC}        id=first_4
${LASTNAME_LOC}         id=last_4
${MONTH_LOC}            id=input_24_month
${DAY_LOC}              id=input_24_day
${YEAR_LOC}             id=input_24_year
${GENDER_LOC}           id=input_3
${ADDRESS_LOC}          id=input_23_addr_line1
${CITY_LOC}             id=input_23_city
${PROVINCE_LOC}         id=input_23_state
${ZIP_LOC}              id=input_23_postal
${EMAIL_LOC}            id=input_6
${MOBILE_LOC}           id=input_27_full
${MAJOR_LOC}            id=input_46
${SUBMIT_BTN}           id=input_20

*** Keywords ***
Begin Tests
    Open Browser    ${BASE_URL}     Firefox
    Maximize Browser Window