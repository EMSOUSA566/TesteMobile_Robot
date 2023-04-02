

*** Settings ***
Documentation    This script starts and run simple tasks on YouTube app  
Library          AppiumLibrary
Library          ScreenCapLibrary
Resource         ./variables.robot

*** Variables ***
# Setup do device
${REMOTE_URL}          http://localhost:4723/wd/hub
${PLATFORM_NAME}       Android
${PLATFORM_VERSION}    9.0
${DEVICE_NAME}         Pixel 4 API 28
${APP_PACKAGE}         com.google.android.youtube
${APP_ACTIVITY}        com.google.android.youtube.HomeActivity
${AUTOMATION_NAME}     appium

*** Test Cases ***
iniciar gravação
    Iniciar gravação de Video
Open App
    Open Youtube
Para gravação
    Parar Gravação Video
     
*** Keyword ***
Iniciar gravação de Video
    Start Video Recording    name=EvidênciasYouTube    size_percentage=0.7

Open Youtube
    Open Application    ${REMOTE_URL}                platformName=${PLATFORM_NAME}                            platformVersion=${PLATFORM_VERSION}    
    ...                 deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}	appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}

Parar Gravação Video
    Stop Video Recording