*** Settings ***
Library           Selenium2Library
Resource          User.robot

*** Test Cases ***
Device Configuration
    Chrome_login    Administrator    screenbeam
    Input text    name=cfg_device_name    ScreenBeam Test
    Input text    name=cfg_admin_username    ${AdministratorName}
    Input text    name=cfg_admin_password    ${AdministratorPassword}
    Select From List By Value    name=cfg_tv_language    zhcs
    Input text    name=cfg_hostname    1100-Autotest
    Select From List By Value    name=cfg_timezone_item    28    # Timezone= +8
    sleep    1
    Click button    id=save_1    #Apply Settings
    sleep    1
    Alert Should Be Present
    sleep    65
    Close Browser
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    Textfield value should be    name=cfg_device_name    ScreenBeam Test
    Textfield value should be    name=cfg_admin_username    ${AdministratorName}
    List Selection Should Be    name=cfg_tv_language    zhcs
    Textfield value should be    name=cfg_hostname    1100-Autotest
    List Selection Should Be    name=cfg_timezone_item    28
    GetRXData
    sleep    1
    Page should contain    "cfg_device_name":"ScreenBeam Test",
    ${VerifyAdministratorName}    catenate    SEPARATOR=    "cfg_admin_username":"    ${AdministratorName}    ",
    Page should contain    ${VerifyAdministratorName}
    Page should contain    "cfg_hostname":"1100-Autotest",
    Page should contain    "cfg_tv_language":"zhcs",
    Page should contain    "cfg_timezone_item":"28",
    Close Browser

Feature_1
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    click element    class=lang_features
    sleep    1
    Select From List By Value    name=cfg_wireless_op_mode    5    #Wireless Display mode
    Click button    id=cfg_infracast_adjustment_on    #Enable Infracast
    Click button    id=cfg_set_mac_win7_infracast_on    #Enable SBCast
    Click button    id=cfg_airplay_mirroring_on    #Enable AirPlay
    Click button    id=cfg_ios_pushmode_on    #Enable Push mode
    Click button    id=cfg_chromeCast_on    #Enable Chrome Cast
    Click button    id=cfg_miracast_connection_off    #Miracast Connection = Disable
    Select From List By Value    name=cfg_channel    153    #Operation channel = 153
    Select From List By Value    name=cfg_transmit_power    0    #Transmit Power = Low
    Click button    id=cfg_force_pin_on    # Force PIN Pairing is On
    Click button    id=cfg_each_connect_pin_on    #Each PIN
    Select From List By Value    id=cfg_4digit_pin    0    #PIN length = 8
    sleep    1
    Click button    id=cfg_generate_pin_off    #PIN Generation Method = Static PIN
    Input text    cfg_pin_code    3456789    #Static PIN code
    Input text    name=cfg_pin_display_period    30    #PIN Display Period = 30
    Select From List By Value    id=cfg_force_disconn    1    #Quick Swirch
    sleep    1
    Click button    id=cfg_show_rx_name_always    #Show Receiver Name = Always
    Select From List By Value    name=cfg_rx_name_placement    3    #Receiver Name Placement = Upper Right
    Select From List By Value    name=cfg_show_netinfo_ontv    0    #ScreenBeam network and status information = None
    Click button    id=cfg_connect_instructions_ontv_on    #Connect instructions = Show
    Click button    id=cfg_show_connect_to_wifi_off    #Show "Connect to WiFi" instructions = Hide
    Select From List By Value    name=cfg_display_off_type    2    #DMI/VGA Port Power Management = Display Off
    sleep    1
    Input text    name=cfg_display_off_timeout    30    #Wait time = 30
    Select From List By Value    id=cfg_set_wakeup    1    #Wake Up = On Scan
    Select From List By Value    id=cfg_overscan    24    #Adjust TV Screen Size =1
    Select Checkbox    id=cfg_runtime_overscan_id    #Allow source device to override overscan value = Check
    Click button    id=cfg_set_cec_on    #HDMI CEC = On
    Select From List By Value    id=cfg_reboot_time    6    #Auto-reboot receiver when idle for = 6hr
    Click button    id=cfg_rx_logging_off
    sleep    1
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    sleep    65
    Close Browser
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    List Selection Should Be    name=cfg_wireless_op_mode    5
    List Selection Should Be    name=cfg_channel    153
    List Selection Should Be    name=cfg_transmit_power    0
    Textfield value should be    cfg_pin_code    3456789
    Textfield value should be    name=cfg_pin_display_period    30
    Textfield value should be    name=cfg_display_off_timeout    30
    GetRXData
    Page should contain    "cfg_wireless_op_mode":"5",
    Page should contain    "cfg_set_infracast":"1",
    Page should contain    "cfg_set_mac_win7_infracast":"1",
    Page should contain    "cfg_airplay_mirroring":"1",
    Page should contain    "cfg_ios_pushmode":"1",
    Page should contain    "cfg_chromeCast":"1",
    Page should contain    "cfg_miracast_connection":"0",
    Page should contain    "cfg_channel":"153",
    Page should contain    "cfg_ap_channel_number":"153",
    Page should contain    "cfg_transmit_power":"0",
    Page should contain    "cfg_force_pin":"1",
    Page should contain    "cfg_each_connect_pin":"1",
    Page should contain    "cfg_4digit_pin":"0",
    Page should contain    "cfg_generate_pin":"1",
    Page should contain    "cfg_pin_code":"3456789",
    Page should contain    "cfg_pin_display_period":"30",
    Page should contain    "cfg_force_disconn":"1",
    Page should contain    "cfg_show_rx_name":"0",
    Page should contain    "cfg_rx_name_placement":"3",
    Page should contain    "cfg_show_netinfo_ontv":"0",
    Page should contain    "cfg_connect_instructions_ontv":"0",
    Page should contain    "cfg_show_connect_to_wifi":"0",
    Page should contain    "cfg_display_off_type":"1",
    Page should contain    "cfg_hdmi_output":"0",
    Page should contain    "cfg_display_off_timeout":"30",
    Page should contain    "cfg_set_wakeup":"1",
    Page should contain    "cfg_overscan":"24",
    Page should contain    "cfg_runtime_overscan":"1",
    Page should contain    "cfg_set_cec":"1",
    Page should contain    "cfg_reboot_time":"6",
    Page should contain    "cfg_rx_logging":"0",
    Close Browser

