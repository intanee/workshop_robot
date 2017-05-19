***Settings***
Resource          resources/shareloginfail.robot
Library           Selenium2Library
Suite Setup       Open browser to login page
Suite Teardown    Close Browser
Test Teardown     Go back to login page
Test Template     Login workflow


***Testcases***                   Username       Password
Missing username                  ${Empty}       mode
Missing password                  demo           ${Empty}
Missing username and password     ${Empty}       ${Empty}
Wrong username                    username       mode
Wrong password                    demo           password
Wrong username and password       username       password
