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

  Feature: Booking an appointment with Transfotech Academy
 
  As a candidate interested to start any of the courses provided by Transfotech should be able to 
  come in contact with the academy directly by sending them a message.
 
 
  Scenario: Verify user is able to click Book an appointment option and is able to view the Tab/box with all the required fields in it
  Given user lands in Transfotech Academy homepage
  When user clicks on Book an appointment option
  Then user is brought to the Book an appointment tab with all the necessary fields visible 
 
  
  Scenario Outline: Verify user is able to send message succesfully and a success message should display
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  And user fills up all the required information "<yourname>","<phonenumber>","<email>","<appointmentsubject>","<validdate>","<message>"
  When user clicks on Send Message button
  Then user should be able to view a success message
  
  Scenario: Verify user can not send any messages without filling up the required fields 
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  And user does not fill-up the required information for booking an appointment
  When user clicks on Send Message button
  Then user is displayed error message
  
  Scenario Outline: Verify user can not send any message if any field they provide some invalid data
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  And user fills up all the invalid information "<invalidyourname>","<invalidphonenumber>","<invalidemail>","<invalidappointmentsubject>","<invaliddate>","<invalidmessage>"
  When user clicks on Send Message button
  Then user is displayed error message 
  
  Scenario: Verify a success message is not displayed if reqired fields are empty 
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  And user does not fill-up the required information for booking an appointment
  When user clicks on Send Message button
  Then user is not displayed any success message
  
  Scenario: Verify user get error messages displayed if required fields are empty 
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  And user does not fill-up the required information for booking an appointment
  When user clicks on Send Message button
  Then user is displayed error message 
  
  Scenario Outline: Verify user still gets error message if Name is missing 
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  And user fills up "<phonenumber>","<email>","<appointmentsubject>","<validdate>","<message>" but name
  When user clicks on Send Message button
  Then user is displayed error message  
  
  
  
  Scenario Outline: Verify user gets error messages if user enters everything correct but invalid Name
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  And user fills up "<phonenumber>","<email>","<appointmentsubject>", "<validdate>","<message>" but invalidyourname "<invalidyourname>"
  When user clicks on Send Message button
  Then user is displayed error message  
  
  
  Scenario Outline: Verify user is not able to send message multiple time using same information
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  And user fills up all the required information "<yourname>","<phonenumber>","<email>","<appointmentsubject>","<validdate>","<message>"
  When user clicks on Send Message button
  And user should be able to view a success message at the bottom on the box
  And user clicks on Book an appointment tab
  And user fills up all the required information "<yourname>","<phonenumber>","<email>","<appointmentsubject>","<validdate>","<message>"
  When user clicks on Send Message button
  Then user is displayed error message  
  
  Scenario Outline: Verify user is not able to book an appointment with entering past dates
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  And user fills up "<yourname>","<phonenumber>","<email>","<appointmentsubject>","<message>" but invaliddate "<invaliddate>"
  When user clicks on Send Message button
  Then user is displayed error message  
  
  Scenario: Verify user is able to access the Book an Appointment option from anywhere in the website
  Given user lands in Transfotech Academy homepage
  And user is browsing through the Transfotech Academy homepage
  And user clicks on Book an appointment tab
  Then user can successfully interact with the book an appointment functionality
  
  Scenario Outline: Verify user still gets error message if Phone Number is missing 
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  And user fills up "<yourname>","<email>","<appointmentsubject>","<validdate>","<message>" but phonenumber
  When user clicks on Send Message button
  Then user is displayed error message  
  
  
  Scenario Outline: Verify user still gets error message if Email is missing
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  And user fills up "<yourname>","<phonenumber>","<appointmentsubject>","<validdate>","<message>" but email
  When user clicks on Send Message button
  Then user is displayed error message  
  
  Scenario Outline: Verify user still gets error message if Appointment Subject is missing
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  And user fills up "<yourname>","<phonenumber>","<email>","<validdate>","<message>" but appointmentsubject
  When user clicks on Send Message button
  Then user is displayed error message  
  
  Scenario Outline: Verify user still gets error message if mm/dd/yyyy is missing
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  And user fills up  "<yourname>","<phonenumber>","<email>","<appointmentsubject>","<message>" but date
  When user clicks on Send Message button
  Then user is displayed error message  
  
  Scenario Outline: Verify user still gets error message if Message is missing
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  And user fills up "<yourname>","<phonenumber>","<email>","<appointmentsubject>","<validdate>" but message
  When user clicks on Send Message button
  Then user is displayed error message  
  
  Scenario Outline:  Verify user gets error messages if user enters invalid Appointment Subject
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  And user fills up "<yourname>","<phonenumber>","<email>","<validdate>","<message>" but invalidappointmentsubject "<invalidappointmentsubject>"
  When user clicks on Send Message button
  Then user is displayed error message  
  

  Scenario Outline: Verify user gets error messages if user enters everything correct but invalid Message
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  And user fills up "<yourname>","<phonenumber>","<email>","<appointmentsubject>","<validdate>" but invalidmessage "<invalidmessage>"
  When user clicks on Send Message button
  Then user is displayed error message 
    
  ###########################################################################################################################
  
  Scenario Outline: Verify calendar drop down menu is visible for the user to select the date and interact
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  And user fills up all the required information "<yourname>","<phonenumber>","<email>","<appointmentsubject>","<validdate>","<message>"
  When user clicks on drop down calender option
  Then user can also access a drop down calender menu from the corner and interact with it
  
  Scenario Outline: Verify dates are placed in correct format after selecting them from the drop down menu
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  And user fills up all the required information "<yourname>","<phonenumber>","<email>","<appointmentsubject>","<validdate>","<message>"
  When user clicks on drop down calender option
  And user selects a different valid date
  Then the dates should display exactly what the user had selected form the drop down options
 
  Scenario: Verify user is able to exit the Book an Appointment tab if user does not wish to send any message
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  When user clicks on the exit button
  Then user can easily exit and brought to homepage
 
  
  
  
  
  Examples: #valid credentials
  
  |yourname|phonenumber|email|appointmentsubject|validdate|message|
  |Safin|123456789|testing@gmail.com|QA|07012021|Hello|      
  
  Examples: #invalid credentials 
  
  |invalidyourname|invalidphonenumber|invalidemail|invalidappointmentsubject|invaliddate|invalidmessage|
  |qqqqq|111222333444|random@hotmail.com|facebook|01012017|covid| 