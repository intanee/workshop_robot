***Settings***
Library    Selenium2Library


***Variables***
${BASEURL}    http://localhost:7272
${BROWSER}    gc


***Keywords***
Open browser to login page
  Open Browser    ${BASEURL}    browser=${BROWSER}

Go back to login page
  Go To    ${BASEURL}

Login workflow
  [Arguments]    ${username}    ${password}
  #Open browser to login page
  Fill in    ${username}    ${password}
  Submit
  User must see Error Page
  #Go To    ${BASEURL}

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