Feature_2
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    click element    class=lang_features
    sleep    1
    Click button    id=cfg_infracast_adjustment_off    #Infracast = Disable
    Click button    id=cfg_set_mac_win7_infracast_off    #SBCast = Disable
    Click button    id=cfg_airplay_mirroring_off    #AirPlay = Disable
    Click button    id=cfg_chromeCast_off    #Chrome Cast = Disable
    Click button    id=cfg_miracast_connection_on    #Miracast Connection = Enable
    Select From List By Value    name=cfg_channel    48    #Operation channel = 48
    Select From List By Value    name=cfg_transmit_power    2    #Transmit Power = High
    Click button    id=cfg_force_pin_on    # Force PIN Pairing is On
    Click button    id=cfg_each_connect_pin_off    # Require PIN on = First connection
    Select From List By Value    id=cfg_4digit_pin    1    #PIN length = 4
    sleep    1
    Click button    id=cfg_generate_pin_on    #PIN Generation Method = Random PIN
    Input text    name=cfg_pin_display_period    120    #PIN Display Period = 120
    Select From List By Value    id=cfg_force_disconn    2    #Multiview
    sleep    1
    Select From List By Value    name=cfg_show_netinfo_ontv    2    #ScreenBeam network and status information = Minimal
    Click button    id=cfg_connect_instructions_ontv_on    #Connect instructions = Show
    Click button    id=cfg_show_connect_to_wifi_on    #Show "Connect to WiFi" instructions = Show
    Select From List By Value    name=cfg_display_off_type    1    #DMI/VGA Port Power Management = Screen Saver
    sleep    1
    Input text    name=cfg_display_off_timeout    9999    #Wait time = 9999
    Select From List By Value    id=cfg_set_wakeup    0    #Wake Up = On Connect
    Select From List By Value    id=cfg_overscan    0    #Adjust TV Screen Size =25
    Unselect Checkbox    id=cfg_runtime_overscan_id    #Allow source device to override overscan value \ = UnCheck
    Click button    id=cfg_set_cec_off    #HDMI CEC = Off
    Select From List By Value    id=cfg_reboot_time    24    #Auto-reboot receiver when idle for = 24hr
    Click button    id=cfg_rx_logging_on
    sleep    1
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    sleep    65
    Close Browser
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    Textfield value should be    name=cfg_pin_display_period    120
    Textfield value should be    name=cfg_display_off_timeout    9999
    GetRXData
    Page should contain    "cfg_wireless_op_mode":"5",
    Page should contain    "cfg_set_infracast":"0",
    Page should contain    "cfg_set_mac_win7_infracast":"0",
    Page should contain    "cfg_airplay_mirroring":"0",
    Page should contain    "cfg_chromeCast":"0",
    Page should contain    "cfg_miracast_connection":"1",
    Page should contain    "cfg_channel":"48",
    Page should contain    "cfg_ap_channel_number":"48",
    Page should contain    "cfg_transmit_power":"2",
    Page should contain    "cfg_force_pin":"1",
    Page should contain    "cfg_each_connect_pin":"0",
    Page should contain    "cfg_4digit_pin":"1",
    Page should contain    "cfg_generate_pin":"0",
    Page should contain    "cfg_pin_display_period":"120",
    Page should contain    "cfg_force_disconn":"2",
    Page should contain    "cfg_show_netinfo_ontv":"2",
    Page should contain    "cfg_connect_instructions_ontv":"0",
    Page should contain    "cfg_show_connect_to_wifi":"1",
    Page should contain    "cfg_display_off_type":"1",
    Page should contain    "cfg_hdmi_output":"1",
    Page should contain    "cfg_display_off_timeout":"9999",
    Page should contain    "cfg_set_wakeup":"0",
    Page should contain    "cfg_overscan":"0",
    Page should contain    "cfg_runtime_overscan":"0",
    Page should contain    "cfg_set_cec":"0",
    Page should contain    "cfg_reboot_time":"24",
    Page should contain    "cfg_rx_logging":"1",
    Close Browser

