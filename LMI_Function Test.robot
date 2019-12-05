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

Quick Switch Test
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    click element    class=lang_features
    sleep    1
    Select From List By Value    id=cfg_force_disconn    1    #Quick Swirch
    sleep    1
    Click button    id=cfg_show_rx_name_notshow    #Show Receiver Name = Don't show
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    id=cfg_force_disconn    1
    GetRXData
    Page should contain    "cfg_force_disconn":"1",
    Page should contain    "cfg_show_rx_name":"2",
    Go Back
    Click button    id=cfg_show_rx_name_always    #Show Receiver Name = Always
    Select From List By Value    name=cfg_rx_name_placement    1    #Receiver Name Placement = Bottom Right
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    name=cfg_rx_name_placement    1
    GetRXData
    Page should contain    "cfg_show_rx_name":"0",
    Page should contain    "cfg_rx_name_placement":"1",
    Go Back
    Select From List By Value    name=cfg_rx_name_placement    2    #Receiver Name Placement = Bottom Center
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    name=cfg_rx_name_placement    2
    GetRXData
    Page should contain    "cfg_rx_name_placement":"2",
    Go Back
    Select From List By Value    name=cfg_rx_name_placement    3    #Receiver Name Placement = Upper Left
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    name=cfg_rx_name_placement    3
    GetRXData
    Page should contain    "cfg_rx_name_placement":"3",
    Go Back
    Select From List By Value    name=cfg_rx_name_placement    4    #Receiver Name Placement = Upper Right
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    name=cfg_rx_name_placement    4
    GetRXData
    Page should contain    "cfg_rx_name_placement":"4",
    Go Back
    Select From List By Value    name=cfg_rx_name_placement    5    #Receiver Name Placement = Upper Center
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    name=cfg_rx_name_placement    5
    GetRXData
    Page should contain    "cfg_rx_name_placement":"5",
    Go Back
    Select From List By Value    name=cfg_rx_name_placement    1    #Receiver Name Placement = Bottom Left
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    name=cfg_rx_name_placement    1
    GetRXData
    Page should contain    "cfg_rx_name_placement":"1",
    Go Back
    Close Browser

HDMI/VGA Port Power Management waiting time
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    click element    class=lang_features
    sleep    1
    Select From List By Value    name=cfg_display_off_type    1    #DMI/VGA Port Power Management = Screen Saver
    sleep    1
    Input text    name=cfg_display_off_timeout    1
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    Textfield value should be    name=cfg_display_off_timeout    1
    GetRXData
    Page should contain    "cfg_display_off_timeout":"1",
    Go Back
    Input text    name=cfg_display_off_timeout    9999
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    Textfield value should be    name=cfg_display_off_timeout    9999
    GetRXData
    Page should contain    "cfg_display_off_timeout":"9999",
    Go Back
    ${random_number}    evaluate    random.randint(1,9999)    random
    Input text    name=cfg_display_off_timeout    ${random_number}
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    ${random_number_string}    convert to string    ${random_number}
    Textfield value should be    name=cfg_display_off_timeout    ${random_number_string}
    GetRXData
    ${random_verify}    catenate    SEPARATOR=    "cfg_display_off_timeout":"    ${random_number}    ",
    Page should contain    ${random_verify}
    Close Browser

