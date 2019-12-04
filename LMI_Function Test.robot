*** Settings ***
Library           Selenium2Library
Resource          User.robot

*** Test Cases ***
Long character test
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    Input text    name=cfg_device_name    !@-#$%^*()_+=?';:~|/1繁体おKh
    Input text    name=cfg_admin_username    @#$_-123AAAAbbbb
    Input text    name=cfg_admin_password    @#$_-123AAAAbbbb
    Input text    name=cfg_hostname    123456789aaaaaaaaaaaabbbbbbbbbbbbCCCCCCCCCCDDDDDDDDDDFFFFFFFFFF
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    65
    Close Browser
    Chrome_login    @#$_-123AAAAbbbb    @#$_-123AAAAbbbb
    Textfield value should be    name=cfg_device_name    !@-#$%^*()_+=?';:~|/1繁体おKh
    Textfield value should be    name=cfg_admin_username    @#$_-123AAAAbbbb
    Textfield value should be    name=cfg_hostname    123456789aaaaaaaaaaaabbbbbbbbbbbbCCCCCCCCCCDDDDDDDDDDFFFFFFFFFF
    click element    class=lang_network_settings
    Input text    name=cfg_ethernet_network_name    123AAAAAAbbbbb_-
    Select From List By Value    cfg_wired_authentication_type    2
    Input text    name=cfg_wired_radius_identity    @_.-12AAABBBcccdddeeeAAAAAbbbbbbbIIJJJJJiiiiiiiYYYYYYYYYYYYYYYYYYGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGggggggggggggggggggggggggggggggg
    Input text    name=cfg_wired_security_key    !@#$%^*()_+-/*-;:?,.~123AAAABBBBBCCCCCGGGGGGGGGGGGGGGGGGGGGGGGG
    Input text    name=cfg_wa_network_name    =@#%*-+/*.?;~:/,123AAAAAAbbbbbCCCCCCCBBBBBBGGGGGGGGGGGGGGGGGGGGG
    Select From List By Value    name=cfg_wa_security_type    5
    Input text    name=cfg_wa_radius_identity    @_.-12AAABBBcccdddeeeAAAAAbbbbbbbIIJJJJJiiiiiiiYYYYYYYYYYYYYYYYYYGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGggggggggggggggggggggggggggggggg
    Input text    name=cfg_wa_security_key    !@#$%^&*()_-+=/*\|][{}'";:?.,`~123AAADDDDDGGGGGcccccfffffggggggg
    sleep    1
    Click button    name=save_local_management    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Textfield value should be    name=cfg_ethernet_network_name    123AAAAAAbbbbb_-
    Textfield value should be    name=cfg_wired_radius_identity    @_.-12AAABBBcccdddeeeAAAAAbbbbbbbIIJJJJJiiiiiiiYYYYYYYYYYYYYYYYYYGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGggggggggggggggggggggggggggggggg
    Textfield value should be    name=cfg_wired_security_key    !@#$%^*()_+-/*-;:?,.~123AAAABBBBBCCCCCGGGGGGGGGGGGGGGGGGGGGGGGG
    Textfield value should be    name=cfg_wa_network_name    =@#%*-+/*.?;~:/,123AAAAAAbbbbbCCCCCCCBBBBBBGGGGGGGGGGGGGGGGGGGGG
    Textfield value should be    name=cfg_wa_radius_identity    @_.-12AAABBBcccdddeeeAAAAAbbbbbbbIIJJJJJiiiiiiiYYYYYYYYYYYYYYYYYYGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGggggggggggggggggggggggggggggggg
    Textfield value should be    name=cfg_wa_security_key    !@#$%^&*()_-+=/*\|][{}'";:?.,`~123AAADDDDDGGGGGcccccfffffggggggg
    click element    class=lang_local_ap_settings
    Click button    id=cfg_ap_ssid_enable1_on    #Local Wifi = Enable
    Input text    id=cfg_ap_wifi_name1    ~`!@#$%^&*()_-+=/*\|'":;?/.,1aWW    #Wireless Network Name
    Select From List By Value    name=cfg_ap_security_type1    3    #Wireless Security Type = PSK
    Input text    id=cfg_ap_password1    !@#$%^&*()_-12233AAAGGGGGGBBBBVVHHHHHHHHHHHHHHHHHHHHHHHHHHHHHgg    #Password Phrase
    Click button    name=save_local_ap    #Apply Settings
    sleep    2
    Alert Should Be Present
    sleep    65
    Close Browser
    Chrome_login    @#$_-123AAAAbbbb    @#$_-123AAAAbbbb
    Textfield value should be    id=cfg_ap_wifi_name1    ~`!@#$%^&*()_-+=/*\|'":;?/.,1aWW
    Textfield value should be    id=cfg_ap_password1    !@#$%^&*()_-12233AAAGGGGGGBBBBVVHHHHHHHHHHHHHHHHHHHHHHHHHHHHHgg
    click element    class=lang_remote_management
    Input text    name=cfg_cms_ip_addr    123AAAAABBBBQQQQQQQQddddgggggggghhhhhhhgggggggggghhhhhhhjjjjjjj    #CMS IP
    Click button    name=save_remote_management    #Apply Settings
    sleep    2
    Alert Should Be Present
    sleep    1
    Textfield value should be    name=cfg_cms_ip_addr    123AAAAABBBBQQQQQQQQddddgggggggghhhhhhhgggggggggghhhhhhhjjjjjjj
    Close Browser