Feature_3
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    click element    class=lang_features
    sleep    1
    Click button    id=cfg_infracast_adjustment_on    #Enable Infracast
    Click button    id=cfg_set_mac_win7_infracast_on    #Enable SBCast
    Click button    id=cfg_airplay_mirroring_on    #Enable AirPlay
    Click button    id=cfg_ios_pushmode_off    #Push mode = Disable
    Click button    id=cfg_chromeCast_on    #Enable Chrome Cast
    Select From List By Value    name=cfg_channel    165    #Operation channel = 165
    Select From List By Value    name=cfg_transmit_power    1    #Transmit Power = Medium
    Click button    id=cfg_force_pin_off    # Force PIN Pairing = Off
    Select From List By Value    id=cfg_force_disconn    0    #Single Swirch
    sleep    1
    Select From List By Value    name=cfg_show_netinfo_ontv    1    #ScreenBeam network and status information = All
    Click button    id=cfg_connect_instructions_ontv_off    #Connect instructions = Hide
    Select From List By Value    name=cfg_display_off_type    0    #DMI/VGA Port Power Management = Always On
    sleep    1
    Select From List By Value    id=cfg_reboot_time    0    #Auto-reboot receiver when idle for = Never
    sleep    1
    Click button    name=save_2    #Apply Settings
    sleep    2
    Alert Should Be Present
    sleep    65
    Close Browser
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_wireless_op_mode":"5",
    Page should contain    "cfg_set_infracast":"1",
    Page should contain    "cfg_set_mac_win7_infracast":"1",
    Page should contain    "cfg_airplay_mirroring":"1",
    Page should contain    "cfg_ios_pushmode":"0",
    Page should contain    "cfg_chromeCast":"1",
    Page should contain    "cfg_channel":"165",
    Page should contain    "cfg_ap_channel_number":"165",
    Page should contain    "cfg_transmit_power":"1",
    Page should contain    "cfg_force_pin":"0",
    Page should contain    "cfg_force_disconn":"0",
    Page should contain    "cfg_show_netinfo_ontv":"1",
    Page should contain    "cfg_connect_instructions_ontv":"1",
    Page should contain    "cfg_display_off_type":"0",
    Page should contain    "cfg_reboot_time":"0",
    Close Browser

Digital Singage_1
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    click element    class=lang_digital_signage
    sleep    1
    Click button    id=cfg_digital_signage_on    #Enable Digital Signage
    Click button    id=cfg_digital_signage_fullscreen_off    #Display mode = Framed
    Input text    name=cfg_digital_signage_url    http://192.168.100.103:8080/video.html
    Input text    cfg_digital_signage_delay_sec    1000    #Restart Delay( 1000 seconds)
    Click button    name=save_digital_signage    #Apply Settings
    sleep    2
    Alert Should Be Present
    Textfield value should be    name=cfg_digital_signage_url    http://192.168.100.103:8080/video.html
    Textfield value should be    cfg_digital_signage_delay_sec    1000
    Select From List By Value    name=cfg_digital_signage_audio_vol    3
    GetRXData
    Page should contain    "cfg_digital_signage":"1",
    Page should contain    "cfg_digital_signage_fullscreen":"0",
    Page should contain    "cfg_digital_signage_url":"http://192.168.100.103:8080/video.html",
    Page should contain    "cfg_digital_signage_delay_sec":"1000",
    Page should contain    "cfg_digital_signage_audio_vol":"3",
    Close Browser

Digital Singage_2
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    click element    class=lang_digital_signage
    sleep    1
    Click button    id=cfg_digital_signage_on    #Enable Digital Signage
    Click button    id=cfg_digital_signage_fullscreen_on    #Display mode = Fullscreen
    Clear Element Text    name=cfg_digital_signage_url
    Input text    cfg_digital_signage_delay_sec    10    #Restart Delay( 10 seconds)
    Select From List By Value    name=cfg_digital_signage_audio_vol    0
    Click button    name=save_digital_signage    #Apply Settings
    sleep    2
    Alert Should Be Present
    Textfield value should be    cfg_digital_signage_delay_sec    10
    GetRXData
    Page should contain    "cfg_digital_signage":"1",
    Page should contain    "cfg_digital_signage_fullscreen":"1",
    Page should contain    "cfg_digital_signage_url":"",
    Page should contain    "cfg_digital_signage_delay_sec":"10",
    Page should contain    "cfg_digital_signage_audio_vol":"0",
    Close Browser