Adjust TV Screen Size
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    click element    class=lang_features
    sleep    1
    Select From List By Value    id=cfg_overscan    24    #Adjust TV Screen Size =1
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    id=cfg_overscan    24
    GetRXData
    Page should contain    "cfg_overscan":"24",
    Go Back
    Select From List By Value    id=cfg_overscan    23    #Adjust TV Screen Size =2
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    id=cfg_overscan    23
    GetRXData
    Page should contain    "cfg_overscan":"23",
    Go Back
    Select From List By Value    id=cfg_overscan    22    #Adjust TV Screen Size =3
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    id=cfg_overscan    22
    GetRXData
    Page should contain    "cfg_overscan":"22",
    Go Back
    Select From List By Value    id=cfg_overscan    21    #Adjust TV Screen Size =4
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    id=cfg_overscan    21
    GetRXData
    Page should contain    "cfg_overscan":"21",
    Go Back
    Select From List By Value    id=cfg_overscan    20    #Adjust TV Screen Size =5
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    id=cfg_overscan    20
    GetRXData
    Page should contain    "cfg_overscan":"20",
    Go Back
    Select From List By Value    id=cfg_overscan    19    #Adjust TV Screen Size =6
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    id=cfg_overscan    19
    GetRXData
    Page should contain    "cfg_overscan":"19",
    Go Back
    Select From List By Value    id=cfg_overscan    18    #Adjust TV Screen Size =7
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    id=cfg_overscan    18
    GetRXData
    Page should contain    "cfg_overscan":"18",
    Go Back
    Select From List By Value    id=cfg_overscan    17    #Adjust TV Screen Size =8
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    id=cfg_overscan    17
    GetRXData
    Page should contain    "cfg_overscan":"17",
    Go Back
    Select From List By Value    id=cfg_overscan    16    #Adjust TV Screen Size =9
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    id=cfg_overscan    16
    GetRXData
    Page should contain    "cfg_overscan":"16",
    Go Back
    Select From List By Value    id=cfg_overscan    15    #Adjust TV Screen Size =10
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    id=cfg_overscan    15
    GetRXData
    Page should contain    "cfg_overscan":"15",
    Go Back
    Select From List By Value    id=cfg_overscan    14    #Adjust TV Screen Size =11
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    id=cfg_overscan    14
    GetRXData
    Page should contain    "cfg_overscan":"14",
    Go Back
    Select From List By Value    id=cfg_overscan    13    #Adjust TV Screen Size =12
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    id=cfg_overscan    13
    GetRXData
    Page should contain    "cfg_overscan":"13",
    Go Back
    Select From List By Value    id=cfg_overscan    12    #Adjust TV Screen Size =13
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    id=cfg_overscan    12
    GetRXData
    Page should contain    "cfg_overscan":"12",
    Go Back
    Select From List By Value    id=cfg_overscan    11    #Adjust TV Screen Size =14
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    id=cfg_overscan    11
    GetRXData
    Page should contain    "cfg_overscan":"11",
    Go Back
    Select From List By Value    id=cfg_overscan    10    #Adjust TV Screen Size =15
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    id=cfg_overscan    10
    GetRXData
    Page should contain    "cfg_overscan":"10",
    Go Back
    Select From List By Value    id=cfg_overscan    9    #Adjust TV Screen Size =16
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    id=cfg_overscan    9
    GetRXData
    Page should contain    "cfg_overscan":"9",
    Go Back
    Select From List By Value    id=cfg_overscan    8    #Adjust TV Screen Size =17
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    id=cfg_overscan    8
    GetRXData
    Page should contain    "cfg_overscan":"8",
    Go Back
    Select From List By Value    id=cfg_overscan    7    #Adjust TV Screen Size =18
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    id=cfg_overscan    7
    GetRXData
    Page should contain    "cfg_overscan":"7",
    Go Back
    Select From List By Value    id=cfg_overscan    6    #Adjust TV Screen Size =19
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    id=cfg_overscan    6
    GetRXData
    Page should contain    "cfg_overscan":"6",
    Go Back
    Select From List By Value    id=cfg_overscan    5    #Adjust TV Screen Size =20
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    id=cfg_overscan    5
    GetRXData
    Page should contain    "cfg_overscan":"5",
    Go Back
    Select From List By Value    id=cfg_overscan    4    #Adjust TV Screen Size =21
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    id=cfg_overscan    4
    GetRXData
    Page should contain    "cfg_overscan":"4",
    Go Back
    Select From List By Value    id=cfg_overscan    3    #Adjust TV Screen Size =22
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    id=cfg_overscan    3
    GetRXData
    Page should contain    "cfg_overscan":"3",
    Go Back
    Select From List By Value    id=cfg_overscan    2    #Adjust TV Screen Size =23
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    id=cfg_overscan    2
    GetRXData
    Page should contain    "cfg_overscan":"2",
    Go Back
    Select From List By Value    id=cfg_overscan    1    #Adjust TV Screen Size =24
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    id=cfg_overscan    1
    GetRXData
    Page should contain    "cfg_overscan":"1",
    Go Back
    Select From List By Value    id=cfg_overscan    0    #Adjust TV Screen Size =25
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    id=cfg_overscan    0
    GetRXData
    Page should contain    "cfg_overscan":"0",
    Go Back
    Select From List By Value    id=cfg_overscan    25    #Adjust TV Screen Size =0
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    List Selection Should Be    id=cfg_overscan    25
    GetRXData
    Page should contain    "cfg_overscan":"25",
    Close Browser

Auto-reboot receiver
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    click element    class=lang_features
    sleep    1
    Select From List By Value    id=cfg_reboot_time    6    #Auto-reboot receiver when idle for = 6hr
    sleep    1
    Click button    name=save_2    #Apply Settings
    sleep    1
    Alert Should Be Present
    List Selection Should Be    id=cfg_reboot_time    6
    GetRXData
    Page should contain    "cfg_reboot_time":"6",
    Go Back
    sleep    1
    Select From List By Value    id=cfg_reboot_time    8    #Auto-reboot receiver when idle for = 8hr
    sleep    1
    Click button    name=save_2    #Apply Settings
    sleep    1
    Alert Should Be Present
    List Selection Should Be    id=cfg_reboot_time    8
    GetRXData
    Page should contain    "cfg_reboot_time":"8",
    Go Back
    sleep    1
    Select From List By Value    id=cfg_reboot_time    10    #Auto-reboot receiver when idle for = 10hr
    sleep    1
    Click button    name=save_2    #Apply Settings
    sleep    1
    Alert Should Be Present
    List Selection Should Be    id=cfg_reboot_time    10
    GetRXData
    Page should contain    "cfg_reboot_time":"10",
    Go Back
    sleep    1
    Select From List By Value    id=cfg_reboot_time    12    #Auto-reboot receiver when idle for = 12hr
    sleep    1
    Click button    name=save_2    #Apply Settings
    sleep    1
    Alert Should Be Present
    List Selection Should Be    id=cfg_reboot_time    12
    GetRXData
    Page should contain    "cfg_reboot_time":"12",
    Go Back
    sleep    1
    Select From List By Value    id=cfg_reboot_time    24    #Auto-reboot receiver when idle for = 24hr
    sleep    1
    Click button    name=save_2    #Apply Settings
    sleep    1
    Alert Should Be Present
    List Selection Should Be    id=cfg_reboot_time    24
    GetRXData
    Page should contain    "cfg_reboot_time":"24",
    Go Back
    sleep    1
    Select From List By Value    id=cfg_reboot_time    0    #Auto-reboot receiver when idle for = Never
    sleep    1
    Click button    name=save_2    #Apply Settings
    sleep    1
    Alert Should Be Present
    List Selection Should Be    id=cfg_reboot_time    0
    GetRXData
    Page should contain    "cfg_reboot_time":"0",
    Go Back