Device Name Test
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    Input text    name=cfg_device_name    039 Classroom
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    GetRXData
    Page should contain    "cfg_device_name":"039 Classroom",
    Close Browser
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    Input text    name=cfg_device_name    1qaz2wsx@#$
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    GetRXData
    Page should contain    "cfg_device_name":"1qaz2wsx@#$ ",
    Close Browser

Administrator name_pwd Test
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    Input text    name=cfg_admin_username    12345AbcD@#$
    Input text    name=cfg_admin_password    12345aBCd@#$
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Click link    xpath=/html/body/div[1]/div/a    #logout
    sleep    2
    Input text    id=name    12345AbcD@#$
    Input text    id=passwd    12345aBCd@#$
    Click element    id=login
    sleep    1
    Textfield value should be    name=cfg_admin_username    12345AbcD@#$
    Input text    name=cfg_admin_username    ${AdministratorName}
    Input text    name=cfg_admin_password    ${AdministratorPassword}
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Click link    xpath=/html/body/div[1]/div/a    #logout
    Close Browser

RX Language Test
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    Select From List By Value    name=cfg_tv_language    zhcs
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    GetRXData
    Page should contain    "cfg_tv_language":"zhcs",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_tv_language    zhct
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    GetRXData
    Page should contain    "cfg_tv_language":"zhct",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_tv_language    ja
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    GetRXData
    Page should contain    "cfg_tv_language":"ja",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_tv_language    fr
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    GetRXData
    Page should contain    "cfg_tv_language":"fr",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_tv_language    ge
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    GetRXData
    Page should contain    "cfg_tv_language":"ge",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_tv_language    du
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    GetRXData
    Page should contain    "cfg_tv_language":"du",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_tv_language    ko
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    GetRXData
    Page should contain    "cfg_tv_language":"ko",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_tv_language    sp
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    GetRXData
    Page should contain    "cfg_tv_language":"sp",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_tv_language    it
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    GetRXData
    Page should contain    "cfg_tv_language":"it",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_tv_language    ru
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    GetRXData
    Page should contain    "cfg_tv_language":"ru",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_tv_language    en
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    GetRXData
    Page should contain    "cfg_tv_language":"en",
    Close Browser

