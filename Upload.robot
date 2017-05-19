***Settings***
Library    Selenium2Library

***Variables***

***Testcases***
Upload File
  Open Upload Page
  Choose 2 Single File
  #Remove Single File
  Count number of upload file
  Upload All Files
  Upload all files completed



***Keywords***
Open Upload Page
  Open Browser    http://nervgh.github.io/pages/angular-file-upload/examples/simple/    browser=gc
  Element Should Be Disabled    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/div/button[1]

Choose 2 Single File
  Choose File    xpath=//*[@id="ng-app"]/body/div/div[2]/div[1]/input[2]    d:/robotframework/screenshot_1.jpg
  Choose File    xpath=//*[@id="ng-app"]/body/div/div[2]/div[1]/input[2]    d:/robotframework/screenshot_2.jpg

Count number of upload file
  Wait Until Element Contains    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/p    Queue length: 2
  Xpath Should Match X Times    //*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr    2
  Table Cell Should Contain    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/table    2    1    screenshot_1.jpg
  Table Cell Should Contain    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/table    3    1    screenshot_2.jpg

  #${text1}=    Get Text    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr[1]/td[1]/strong
  #Log    ${text1}
  #${text2}=    Get Text    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr[2]/td[1]/strong
  #Log    ${text2}

Upload All Files
  Element Should Be Enabled    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/div/button[1]
  Click Element    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/div/button[1]

Upload all files completed
  Wait Until Page Contains Element  xpath=//div[@style="width: 100%;"]

Remove Single File
  Click Element    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr[1]/td[5]/button[3]
  Click Element    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr/td[5]/button[3]