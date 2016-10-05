## Framework guidelines

## Prerequisites
Coffee :coffee:  
Ruby version >= 2.1.2
```
$ git clone git@github.com:troy-harris/interview_automation_test.git
$ cd interview_automation_test
$ bundle install
```
Run full test suite
```
$ cucumber
```
Run minimal test suite
```
$ cucumber --tags @minimal
```

## Tagology
Tags should be strictly set at the beginning of the test framework so that we may clearly define what area of the
product we are testing, easily run test subsets, and mark for refactor when our test suite matures.

**Holy grail tag:**  
@minimal - The evolved test suite should eventually only contain the @minimal tagged scenario in the .feature file. All
           other scenarios should be removed and covered further down the stack in either unit, integration, or API tests.

**Feature tags:**  
@authentication - Login and signup

**General tags:**  
@error_alert - Error dialog displayed  
@negative - Incorrect use of feature  
@refactor_frontend_ui_tests - This scenario should eventually be removed, and covered in a frontend UI test suite e.g. Jasmine

  
 /end 

---
# Welcome to the farmdrop technical test for automation testers

Please spend no more than two hours on the following task. You are not expected to finish all of it - this is as much to understand how you approach things as it is to see if you can build working tests.

## Background
Farmdrop sometimes uses a staging site at [https://next.farmdrop.com](https://next.farmdrop.com) to run integration tests.  The database is reset periodically and the payments system is connected to a sandbox, so you can experiment freely.

## Task
Please build a suite of tests for the sign up form which will run against this staging site.

2. Write out a series of scenarios as a Cucumber feature file(s). Try to think from regression prospective and come up with as many scenarios as you feel are appropriate in order to make sure this form is fully tested.
2. Begin to automate your scenarios and continue until your allocated time runs out. Use Cucumber/Ruby and any other gems/frameworks you feel are appropriate.

## Notes
* Code reuse is important to us, so we are interested in seeing what approaches you take to keep your code and tests modular.
* We take version control seriously, so please show us how you approach this.
* Can you show an approach to handle multiple browsers(headless,chrome should do) as well.
* Your submission should include instructions on how to run it.

## Submission
Please fork this repository and commit code to it. Send us the link to your repo in an email.

Good Luck!!!
