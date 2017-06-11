Installing and Running for the interview questions tests
====================================

This is a short guide to installing and running the interview questions tests  

##Clone the tests

`git clone https://github.com/dchamb84/interview_automation_test.git`

##Installing required gems

Go to the interview_automation_test folder and run `gem install bundler` (if you don't have the bundler gem already, if you do, skip this part) and then `bundle install`

##Runing the tests

To run the tests run the following command:

`cucumber --tags @complete  BROWSER=chrome`

This will run the tests that are tagged with `@complete`

The tests tagged with @complete have been finsihed. Tests tagged with @incomplete have not been finished.


You can choose between firefox, chrome and headless browsers (Note: headless will just use a chrome browser)




























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
