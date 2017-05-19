***Settings***
Library    Selenium2Library
Test Teardown    Close Browser

***Variables***
${BASEURL}    http://localhost:7272/
${BROWSER}    gc

***Testcases***
Login success
  Open browser to login page
  Fill in username and password
  Submit Form
  User must see the welcome page
  Click Link Logout back to login page

***Keywords***
Open browser to login page
  Open Browser    ${BASEURL}    browser=${BROWSER}
Fill in username and password
  Input Text    id=username_field    demo
  Input Text    id=password_field    mode

Submit
  Page Should Contain Element    id=login_button    LOGIN
  Click Element    id=login_button
  #Submit Form

User must see the welcome page
  #Wait Until Element Contains    id=container    Welcome Page
  Wait Until Element Contains    xpath=//*[@id="container"]/h1    Welcome Page

Click Link Logout back to login page
  Page Should Contain Element    xpath=//*[@id="container"]/p/a
  Click Element    xpath=//*[@id="container"]/p/a
  #Wait Until Page Contains    Login Page
  Wait Until Element Contains    xpath=//*[@id="container"]/h1    Login Page
