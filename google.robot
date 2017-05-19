***Settings***
Library    Selenium2Library
Test Teardown    Close Browser
#Suite Teardown    Close Browser
#Suite Setup    xxxx
#Test Teardown    Close Browser
#Test Setup    xxxx


***Variables***
${BASEURL}    http://www.google.com
${BROWSER}    gc

***Testcases***
Search robot
  Open browser to open google.com
  #Fill in robot
  Fill in data    robot
  Press Enter
  #Found robot in result page
  Found data in result page    Robot - Wikipedia
  #Close Browser

Search python
  [Tags]    testing
  Open browser to open google.com
  #Fill in python
  Fill in data    python
  Press Enter
  #Found python in result page
  Found data in result page    Welcome to Python.org
  #Close Browser


***Keywords***
Open browser to open google.com
  Open Browser    ${BASEURL}    browser=${BROWSER}
Fill in robot
  Input Text    name=q    robot
Fill in python
  Input Text    name=q    python
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
