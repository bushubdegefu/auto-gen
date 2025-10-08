*** Settings ***
Library    SeleniumLibrary    run_on_failure=NOTHING
Library    SeleniumLibrary
Library    OperatingSystem
Library    Collections



Resource  ../keywords/ussd_keywords.robot


*** Variables ***
${LANGUAGE}      English
@{VALID_LANGUAGES}  English  Afan_Oromo  Somali  Amharic  Tigrigna



*** Test Cases ***
Verify Tele Voice Bundle Purchase - Airtime  - Daily - Buy once - 24 Min @ Br. 3
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc001  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC001    ${LANGUAGE}


*** Test Cases ***
Verify Tele Voice Bundle Purchase - Airtime  - Weekly - Autorenewal - 120 Min @ Br. 15
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc002  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC002    ${LANGUAGE}


*** Test Cases ***
Verify Tele Voice Bundle Purchase - Airtime  - Monthly - For a Gift - 300 Min@ Br. 50
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc003  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC003    ${LANGUAGE}


*** Test Cases ***
Verify Tele Voice Bundle Purchase - MPESA  - Daily - Buy once - 50 Min @ Br. 5
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc004  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC004    ${LANGUAGE}


*** Test Cases ***
Verify Tele Voice Bundle Purchase - MPESA  - Weekly - For a Gift - 200 Min @ Br. 25
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc005  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC005    ${LANGUAGE}


*** Test Cases ***
Verify Tele Voice Bundle Purchase - Airtime  - Daily - Buy once - 24 Min @ Br. 3 - Insufficient airtime Balance
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc006  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC006    ${LANGUAGE}


*** Test Cases ***
Verify Data Bundle Purchase​ - Airtime - Night - Buy once - 200 MB @ Br.3
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc007  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC007    ${LANGUAGE}


*** Test Cases ***
Verify Data Bundle Purchase​ - Airtime - Daily - Autorenewal - 150MB @ Br.5
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc008  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC008    ${LANGUAGE}


*** Test Cases ***
Verify Data Bundle Purchase - Airtime  - Weekly - For a Gift - 500 MB @ Br. 30 
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc009  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC009    ${LANGUAGE}


*** Test Cases ***
Verify Data Bundle Purchase - MPESA  -Monthly - Buy once - 1GB @ Br. 50
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc010  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC010    ${LANGUAGE}


*** Test Cases ***
Verify Data Bundle Purchase - MPESA  -Night - For a Gift - 300MB @ Br. 3
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc011  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC011    ${LANGUAGE}


*** Test Cases ***
Verify Data Bundle Purchase​ - Airtime - Night - Buy once - 200 MB @ Br.3 - Insufficient airtime balance
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc012  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC012    ${LANGUAGE}


*** Test Cases ***
Verify Unlimited Data Bundle Purchase - Airtime  - Weekly - @Br.600
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc013  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC013    ${LANGUAGE}


*** Test Cases ***
Verify Unlimited Data Bundle Purchase - MPESA  - Daily -  @Br.85 - For a Gift
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc014  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC014    ${LANGUAGE}


*** Test Cases ***
Verify Mega Data Bundle Purchase - Airtime  - 90 Days - Buy once - 200 GB @ Br. 3500
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc015  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC015    ${LANGUAGE}


*** Test Cases ***
Verify Mega Data Bundle Purchase - MPESA  - 30 Days - For a Gift - 100 GB @ Br. 1250
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc016  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC016    ${LANGUAGE}


*** Test Cases ***
Verify 4G WIFI Bundle Purchase - Airtime - Monthly - Autorenewal- 40 GB @ Br.1000 - paired number
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc017  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC017    ${LANGUAGE}


*** Test Cases ***
Verify 4G WIFI Bundle Purchase - Airtime - Monthly - Autorenewal - 100 GB @ Br.1500 - for Gift - +2517XXXXXXXX
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc018  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC018    ${LANGUAGE}


*** Test Cases ***
Verify all net SMS Bundle Purchase - Airtime  - Weekly - Autorenewal -  150 SMS @ Br. 10
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc019  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC019    ${LANGUAGE}


*** Test Cases ***
Verify all net SMS Bundle Purchase - Airtime  - Monthly - For a Gift - 600 SMS MB @ Br.35
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc020  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC020    ${LANGUAGE}


*** Test Cases ***
Verify all net SMS Bundle Purchase - MPESA  - Daily - Buy once - 40 SMS @ Br. 3
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc021  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC021    ${LANGUAGE}


*** Test Cases ***
Verify all net SMS Bundle Purchase - Airtime  - Monthly - For a Gift - 200 SMS MB @ Br.20 - Insufficient airtime balance
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc022  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC022    ${LANGUAGE}


*** Test Cases ***
Verify TIKTOK Bundle Purchase - Airtime - Buy once - Daily - 1GB @ Br.15 - Under Home Cateogry
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc023  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC023    ${LANGUAGE}


*** Test Cases ***
Verify Combo Bundle Purchase - MPESA - For a Gift - Daily - 4GB @ Br.30 - Under Internet Cateogry
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc024  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC024    ${LANGUAGE}


