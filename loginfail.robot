***Settings***
Library    Selenium2Library
Test Teardown    Close Browser

***Variables***
${BASEURL}    http://localhost:7272/
${BROWSER}    gc

***Testcases***
Wrong username
  Open browser to login page
  Fill in    username    mode
  Submit Form
  User must see Error Page

Wrong password
  Open browser to login page
  Fill in    demo    password
  Submit Form
  User must see Error Page

Wrong username & password
  Open browser to login page
  Fill in    username    password
  Submit Form
  User must see Error Page

Missing username
  Open browser to login page
  Fill in    ${EMPTY}    mode
  Submit Form
  User must see Error Page

Missing password
  Open browser to login page
  Fill in    demo    ${EMPTY}
  Submit Form
  User must see Error Page

Missing username & password
  Open browser to login page
  Fill in    ${EMPTY}    ${EMPTY}
  Submit Form
  User must see Error Page


***Keywords***
Open browser to login page
  Open Browser    ${BASEURL}    browser=${BROWSER}
Fill in
  [Arguments]    ${username}     ${password}
  Input Text    id=username_field    ${username}
  Input Text    id=password_field    ${password}

Submit
  Page Should Contain Element    id=login_button    LOGIN
  Click Element    id=login_button
  #Submit Form

User must see Error Page
  #Wait Until Element Contains    id=container    Welcome Page
  Wait Until Element Contains    xpath=//*[@id="container"]/h1    Error Page