Digital Singage_3
    [Tags]    Network Settings_1
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    click element    class=lang_digital_signage
    sleep    1
    Click button    id=cfg_digital_signage_off    #Disable Digital Signage
    Click button    name=save_digital_signage    #Apply Settings
    sleep    2
    Alert Should Be Present
    GetRXData
    Page should contain    "cfg_digital_signage":"0",
    Close Browser

Network Settings_1
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    click element    class=lang_network_settings
    sleep    1
    Select From List By Value    name=cfg_network_mode    2    #Birdge Mode
    Select From List By Value    name=cfg_bridge_interface    2    #Select Internet WAN Interface = Wireless
    Input text    name=cfg_ethernet_network_name    Network_AutoTest    #Ethernet Network Name
    Select From List By Value    cfg_wired_authentication_type    2    #Ethernet Authentication = PEAP-MSCHAPV2
    Input text    name=cfg_wired_radius_identity    ScreenBeam_Auto-Test
    Input text    name=cfg_wired_security_key    ScreenBeam_Password123
    Click button    id=cfg_eth_auto_ip_off    #Ethernet Static IP
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[15]/div[2]/div/div[1]/input    192    #Ethernet IP Address
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[15]/div[2]/div/div[3]/input    168
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[15]/div[2]/div/div[5]/input    ${Eth_addr_3th}
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[15]/div[2]/div/div[7]/input    195
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[16]/div[2]/div/div[1]/input    255    #Ethernet Subnet Mask
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[16]/div[2]/div/div[3]/input    255
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[16]/div[2]/div/div[5]/input    255
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[16]/div[2]/div/div[7]/input    0
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[17]/div[2]/div/div[1]/input    192    #Ethernet Getway
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[17]/div[2]/div/div[3]/input    168
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[17]/div[2]/div/div[5]/input    ${Eth_addr_3th}
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[17]/div[2]/div/div[7]/input    1
    Click button    id=cfg_eth_auto_dns_off    #Ethernet Static DNS
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[19]/div[2]/div/div[1]/input    202    #Ethernet Primary DNS Server
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[19]/div[2]/div/div[3]/input    96
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[19]/div[2]/div/div[5]/input    134
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[19]/div[2]/div/div[7]/input    133
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[20]/div[2]/div/div[1]/input    192    #Ethernet Secondary DNS Server
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[20]/div[2]/div/div[3]/input    168
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[20]/div[2]/div/div[5]/input    1
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[20]/div[2]/div/div[7]/input    1
    Wireless LAN
    Click button    id=cfg_sta_auto_ip_off    #Wireless Static IP
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[26]/div[2]/div/div[1]/input    192    #Wireless IP Address
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[26]/div[2]/div/div[3]/input    168
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[26]/div[2]/div/div[5]/input    ${Wireless_addr_3th}
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[26]/div[2]/div/div[7]/input    199
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[27]/div[2]/div/div[1]/input    255    #Wireless Subnet Mask
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[27]/div[2]/div/div[3]/input    255
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[27]/div[2]/div/div[5]/input    255
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[27]/div[2]/div/div[7]/input    0
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[28]/div[2]/div/div[1]/input    192    #Wireless Getway
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[28]/div[2]/div/div[3]/input    168
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[28]/div[2]/div/div[5]/input    ${Wireless_addr_3th}
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[28]/div[2]/div/div[7]/input    1
    Click button    id=cfg_sta_auto_dns_off    #Wireless Static DNS
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[30]/div[2]/div/div[1]/input    192    #Wireless Primary DNS Server
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[30]/div[2]/div/div[3]/input    168
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[30]/div[2]/div/div[5]/input    1
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[30]/div[2]/div/div[7]/input    1
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[31]/div[2]/div/div[1]/input    5    #Ethernet Secondary DNS Server
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[31]/div[2]/div/div[3]/input    5
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[31]/div[2]/div/div[5]/input    5
    Input text    xpath=//*[@id="form_local_management"]/div[1]/div[31]/div[2]/div/div[7]/input    5
    Click button    name=save_local_management    #Apply Settings
    sleep    2
    Alert Should Be Present
    sleep    65
    Close Browser
    Chrome_login_Network2    ${AdministratorName}    ${AdministratorPassword}
    Verify_Network1
    GetRXData_Network2
    Page should contain    "cfg_network_mode":"2",
    Page should contain    "cfg_bridge_interface":"2",
    Page should contain    "cfg_ethernet_network_name":"Network_AutoTest",
    Page should contain    "cfg_wired_authentication_type":"2",
    Page should contain    "cfg_wired_radius_identity":"ScreenBeam_Auto-Test",
    Page should contain    "cfg_wired_security_key":"ScreenBeam_Password123",
    Page should contain    "cfg_eth_auto_ip":"0",
    Page should contain    "cfg_eth_auto_dns":"0",
    Page should contain    "cfg_sta_auto_ip":"0",
    Page should contain    "cfg_sta_auto_dns":"0",
    Close Browser

