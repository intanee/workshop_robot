***Settings***
Library    Selenium2Library
Library    Screenshot
Test Teardown    Close Browser

***Variables***
${BASEURL}    https://www.facebook.com/
${BROWSER}    gc

***Testcases***
Invalid Email Address
  Open facebook
  Fill in Name and Surname
  Fill in Email Address
  ReFill in Email Address
  Fill in Password
  Fill in birthdate
  Fill in gender
  Click create account
  User should see error message

***Keywords***
Open facebook
  Open Browser    ${BASEURL}    browser=${BROWSER}

Fill in Name and Surname
  Input text    name=firstname    Peter
  Input text    name=lastname     Thailand
  Take Screenshot

Fill in Email Address
  Input text    name=reg_email__    preeda.intanee@gmor.aaa
  Take Screenshot
  Take Screenshot

ReFill in Email Address
  Input text    name=reg_email_confirmation__    preeda.intanee@gmor.aaa
  Take Screenshot

Fill in Password
  Input text    name=reg_passwd__    password00
  Take Screenshot

Fill in birthdate
  Select From List By Value    name=birthday_day    1
  Select From List By Value    name=birthday_month    1
  Select From List By Value    name=birthday_year    1976

Fill in gender
  Select Radio Button    sex    2
  Take Screenshot

Click create account
  Click Element    name=websubmit
  Take Screenshot

User should see error message
  Wait Until Element Is Visible    id=reg_error_inner
  ${text}=    Get Text    id=reg_error_inner
  Log    ${text}
  Should Be Equal    ${text}    ดูเหมือนว่าคุณอาจป้อนที่อยู่อีเมลที่ไม่ถูกต้อง โปรดแก้ไข จากนั้นคลิกเพื่อดำเนินการต่อ
  Take Screenshot

  #Wait Until Element Contains    id=reg_error_inner    โปรดเลือกรหัสผ่านที่ปลอดภัยกว่านี้ รหัสผ่านควรมีความยาว 6 อักขระขึ้นไป และเป็นรหัสที่คุณจดจำได้ง่ายแต่คนอื่นคาดเดาได้ยาก
