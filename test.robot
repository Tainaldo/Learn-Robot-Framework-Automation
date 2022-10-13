*** Settings ***
Resource        Resouces/commonFunctionality.robot
Resource        ResoucesTest/commonTest.robot

Test Setup      commonFunctionality.Start TestCase
Test Teardown   commonFunctionality.Finish TestCase

*** Test Cases ***
TC Check
    commonTest.Check Textfield