Network Settings_2
    Chrome_login_Network2    ${AdministratorName}    ${AdministratorPassword}
    click element    class=lang_network_settings
    sleep    1
    Select From List By Value    name=cfg_network_mode    0    #None Mode
    Input text    name=cfg_ethernet_network_name    ScreenBeam Eth    #Ethernet Network Name
    Select From List By Value    cfg_wired_authentication_type    0    #Ethernet Authentication = Open
    sleep    1
    Click button    id=cfg_eth_auto_ip_on    #Ethernet Auto IP
    Click button    id=cfg_eth_auto_dns_off    #Ethernet Static DNS
    Wireless Wide
    Click button    id=cfg_sta_auto_ip_on    #Wireless Auto IP
    Click button    id=cfg_sta_auto_dns_off    #Wireless Static DNS
    Click button    name=save_local_management    #Apply Settings
    sleep    2
    Alert Should Be Present
    sleep    65
    Close Browser
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    Textfield value should be    name=cfg_ethernet_network_name    ScreenBeam Eth
    Textfield value should be    name=cfg_wa_network_name    ${Wireless_Wide_Name}    #Wireless Network Name
    Textfield value should be    name=cfg_wa_security_key    ${Wireless_Wide_Password}    #Wireless Password
    GetRXData
    Page should contain    "cfg_network_mode":"0",
    Page should contain    "cfg_ethernet_network_name":"ScreenBeam Eth",
    Page should contain    "cfg_wired_authentication_type":"0",
    Page should contain    "cfg_wired_radius_identity":"ScreenBeam_Auto-Test",
    Page should contain    "cfg_wired_security_key":"ScreenBeam_Password123",
    Page should contain    "cfg_eth_auto_ip":"1"
    Page should contain    "cfg_eth_auto_dns":"0",
    Page should contain    "cfg_sta_auto_ip":"1",
    Page should contain    "cfg_sta_auto_dns":"0",
    Close Browser

Network Settings_3
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    click element    class=lang_network_settings
    sleep    1
    Select From List By Value    name=cfg_network_mode    1    #NAT Mode
    Click button    id=cfg_block_lan_ip_on    #Block communication to devices on the LAN = Enable
    Select From List By Value    name=cfg_bridge_interface    1    #Select Internet WAN Interface = Ethernet
    Input text    name=cfg_ethernet_network_name    ScreenBeam Eth    #Ethernet Network Name
    Click button    id=cfg_eth_auto_ip_on    #Ethernet Auto IP
    Click button    id=cfg_eth_auto_dns_on    #Ethernet Auto DNS
    Wireless LAN
    Click button    id=cfg_sta_auto_ip_on    #Wireless Auto IP
    Click button    id=cfg_sta_auto_dns_on    #Wireless Auto DNS
    Click button    name=save_local_management    #Apply Settings
    sleep    2
    Alert Should Be Present
    sleep    65
    Close Browser
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    Textfield value should be    name=cfg_ethernet_network_name    ScreenBeam Eth
    Textfield value should be    name=cfg_wa_network_name    ${Wireless_LAN_Name}    #Wireless Network Name
    Textfield value should be    name=cfg_wa_security_key    ${Wireless LAN_Password}    #Wireless Password
    GetRXData
    Page should contain    "cfg_network_mode":"1",
    Page should contain    "cfg_block_lan_ip":"1",
    Page should contain    "cfg_bridge_interface":"1",
    Page should contain    "cfg_eth_auto_ip":"1"
    Page should contain    "cfg_eth_auto_dns":"1",
    Page should contain    "cfg_sta_auto_ip":"1",
    Page should contain    "cfg_sta_auto_dns":"1",
    Close Browser

Network Settings_4
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    click element    class=lang_network_settings
    sleep    1
    Click button    id=cfg_block_lan_ip_off    #Block communication to devices on the LAN = Disable
    Click button    name=save_local_management    #Apply Settings
    sleep    2
    Alert Should Be Present
    sleep    2
    GetRXData
    Page should contain    "cfg_block_lan_ip":"0",
    Close Browser

Local Wifi_1
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    click element    class=lang_local_ap_settings
    sleep    1
    Click button    id=cfg_ap_ssid_enable1_off    #Local Wifi = Disable
    Click button    name=save_local_ap    #Apply Settings
    sleep    2
    Alert Should Be Present
    sleep    65
    Close Browser
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_ap_ssid_enable1":"0",
    Close Browser

