*** Variables ***
${Eth_addr}       192.168.100.110
${Wireless_static_addr}    192.168.100.199
${LMI_Modify_Port}    65534
${Wireless_LAN_Name}    TPLINK_5G
${Wireless_Wide_Name}    3100-5G
${Wireless LAN_Password}    shenzhen2013
${Wireless_Wide_Password}    shenzhen2013
${AdministratorName}    1
${AdministratorPassword}    1
${Eth_addr_3th}    100
${Wireless_addr_3th}    100

*** Keywords ***
Edge_login
    Open browser    https://192.168.100.112    edge
    Click element    id=moreInformationDropdownSpan
    Click element    id=invalidcert_continue
    sleep    5
    Input text    id=name    Administrator
    Input text    id=passwd    screenbeam
    Click element    id=login
    sleep    5

Chrome_login
    [Arguments]    ${name}    ${passwd}
    ${Web_Eth_IP}    catenate    SEPARATOR=    https://    ${Eth_addr}
    Open browser    ${Web_Eth_IP}    chrome
    wait for condition    return document.title == "Login"
    sleep    2
    Input text    id=name    ${name}
    Input text    id=passwd    ${passwd}
    Click element    id=login
    sleep    5

GetRXData
    sleep    2
    ${Web_Eth_IP_Getdata}    catenate    SEPARATOR=    https://    ${Eth_addr}    /cgi-bin/ajax.cgi?action=get_cfg
    go to    ${Web_Eth_IP_Getdata}
    sleep    1.5
    ${data}    get text    xpath=/html/body/pre
    log    ${data}

Chrome_login_Network2
    [Arguments]    ${name}    ${passwd}
    ${Wireless_static_addr}    catenate    SEPARATOR=    https://    ${Wireless_static_addr}
    Open browser    ${Wireless_static_addr}    chrome
    sleep    5
    Input text    id=name    ${name}
    Input text    id=passwd    ${passwd}
    Click element    id=login
    sleep    5

GetRXData_Network2
    sleep    2
    ${Web_Wireless_IP_Getdata}    catenate    SEPARATOR=    https://    ${Wireless_static_addr}    /cgi-bin/ajax.cgi?action=get_cfg
    go to    ${Web_Wireless_IP_Getdata}
    sleep    1.5
    ${data}    get text    xpath=/html/body/pre
    log    ${data}

Chrome_login_Management Access2
    [Arguments]    ${name}    ${passwd}
    ${Wireless_ModifyPort_addr}    catenate    SEPARATOR=    https://    ${Eth_addr}    :    ${LMI_Modify_Port}
    Open browser    ${Wireless_ModifyPort_addr}    chrome
    sleep    5
    Input text    id=name    ${name}
    Input text    id=passwd    ${passwd}
    Click element    id=login
    sleep    5

GetRXData_Management Access2
    sleep    2
    ${Web_Wireless_ModifyPort_Getdata}    catenate    SEPARATOR=    https://    ${Eth_addr}    :    ${LMI_Modify_Port}
    ...    /cgi-bin/ajax.cgi?action=get_cfg
    go to    ${Web_Wireless_ModifyPort_Getdata}
    ${data}    get text    xpath=/html/body/pre
    log    ${data}

GoToAdvanced
    sleep    1
    ${Web_Eth_IP_Advanced}    catenate    SEPARATOR=    https://    ${Eth_addr}    /cgi-bin/advanced.cgi
    go to    ${Web_Eth_IP_Advanced}

Verify_Network1
    Chrome_login_Network2    1    1
    Textfield value should be    name=cfg_wired_radius_identity    ScreenBeam_Auto-Test
    Textfield value should be    name=cfg_ethernet_network_name    Network_AutoTest
    Textfield value should be    name=cfg_wired_security_key    ScreenBeam_Password123
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[15]/div[2]/div/div[1]/input    192    #Ethernet IP Address
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[15]/div[2]/div/div[3]/input    168
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[15]/div[2]/div/div[5]/input    100
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[15]/div[2]/div/div[7]/input    195
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[16]/div[2]/div/div[1]/input    255    #Ethernet Subnet Mask
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[16]/div[2]/div/div[3]/input    255
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[16]/div[2]/div/div[5]/input    255
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[16]/div[2]/div/div[7]/input    0
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[17]/div[2]/div/div[1]/input    192    #Ethernet Getway
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[17]/div[2]/div/div[3]/input    168
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[17]/div[2]/div/div[5]/input    100
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[17]/div[2]/div/div[7]/input    1
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[19]/div[2]/div/div[1]/input    202    #Ethernet Primary DNS Server
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[19]/div[2]/div/div[3]/input    96
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[19]/div[2]/div/div[5]/input    134
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[19]/div[2]/div/div[7]/input    133
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[20]/div[2]/div/div[1]/input    192    #Ethernet Secondary DNS Server
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[20]/div[2]/div/div[3]/input    168
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[20]/div[2]/div/div[5]/input    1
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[20]/div[2]/div/div[7]/input    1
    Textfield value should be    name=cfg_wa_network_name    ${Wireless_LAN_Name}
    Textfield value should be    name=cfg_wa_security_key    ${Wireless LAN_Password}
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[26]/div[2]/div/div[1]/input    192    #Wireless IP Address
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[26]/div[2]/div/div[3]/input    168
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[26]/div[2]/div/div[5]/input    100
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[26]/div[2]/div/div[7]/input    199
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[27]/div[2]/div/div[1]/input    255    #Wireless Subnet Mask
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[27]/div[2]/div/div[3]/input    255
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[27]/div[2]/div/div[5]/input    255
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[27]/div[2]/div/div[7]/input    0
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[28]/div[2]/div/div[1]/input    192    #Wireless Getway
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[28]/div[2]/div/div[3]/input    168
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[28]/div[2]/div/div[5]/input    100
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[28]/div[2]/div/div[7]/input    1
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[30]/div[2]/div/div[1]/input    192    #Wireless Primary DNS Server
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[30]/div[2]/div/div[3]/input    168
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[30]/div[2]/div/div[5]/input    1
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[30]/div[2]/div/div[7]/input    1
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[31]/div[2]/div/div[1]/input    5    #Ethernet Secondary DNS Server
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[31]/div[2]/div/div[3]/input    5
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[31]/div[2]/div/div[5]/input    5
    Textfield value should be    xpath=//*[@id="form_local_management"]/div[1]/div[31]/div[2]/div/div[7]/input    5

Wireless LAN
    Input text    name=cfg_wa_network_name    ${Wireless_LAN_Name}    #Wireless Network Name
    Select From List By Value    name=cfg_wa_security_type    4    #Wireless Security Type = TKIP+AES
    Input text    name=cfg_wa_security_key    ${Wireless LAN_Password}    #Wireless Password

Wireless Wide
    Input text    name=cfg_wa_network_name    ${Wireless_Wide_Name}    #Wireless Network Name
    Input text    name=cfg_wa_security_key    ${Wireless_Wide_Password}    #Wireless Password

Login
    [Arguments]    ${name}    ${passwd}
    Input text    id=name    ${name}
    Input text    id=passwd    ${passwd}
    Click element    id=login
    sleep    1
