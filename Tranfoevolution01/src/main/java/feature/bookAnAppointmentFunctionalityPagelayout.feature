#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
 @tag
 Feature: Book an appointment functionality box layout
 As a candidate to be able to access the book an appointment tab properly and clearly without 
 any problems the Book an Appointment tab/box should have a proper layout.
 
 @tag1
 Scenario Outline: Verify calendar drop down menu is visible for the user to select the date and interact
 Given user lands in Transfotech Academy homepage
 And user clicks on Book an appointment tab
 When user fills all required information "<yourname>","<phonenumber>","<email>","<appointmentsubject>", "<validate>", "<message>"
 And user clicks on drop down menu option
 Then user can also access a drop down calender menu from the corner and interact with it
  
 Scenario Outline: Verify dates are placed in correct format after selecting them from the drop down menu
 Given user lands in Transfotech Academy homepage
 And user clicks on Book an appointment tab
 When user fills all required information "<yourname>","<phonenumber>","<email>","<appointmentsubject>", "<validate>", "<message>"
 And user access the drop down calender menu
 And user selects a diffrent valid date
 Then the dates should display exactly what the user had selected form the drop down options
 
 
 Scenario Outline: Verify user is able to expand message field box in order to compensate for information required
 Given user lands in Transfotech Academy homepage
 And user clicks on Book an appointment tab
 When user fills all required information "<yourname>","<phonenumber>","<email>","<appointmentsubject>", "<validate>", "<message>"
 Then user shall also be able to expand the message box for better visual
 
 Scenario Outline: Verify there is a scroll bar for user to have a better visual incase they have alot of information
 Given user lands in Transfotech Academy homepage
 And user clicks on Book an appointment tab
 When user fills all required information "<yourname>","<phonenumber>","<email>","<appointmentsubject>", "<validate>", "<message>"
 Then user can browse through the box/tab with the scroll bar provided at the bottom
 
 Scenario: Verify user is able to exit the Book an Appointment tab if user does not wish to send any message
 Given user lands in Transfotech Academy homepage
 And user clicks on Book an appointment tab
 When user clicks on the exit button
 Then user can easily exit and brought to homepage
 
 Examples:
 
 |yourname|phonenumber|email|appointmentsubject|validdate|message|
 |Safin|123456789|testing@gmail.com|QA|07012021|Hello|


 