Local Wifi_2
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    click element    class=lang_local_ap_settings
    sleep    1
    Click button    id=cfg_ap_ssid_enable1_on    #Local Wifi = Enable
    Input text    id=cfg_ap_wifi_name1    ScreenBeamAP_AutoTest_Open    #Wireless Network Name
    Select From List By Value    name=cfg_ap_security_type1    0    #Wireless Security Type = Open
    Click button    name=save_local_ap    #Apply Settings
    sleep    2
    Alert Should Be Present
    sleep    65
    Close Browser
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    Textfield value should be    id=cfg_ap_wifi_name1    ScreenBeamAP_AutoTest_Open
    GetRXData
    Page should contain    "cfg_ap_ssid_enable1":"1",
    Page should contain    "cfg_ap_wifi_name1":"ScreenBeamAP_AutoTest_Open",
    Page should contain    "cfg_ap_security_type1":"0",
    Close Browser

Local Wifi_3
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    click element    class=lang_local_ap_settings
    sleep    1
    Click button    id=cfg_ap_ssid_enable1_on    #Local Wifi = Enable
    Input text    id=cfg_ap_wifi_name1    1100_AutoTest_PSK    #Wireless Network Name
    Select From List By Value    name=cfg_ap_security_type1    3    #Wireless Security Type = PSK
    Input text    id=cfg_ap_password1    shenzhen2013    #Password Phrase
    Click button    name=save_local_ap    #Apply Settings
    sleep    2
    Alert Should Be Present
    sleep    65
    Close Browser
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    Textfield value should be    id=cfg_ap_wifi_name1    1100_AutoTest_PSK
    Textfield value should be    id=cfg_ap_password1    shenzhen2013
    GetRXData
    Page should contain    "cfg_ap_ssid_enable1":"1",
    Page should contain    "cfg_ap_wifi_name1":"1100_AutoTest_PSK",
    Page should contain    "cfg_ap_security_type1":"3",
    Page should contain    "cfg_ap_password1":"shenzhen2013",
    Close Browser

Management Access_1
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    click element    class=lang_remote_management
    sleep    1
    Input text    name=cfg_cms_ip_addr    ScreenBeamAutoTest    #CMS IP
    Input text    name=cfg_cms_port    65535    #CMS Port
    Input text    name=cfg_web_port    65534    #Web Port
    Select From List By Value    name=cfg_lmi_access    2    #Local Management Interface Access = Auto
    Select From List By Value    name=cfg_network_interface_allowed    1    #Network Interface Allowed = Ethernet
    Click button    name=save_remote_management    #Apply Settings
    sleep    2
    Alert Should Be Present
    sleep    65
    Close Browser
    Chrome_login_Management Access2    ${AdministratorName}    ${AdministratorPassword}
    Textfield value should be    name=cfg_cms_ip_addr    ScreenBeamAutoTest
    Textfield value should be    name=cfg_cms_port    65535
    Textfield value should be    name=cfg_web_port    65534
    GetRXData_Management Access2
    Page should contain    "cfg_cms_ip_addr":"ScreenBeamAutoTest",
    Page should contain    "cfg_cms_port":"65535",
    Page should contain    "cfg_web_port":"65534",
    Page should contain    "cfg_lmi_access":"2",
    Page should contain    "cfg_network_interface_allowed":"1",
    Close Browser

Management Access_2
    Chrome_login_Management Access2    ${AdministratorName}    ${AdministratorPassword}
    click element    class=lang_remote_management
    sleep    1
    Input text    name=cfg_cms_ip_addr    192.168.254.254    #CMS IP
    Input text    name=cfg_cms_port    7237    #CMS Port
    Input text    name=cfg_web_port    443    #Web Port
    Select From List By Value    name=cfg_lmi_access    1    #Local Management Interface Access = Enable
    Select From List By Value    name=cfg_network_interface_allowed    0    #Network Interface Allowed = Any
    Click button    name=save_remote_management    #Apply Settings
    sleep    2
    Alert Should Be Present
    sleep    65
    Close Browser
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    Textfield value should be    name=cfg_cms_ip_addr    192.168.254.254
    Textfield value should be    name=cfg_cms_port    7237
    Textfield value should be    name=cfg_web_port    443
    GetRXData
    Page should contain    "cfg_cms_ip_addr":"192.168.254.254",
    Page should contain    "cfg_cms_port":"7237",
    Page should contain    "cfg_web_port":"443",
    Page should contain    "cfg_lmi_access":"1",
    Page should contain    "cfg_network_interface_allowed":"0",
    Close Browser