Host Name Test
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    Input text    name=cfg_hostname    Aa1Bb2Cc3Dd4Ee5Ff6Gg7Hh8Ii9Jj0KkLlMmNnOoPpQqRrSsT
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    70
    Close Browser
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    Textfield value should be    name=cfg_hostname    Aa1Bb2Cc3Dd4Ee5Ff6Gg7Hh8Ii9Jj0KkLlMmNnOoPpQqRrSsT
    GetRXData
    Page should contain    "cfg_hostname":"Aa1Bb2Cc3Dd4Ee5Ff6Gg7Hh8Ii9Jj0KkLlMmNnOoPpQqRrSsT",
    Go Back
    sleep    1
    Input text    name=cfg_hostname    1Aa2Bb3Cc4Dd5Ee6Ff7Gg8Hh9Ii0JjKkLlMmNnOoPpQqRrSsT
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    70
    Close Browser
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    Textfield value should be    name=cfg_hostname    1Aa2Bb3Cc4Dd5Ee6Ff7Gg8Hh9Ii0JjKkLlMmNnOoPpQqRrSsT
    GetRXData
    Page should contain    "cfg_hostname":"1Aa2Bb3Cc4Dd5Ee6Ff7Gg8Hh9Ii0JjKkLlMmNnOoPpQqRrSsT",
    Go Back
    sleep    1
    Input text    name=cfg_hostname    aA1bB2cCdDeEfFgGHhIiJjKkLlMmNnOoPpQqRr1Ss2Tt3Uu4Vv5Ww6Xx7Yy8Zz9
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    70
    Close Browser
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    Textfield value should be    name=cfg_hostname    aA1bB2cCdDeEfFgGHhIiJjKkLlMmNnOoPpQqRr1Ss2Tt3Uu4Vv5Ww6Xx7Yy8Zz9
    GetRXData
    Page should contain    "cfg_hostname":"aA1bB2cCdDeEfFgGHhIiJjKkLlMmNnOoPpQqRr1Ss2Tt3Uu4Vv5Ww6Xx7Yy8Zz9",
    Go Back
    sleep    1
    Input text    name=cfg_hostname    1
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    70
    Close Browser
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    Textfield value should be    name=cfg_hostname    1
    GetRXData
    Page should contain    "cfg_hostname":"1",
    Go Back
    sleep    1
    Input text    name=cfg_hostname    A
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    70
    Close Browser
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    Textfield value should be    name=cfg_hostname    A
    GetRXData
    Page should contain    "cfg_hostname":"A",
    Go Back
    sleep    1
    Input text    name=cfg_hostname    a
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    70
    Close Browser
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    Textfield value should be    name=cfg_hostname    a
    GetRXData
    Page should contain    "cfg_hostname":"a",
    Close Browser

Time Zone Test
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    Select From List By Value    name=cfg_timezone_item    0
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"0",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    1
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"1",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    2
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"2",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    3
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"3",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    4
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"4",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    5
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"5",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    6
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"6",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    7
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"7",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    8
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"8",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    9
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"9",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    10
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"10",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    11
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"11",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    12
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"12",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    13
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"13",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    14
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"14",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    15
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"15",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    16
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"16",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    17
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"17",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    18
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"18",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    19
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"19",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    20
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"20",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    21
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"21",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    22
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"22",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    23
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"23",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    24
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"24",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    25
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"25",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    26
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"26",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    27
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"27",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    28
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"28",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    29
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"29",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    30
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"30",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    31
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"31",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    32
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"32",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    33
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"33",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    34
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"34",
    Go Back
    sleep    1
    Select From List By Value    name=cfg_timezone_item    35
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_timezone_item":"35",
    Close Browser

P2P Operation Channel Test
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    click element    class=lang_features
    sleep    1
    Select From List By Value    name=cfg_channel    40
    sleep    1
    Click button    name=save_2    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    70
    Close Browser
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_channel":"40",
    Page should contain    "cfg_ap_channel_number":"40",
    Go Back
    sleep    1
    click element    class=lang_features
    Select From List By Value    name=cfg_channel    44
    sleep    1
    Click button    name=save_2    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    70
    Close Browser
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_channel":"44",
    Page should contain    "cfg_ap_channel_number":"44",
    Go Back
    sleep    1
    click element    class=lang_features
    Select From List By Value    name=cfg_channel    48
    sleep    1
    Click button    name=save_2    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    70
    Close Browser
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_channel":"48",
    Page should contain    "cfg_ap_channel_number":"48",
    Go Back
    sleep    1
    click element    class=lang_features
    Select From List By Value    name=cfg_channel    153
    sleep    1
    Click button    name=save_2    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    70
    Close Browser
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_channel":"153",
    Page should contain    "cfg_ap_channel_number":"153",
    Go Back
    sleep    1
    click element    class=lang_features
    Select From List By Value    name=cfg_channel    157
    sleep    1
    Click button    name=save_2    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    70
    Close Browser
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_channel":"157",
    Page should contain    "cfg_ap_channel_number":"157",
    Go Back
    sleep    1
    click element    class=lang_features
    Select From List By Value    name=cfg_channel    161
    sleep    1
    Click button    name=save_2    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    70
    Close Browser
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_channel":"161",
    Page should contain    "cfg_ap_channel_number":"161",
    Go Back
    sleep    1
    click element    class=lang_features
    Select From List By Value    name=cfg_channel    165
    sleep    1
    Click button    name=save_2    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    70
    Close Browser
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_channel":"165",
    Page should contain    "cfg_ap_channel_number":"165",
    Go Back
    sleep    1
    click element    class=lang_features
    Select From List By Value    name=cfg_channel    36
    sleep    1
    Click button    name=save_2    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    70
    Close Browser
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_channel":"36",
    Page should contain    "cfg_ap_channel_number":"36",
    Close Browser

