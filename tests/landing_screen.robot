*** Settings ***
Documentation   Landing screen tests
Resource        ${CURDIR}/../resources/common.robot

*** Test Cases ***
Verify LEARN Agreement
    Wait Until Element Is Visible    accessibility_id=lblIHaveRead    20
    # Element Should Contain Text    accessibility_id=lblIHaveRead    I have heard and agree to the Terms of Use and Privacy Policy
    Click Element    accessibility_id=btnOnboardCheckbox
    Capture Page Screenshot    [Onboarding] LEARN Agreement Checked.png
    Click Element    accessibility_id=btnOnboardCheckbox
    Capture Page Screenshot    [Onboarding] LEARN Agreement Unchecked.png
    Click Element    accessibility_id=btnOnboardCheckbox
    Click Element    accessibility_id=btnNextOnboardingAgreement

Verify Username and Designation
    Wait Until Element Is Visible    accessibility_id=lblSetupYourName
    Click Element    accessibility_id=btnBackOnboard
    Wait Until Element Is Visible    accessibility_id=lblIHaveRead    20
    # Element Should Contain Text    accessibility_id=lblIHaveRead    I have heard and agree to the Terms of Use and Privacy Policy
    Click Element    accessibility_id=btnNextOnboardingAgreement
    
    Wait Until Element Is Visible    accessibility_id=lblSetupYourName
    Input Text    accessibility_id=txtUsername    automation test
    Click Element    accessibility_id=btnDesignationOption1
    Capture Page Screenshot    [Onboarding] Verify Username and Designation.png
    Click Element    accessibility_id=btnNextOnboard

Verify What Are You Interested to Learn
    Wait Until Element Is Visible    accessibility_id=lblWhatAreYouInterested
    Click Element    accessibility_id=btnInterested0
    Click Element    accessibility_id=btnInterested1
    Capture Page Screenshot    [Onboarding] Verify What Are You Interested to Learn.png
    Click Element    accessibility_id=btnNextOnboard

Verify Would You Like to Set Your Daily Learning Goal
    Wait Until Element Is Visible    accessibility_id=lblWouldYouLike
    Click Element    accessibility_id=btnWouldYouLikeMinus
    Wait Until Page Contains    9
    Element Should Contain Text    accessibility_id=lblWouldYouLikeNumber    9
    Capture Page Screenshot    [Onboarding] Verify Would You Like to Set Your Daily Learning Goal Should 9.png
    Click Element    accessibility_id=btnWouldYouLikePlus
    Wait Until Page Contains    10
    Element Should Contain Text    accessibility_id=lblWouldYouLikeNumber    10
    Capture Page Screenshot    [Onboarding] Verify Would You Like to Set Your Daily Learning Goal Should 10.png
    Click Element    accessibility_id=btnNextOnboard

Verify I Use Learn Because
    Wait Until Element Is Visible    accessibility_id=lblIUseLearn
    Click Element    accessibility_id=btnIUseLearn0
    Capture Page Screenshot    [Onboarding] Verify I Use Learn Because.png
    Click Element    accessibility_id=btnNextOnboard

Verify You Are Sparkimon
    Wait Until Element Is Visible    accessibility_id=lblSparkimon
    Capture Page Screenshot    [Onboarding] Verify You Are Sparkimon.png
    Click Element    accessibility_id=btnNextOnboard

Verify Lets Get Started
    Wait Until Element Is Visible    accessibility_id=lblLetsGet
    Capture Page Screenshot    [Onboarding] Verify Lets Get Started.png
    Click Element    accessibility_id=btnNextOnboard