Advanced+FW Upgrade_1
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    GoToAdvanced
    sleep    1
    click element    class=lang_firmware_upgrade    #Go to FW Upgrade Tab
    sleep    1
    Click button    id=cfg_fwupgrade_off    #From a USB drive = Disable
    Click button    xpath=//*[@id="form_upgrade_id"]/div[2]/table/tbody/tr/td[2]/input[1]    #Apply Settings
    sleep    2
    Alert Should Be Present
    click element    class=lang_advanced    #Go to Advanced Settings Tab
    sleep    1
    Click button    name=accept_advanced_warning    #Agree Warning
    Select Checkbox    name=cfg_ap_eapol_retry1    #Disable EAPOL Key Retries (for WPA2-PSK) = Check
    Click button    id=cfg_dynamic_ago_passphrase_on    #Enhanced Miracast P2P security = Enable
    Click button    id=cfg_world_clock_adjustment_off    #PCR Synchronization = Disable
    Select From List By Value    id=cfg_hdcp_type    1    #HDCP Encryption = Disable
    Click button    id=cfg_debug_view_on    #DebugView = On
    Input text    xpath=//*[@id="p2p_ip1"]    200    #P2P IP Address
    Input text    xpath=//*[@id="ago_p2p_ip_address_tr"]/div[2]/div/div[3]/input    200
    Input text    xpath=//*[@id="ago_p2p_ip_address_tr"]/div[2]/div/div[5]/input    200
    Input text    xpath=//*[@id="ago_p2p_ip_address_tr"]/div[2]/div/div[7]/input    1
    Input text    xpath=//*[@id="ago_p2p_subnet_mask_tr"]/div[2]/div/div[7]/input    128    #P2P Subnet Mask
    Input text    xpath=//*[@id="ago_p2p_dhcp_ip_start_tr"]/div[2]/div/div[7]/input    11    #P2P DHCP IP Start
    Input text    xpath=//*[@id="ago_p2p_dhcp_ip_end_tr"]/div[2]/div/div[7]/input    100    #P2P DHCP IP End
    Input text    xpath=//*[@id="ago_ssid_name_suffix"]    ~!@#$%^*(_-+=/*|]{;:A1b    #P2P Wireless Network Name (SSID)
    Click button    id=cfg_fast_ip_off    #Fast IP = Disable
    Click button    name=save_advanced_settings    #Apply Settings
    sleep    2
    Alert Should Be Present
    sleep    65
    Close Browser
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    Textfield value should be    xpath=//*[@id="p2p_ip1"]    200
    Textfield value should be    xpath=//*[@id="ago_p2p_ip_address_tr"]/div[2]/div/div[3]/input    200
    Textfield value should be    xpath=//*[@id="ago_p2p_ip_address_tr"]/div[2]/div/div[5]/input    200
    Textfield value should be    xpath=//*[@id="ago_p2p_ip_address_tr"]/div[2]/div/div[7]/input    1
    Textfield value should be    xpath=//*[@id="ago_p2p_subnet_mask_tr"]/div[2]/div/div[7]/input    128
    Textfield value should be    xpath=//*[@id="ago_p2p_dhcp_ip_start_tr"]/div[2]/div/div[7]/input    11
    Textfield value should be    xpath=//*[@id="ago_p2p_dhcp_ip_end_tr"]/div[2]/div/div[7]/input    100
    Textfield value should be    xpath=//*[@id="ago_ssid_name_suffix"]    ~!@#$%^*(_-+=/*|]{;:A1b
    GetRXData
    Page should contain    "cfg_fwupgrade":"0",
    Page should contain    "cfg_ap_eapol_retry1":"1",
    Page should contain    "cfg_dynamic_ago_passphrase":"1",
    Page should contain    "cfg_world_clock_adjustment":"0",
    Page should contain    "cfg_hdcp_type":"1",
    Page should contain    "cfg_debug_view":"1",
    Page should contain    "cfg_p2p_ip_addr":"200.200.200.1",
    Page should contain    "cfg_p2p_netmask":"255.255.255.128",
    Page should contain    "cfg_p2p_dhcp_startip":"200.200.200.11",
    Page should contain    "cfg_p2p_dhcp_endip":"200.200.200.100",
    Page should contain    cfg_p2p_ssid":"DIRECT-xy~!@#$%^*(_-+=/*|]{;:A1b",
    Page should contain    "cfg_fast_ip":"0",
    Close Browser

