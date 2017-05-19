***Settings***
Library    Selenium2Library

***Valiables***


***Testcases***
Test Dialog
  Open Efiling Page
  Forget Password
  Set New Password
  Click OK
  Check Dialog
  Click Cancel from dialog
  Accept confirm dialog

***Keywords***
Open Efiling Page
  Open Browser    http://epit.rd.go.th/publish/index.php    browser=gc
Cancel from confirm dialog
Forget Password
  Click Element    xpath=//*[@id="box1"]/div[2]/ul/li[4]/a

Set New Password
  Click Element    xpath=//*[@id="form1"]/table[2]/tbody/tr[2]/td[2]/a

Click OK
  Click Element    xpath=//*[@id="bOK1"]

Check Dialog
  ${message}=    Get Alert Message
  Should Contain     ${message}    [E011]

Click Cancel from dialog
  Choose Cancel On Next Confirmation
  Click Element    xpath=//*[@id="bExit1"]
  Confirm Action

Accept confirm dialog
  Click Element    xpath=//*[@id="bExit1"]
  Confirm Action
