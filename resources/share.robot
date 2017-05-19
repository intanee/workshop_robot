***Settings***
Library    Selenium2Library

***Variables***
${BASEURL}    http://www.google.com
${BROWSER}    gc

***Keywords***
Search workflow
  [Arguments]    ${seach keywords}    ${expected result}
  #Open browser to open google.com
  Fill in data    ${seach keywords}
  Press Enter
  Found data in result page    ${expected result}
  Go To    ${BASEURL}

Open browser to open google.com
  Open Browser    ${BASEURL}    browser=${BROWSER}

Fill in data
  [Arguments]    ${search keywords}
  Input Text    name=q    ${search keywords}
Press Enter
  Press Key    name=q    \\13
Found robot in result page
  Wait Until Page Contains    Robot - Wikipedia
Found python in result page
  Wait Until Page Contains    Welcome to Python.org
Found data in result page
  [Arguments]    ${expected result}
  Wait Until Page Contains    ${expected result}