Advanced+FW Upgrade_2
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    GoToAdvanced
    sleep    1
    click element    class=lang_firmware_upgrade    #Go to FW Upgrade Tab
    sleep    1
    Click button    id=cfg_fwupgrade_on    #From a USB drive = Enable
    Click button    xpath=//*[@id="form_upgrade_id"]/div[2]/table/tbody/tr/td[2]/input[1]    #Apply Settings
    sleep    2
    Alert Should Be Present
    click element    class=lang_advanced    #Go to Advanced Settings Tab
    sleep    1
    Click button    name=accept_advanced_warning    #Agree Warning
    Unselect Checkbox    name=cfg_ap_eapol_retry1    #Disable EAPOL Key Retries (for WPA2-PSK) = Uncheck
    Click button    id=cfg_dynamic_ago_passphrase_off    #Enhanced Miracast P2P security = Disable
    Click button    id=cfg_world_clock_adjustment_on    #PCR Synchronization = Enable
    Select From List By Value    id=cfg_hdcp_type    0    #HDCP Encryption = Enable
    Click button    id=cfg_debug_view_off    #DebugView = Off
    Input text    xpath=//*[@id="p2p_ip1"]    192    #P2P IP Address
    Input text    xpath=//*[@id="ago_p2p_ip_address_tr"]/div[2]/div/div[3]/input    168
    Input text    xpath=//*[@id="ago_p2p_ip_address_tr"]/div[2]/div/div[5]/input    16
    Input text    xpath=//*[@id="ago_p2p_ip_address_tr"]/div[2]/div/div[7]/input    1
    Input text    xpath=//*[@id="ago_p2p_subnet_mask_tr"]/div[2]/div/div[7]/input    0    #P2P Subnet Mask
    Input text    xpath=//*[@id="ago_p2p_dhcp_ip_start_tr"]/div[2]/div/div[7]/input    2    #P2P DHCP IP Start
    Input text    xpath=//*[@id="ago_p2p_dhcp_ip_end_tr"]/div[2]/div/div[7]/input    254    #P2P DHCP IP End
    Input text    xpath=//*[@id="ago_ssid_name_suffix"]    ScreenBeam1100    #P2P Wireless Network Name (SSID)
    Input text    name=cfg_p2p_password    ~!@#$%^*()_+-=/*-|}{.,1A    #P2P Wireless Network Password
    Click button    id=cfg_fast_ip_on    #Fast IP = Enable
    Click button    name=save_advanced_settings    #Apply Settings
    sleep    2
    Alert Should Be Present
    sleep    65
    Close Browser
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    Textfield value should be    xpath=//*[@id="p2p_ip1"]    192    #P2P IP Address
    Textfield value should be    xpath=//*[@id="ago_p2p_ip_address_tr"]/div[2]/div/div[3]/input    168
    Textfield value should be    xpath=//*[@id="ago_p2p_ip_address_tr"]/div[2]/div/div[5]/input    16
    Textfield value should be    xpath=//*[@id="ago_p2p_ip_address_tr"]/div[2]/div/div[7]/input    1
    Textfield value should be    xpath=//*[@id="ago_p2p_subnet_mask_tr"]/div[2]/div/div[7]/input    0    #P2P Subnet Mask
    Textfield value should be    xpath=//*[@id="ago_p2p_dhcp_ip_start_tr"]/div[2]/div/div[7]/input    2    #P2P DHCP IP Start
    Textfield value should be    xpath=//*[@id="ago_p2p_dhcp_ip_end_tr"]/div[2]/div/div[7]/input    254    #P2P DHCP IP End
    Textfield value should be    xpath=//*[@id="ago_ssid_name_suffix"]    ScreenBeam1100    #P2P Wireless Network Name (SSID)
    Textfield value should be    name=cfg_p2p_password    ~!@#$%^*()_+-=/*-|}{.,1A    #P2P Wireless Network Password
    GetRXData
    Page should contain    "cfg_fwupgrade":"1",
    Page should contain    "cfg_ap_eapol_retry1":"0",
    Page should contain    "cfg_dynamic_ago_passphrase":"0",
    Page should contain    "cfg_world_clock_adjustment":"1",
    Page should contain    "cfg_hdcp_type":"0",
    Page should contain    "cfg_debug_view":"0",
    Page should contain    "cfg_p2p_ip_addr":"192.168.16.1",
    Page should contain    "cfg_p2p_netmask":"255.255.255.0",
    Page should contain    "cfg_p2p_dhcp_startip":"192.168.16.2",
    Page should contain    "cfg_p2p_dhcp_endip":"192.168.16.254",
    Page should contain    "cfg_p2p_ssid":"DIRECT-xyScreenBeam1100",
    Page should contain    "cfg_fast_ip":"1",
    Close Browser

Reboot
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    click element    class=lang_maintenance
    sleep    1
    Click button    name=Reboot    #Reboot
    sleep    2
    Alert Should Be Present
    sleep    65
    Close Browser
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    GetRXData
    Page should contain    "cfg_uptime":"0d,0h,1m",
    Go Back
    sleep    1
    click element    class=lang_maintenance
    sleep    1
    Click button    name=Export
    sleep    1
    Click button    name=ExportProfile

Reset
    Chrome_login    ${AdministratorName}    ${AdministratorPassword}
    click element    class=lang_maintenance
    sleep    1
    Click button    name=SoftReset    #soft Reset
    sleep    2
    Alert Should Be Present
    sleep    65
    Close Browser
    Chrome_login    Administrator    screenbeam
    GetRXData