Random 8 PIN Test
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    click element    class=lang_features
    sleep    1
    Click button    id=cfg_force_pin_on    # Force PIN Pairing is On
    Select From List By Value    id=cfg_4digit_pin    0    #PIN length = 8
    sleep    1
    Click button    id=cfg_generate_pin_off    #PIN Generation Method = Static PIN
    sleep    1
    ${random_number}    evaluate    random.randint(0000000,9999999)    random
    Input text    name=cfg_pin_code    ${random_number}    #PIN Display Period
    sleep    5
    Click button    name=save_2    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    70
    Login    ${AdministratorName}    ${AdministratorPassword}
    click element    class=lang_features
    ${random_number_string}    convert to string    ${random_number}
    Textfield value should be    name=cfg_pin_code    ${random_number_string}
    GetRXData
    ${random_verify}    catenate    SEPARATOR=    "cfg_pin_code":"    ${random_number}    ",
    Page should contain    ${random_verify}
    Go Back
    sleep    1
    click element    class=lang_features
    sleep    1
    ${random_number1}    evaluate    random.randint(0000000,9999999)    random
    Input text    name=cfg_pin_code    ${random_number1}    #PIN Display Period
    sleep    5
    Click button    name=save_2    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    70
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    ${random_verify1}    catenate    SEPARATOR=    "cfg_pin_code":"    ${random_number1}    ",
    Page should contain    ${random_verify1}
    Close Browser

Random 4 PIN Test
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    click element    class=lang_features
    sleep    1
    Click button    id=cfg_force_pin_on    # Force PIN Pairing is On
    Select From List By Value    id=cfg_4digit_pin    1    #PIN length = 4
    sleep    1
    Click button    id=cfg_generate_pin_off    #PIN Generation Method = Static PIN
    sleep    1
    ${random_number}    evaluate    random.randint(0000,9999)    random
    Input text    name=cfg_pin_code    ${random_number}    #PIN Display Period
    sleep    5
    Click button    name=save_2    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    70
    Login    ${AdministratorName}    ${AdministratorPassword}
    click element    class=lang_features
    ${random_number_string}    convert to string    ${random_number}
    Textfield value should be    name=cfg_pin_code    ${random_number_string}
    GetRXData
    ${random_verify}    catenate    SEPARATOR=    "cfg_pin_code":"    ${random_number}    ",
    Page should contain    ${random_verify}
    Go Back
    sleep    1
    click element    class=lang_features
    sleep    1
    ${random_number1}    evaluate    random.randint(0000,9999)    random
    Input text    name=cfg_pin_code    ${random_number1}    #PIN Display Period
    sleep    5
    Click button    name=save_2    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    70
    Login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    ${random_verify1}    catenate    SEPARATOR=    "cfg_pin_code":"    ${random_number1}    ",
    Page should contain    ${random_verify1}
    Close Browser

PIN Display Period Test
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    click element    class=lang_features
    sleep    1
    Click button    id=cfg_force_pin_on    # Force PIN Pairing is On
    Input text    name=cfg_pin_display_period    30    #PIN Display Period
    sleep    1
    Click button    name=save_2    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Textfield value should be    name=cfg_pin_display_period    30
    GetRXData
    Page should contain    "cfg_pin_display_period":"30",
    Go Back
    sleep    1
    Input text    name=cfg_pin_display_period    120    #PIN Display Period
    sleep    1
    Click button    name=save_2    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    Textfield value should be    name=cfg_pin_display_period    120
    GetRXData
    Page should contain    "cfg_pin_display_period":"120",
    Go Back
    sleep    1
    ${random_number}    evaluate    random.randint(30,120)    random
    Input text    name=cfg_pin_display_period    ${random_number}    #PIN Display Period
    sleep    1
    Click button    name=save_2    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    1
    GetRXData
    ${random_verify}    catenate    SEPARATOR=    "cfg_pin_display_period":"    ${random_number}    ",
    Page should contain    ${random_verify}
    Close Browser

GetRandomPIN
    [Documentation]    Get RandomPIN for 4 bit or 7 bit.
    CreateRandomPIN    4