*** Test Cases ***
Verify Bundle Tele Voice unsubscription - Airtime  - Daily - Autorenewal - 24 Min @ Br. 3
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc025  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC025    ${LANGUAGE}


*** Test Cases ***
Verify Airtime Recharge - For Self - via voucher
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc026  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC026    ${LANGUAGE}


*** Test Cases ***
Verify Airtime Recharge - For Other - via MPESA
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc027  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC027    ${LANGUAGE}


*** Test Cases ***
Verify customer can borrow airtime using USSD - 5 birr
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc028  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC028    ${LANGUAGE}


*** Test Cases ***
Verify all net Voice Bundle Purchase - via Credit Limit  - Daily - Buy once - 12 Min + 10 SMS @ Br. 3
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc029  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC029    ${LANGUAGE}


*** Test Cases ***
Verify Data Bundle Purchase - via Credit Limit - Night - Buy once - 200 MB  @ Br.3
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc030  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC030    ${LANGUAGE}


*** Test Cases ***
Verify All net SMS Bundle Purchase - via Credit Limit  -Monthly - For a Gift - 200 SMS @ Br. 20
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc031  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC031    ${LANGUAGE}


*** Test Cases ***
Subscription via USSD - Tikvah News - News Category
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc032  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC032    ${LANGUAGE}


*** Test Cases ***
Verify all net Voice Bundle Purchase - MPESA  - Daily - Buy once - 12 Min  @ Br. 3
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc033  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC033    ${LANGUAGE}


*** Test Cases ***
Verify Check balance
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc034  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC034    ${LANGUAGE}


*** Test Cases ***
Verify Please Call Me
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc035  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC035    ${LANGUAGE}


*** Test Cases ***
Verify Friends and Family activation
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc036  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC036    ${LANGUAGE}


*** Test Cases ***
Verify activating data sharing and adding a beneficiary
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc037  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC037    ${LANGUAGE}


*** Test Cases ***
Verify airtime transfer
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc038  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC038    ${LANGUAGE}


*** Test Cases ***
Verify get PUK
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc039  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC039    ${LANGUAGE}


*** Test Cases ***
Verify International Calling rate
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc040  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC040    ${LANGUAGE}


*** Test Cases ***
Verify Roaming rate
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc041  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC041    ${LANGUAGE}


*** Test Cases ***
Verify Change language
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc042  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC042    ${LANGUAGE}


*** Test Cases ***
Verify Check My Number
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc043  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC043    ${LANGUAGE}


*** Test Cases ***
Verify Tele Voice Bundle Purchase - Airtime  - Montly - Buy once - 24 Min @ Br. 3
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc044  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC044    ${LANGUAGE}


*** Test Cases ***
Verify Tele Voice Bundle Purchase - Airtime  - Montly - For a Gift - 300 Min @ Br. 50
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc045  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC045    ${LANGUAGE}


*** Test Cases ***
Verify Tele Voice Bundle Purchase​ - Airtime - Montly - Autorenewal - 300 Min @ Br.50
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc046  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC046    ${LANGUAGE}


*** Test Cases ***
Verify Data Bundle Purchase​ - Airtime - montly - Buy once - 800 MB @ Br.50
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc047  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC047    ${LANGUAGE}


*** Test Cases ***
Verify Data Bundle Purchase​ - Airtime - Montly - Autorenewal - 150MB @ Br.50
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc048  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC048    ${LANGUAGE}


*** Test Cases ***
Verify  Data Bundle Purchase - Airtime  - Montly - For Gift - 800 MB @ Br. 50
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc049  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC049    ${LANGUAGE}


*** Test Cases ***
Verify Check Balance
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc050  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC050    ${LANGUAGE}


*** Test Cases ***
Verify International Call rate
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc051  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC051    ${LANGUAGE}


*** Test Cases ***
Verify Roaming Servies
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc052  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC052    ${LANGUAGE}


*** Test Cases ***
Verify Get PUK-Postpay
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc053  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC053    ${LANGUAGE}


*** Test Cases ***
Verify Change Language
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc054  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC054    ${LANGUAGE}


*** Test Cases ***
Verify Please Call Me
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc055  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC055    ${LANGUAGE}


*** Test Cases ***
Verify Check My Number
      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]    tc056  all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test    TC056    ${LANGUAGE}


*** Test Cases ***

      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]      all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test        ${LANGUAGE}


*** Test Cases ***

      [Setup]  Run Keywords    Execute Suite Setup as User   AND    Login To Smart Bridge and Go To Page
      [Teardown]  Close Browser
      [Documentation]    Tests USSD product purchase for a specific language and test case IDs
      [Tags]      all
      Log    ENV: ${ENV}    #level=TRACE
      Should Contain    ${VALID_LANGUAGES}    ${LANGUAGE}    Invalid language: ${LANGUAGE}. Valid options: ${VALID_LANGUAGES}
      Run Ussd Test        ${LANGUAGE}


