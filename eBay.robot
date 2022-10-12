*** Settings ***
Documentation    Basic seach functionality
Resource    Resouces/commonFunctionality.robot
Resource    Resouces/eBay_UserDefinedKeywords.robot
Resource    Resouces/PageObjects/HeaderPage.robot 
Resource    Resouces/PageObjects/SearchResultsPage.robot

Test Setup       commonFunctionality.Start TestCase
Test Teardown    commonFunctionality.Finish TestCase        

*** Test Cases ***
Verify basic seach functionality
    Set Test Documentation    This test case verifies the basic search
    Set Tags    Fuctional

    HeaderPage.Input Search Text and Click Search    robot
    SearchResultsPage.Verify seach result    robot

Verify basic seach functionality
    Set Test Documentation    This test case verifies the basic search
    Set Tags    Fuctional

    HeaderPage.Input Search Text and Click Search    books
    SearchResultsPage.Verify seach result    books