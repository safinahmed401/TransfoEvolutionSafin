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
 
 
  Scenario: Verify user is able to click Book an appointment option 
  and is able to view the Tab/box with all the required fields in it
  Given user lands in Transfotech Academy homepage
  When user clicks on Book an appointment tab
  Then user is brought to the Book an appointment box with all the necessary fields 
  ""Your name, Phone Number, Email, Appointment Subject, mm/dd//yyyy, message" visible
  
  Scenario: Verify information entered is not case sensitive
  Given user lands in Transfotech Academy homepage
  When user clicks on Book an appointment tab
  Then user fills up all the required
  information "Your name, Phone Number, Email, Appointment Subject, mm/dd//yyyy, message"
  
  Scenario: Verify user is able to send message succesfully and a success  message should display
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  And user fills up all the required information
  "Your name, Phone Number, Email, Appointment Subject, mm/dd//yyyy, message"
  When user is finished filling up the required information correctly
  And user clicks on "Send Message" button
  Then user should be able to view a success message at the bottom on the tab/box
  
  Scenario: Verify user can not send any messages without filling up the required fields properly
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  When user does not fill-up the required information for booking an appointment
  Then user clicks on "Send Message" button
  
  Scenario: Verify user can not send any message if any field they provide some wrong/gibberish data
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  When user fills up all the required 
  information "Your name, Phone Number, Email, Appointment Subject, mm/dd//yyyy, message"
  Then user clicks on send message 
  
  Scenario: Verify a success message is not displayed 
  if reuqired fields are empty and user tries clicks on the "Send message" option
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  And user does not fillup any information and tries to send a message
  When user clicks Send Message button
  Then user is not displayed any success message
  
  Scenario: Verify user is not able to send messages without 
  required filling up the required information and user get error messages displayed
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  When user does not fill up the required information and clicks send message button
  Then user get error messages displayed
  
  Scenario: Verify user still gets error message if "Name" is missing 
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  When user fills up everything but Name
  Then user clicks on Send Message and gets error messages and cannot sent message successfully
  
  
  
  Scenario: Verify user gets error messages if user enters everything correct but random or wrong "Name"
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  And user enters valid and correct information accept wrong/random/gibberish Name
  Then user clicks on Send Message and gets error messages and cannot sent message successfully
  
  Scenario: Verify error messages are displayed in the correct places
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  When user leaves any information blank
  And user clicks on "Send Message" button
  Then user get error messages showing underneath every error field and also at the end of the box/tab
  
  Scenario:  Verify user is not able to send message more 
  than one time using the same information in the required fields
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  And user fills up all the 
  required information "Your name, Phone Number, Email, Appointment Subject, mm/dd//yyyy, message"
  And user when is finished filling up the required information correctly
  When user clicks on "Send Message" button
  And user should be able to view a success message at the bottom on the tab/box
  When user fills up all the 
  required information "Your name, Phone Number, Email, Appointment Subject, mm/dd//yyyy, message" with the same data again
  and user clicks on "Send Message" button
  Then user should not be able to 
  send message and error should occur as user is trying to send duplicate information
  
  Scenario: Verify user is not able to book an appointment with entering past dates
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  When user fills in all the required information but puts a wrong date
  And user tried to send a message by clicking "Send Message" option
  Then user should not be able to send a message as information is wrong and should get an error message
  
  Scenario: Verify user does not have to wait a long period of time for the appointment message to be sent out
  Given user lands in Transfotech Academy homepage
  When user clicks on Book an appointment tab
  And user fills up all the 
  required information "Your name, Phone Number, Email, Appointment Subject, mm/dd//yyyy, message" 
  Then user should be able to send the message successfully and should not have to wait
            
  Scenario: Verify user is able to access the Book an Appointment option from anywhere in the website
  Given user lands in Transfotech Academy homepage
  And user is browsing through the Transfotech Academy homepage
  When user wants to book an appointment and is in any other
  page of the website other than homepage and clicks "Book an Appointment" button
  Then user can successfully interact with the book an appointment functionality
  
  Scenario: Verify user still gets error message if "Phone Number" is missing 
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  When user fills up everything but Phone Number
  Then user clicks on Send Message and gets error messages and cannot sent message successfully
  
  Scenario: Verify user still gets error message if "Email" is missing
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  When user fills up everything but the Email
  Then user clicks on Send Message and gets error messages and cannot sent message successfully
  
  Scenario: Verify user still gets error message if "Appointment Subject" is missing
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  When user fills up everything but Appointment Subject
  Then user clicks on Send Message and gets error messages and cannot sent message successfully
  
  Scenario: Verify user still gets error message if "mm/dd/yyyy" is missing
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  When user fills up everything but mm/dd/yyy
  Then user clicks on Send Message and gets error messages and cannot sent message successfully
  
  Scenario: Verify user still gets error message if "Message" is missing
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  When user fills up everything but Message
  Then user clicks on Send Message and gets error messages and cannot sent message successfully
  
  Scenario: Verify user gets error messages if user enters everything correct but 
  random or wrong "Phone Number"
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  And user enters valid and correct information accept wrong/random/gibberish Phone Number
  Then user clicks on Send Message and gets error messages and cannot sent message successfully
    
  Scenario:  Verify user gets error messages if user enters 
  everything correct but random or wrong "Appointment Subject"
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  And user enters valid and correct information accept wrong/random/gibberish Appointment Subject
  Then user clicks on Send Message and gets error messages and cannot sent message successfully
  
  Scenario: Verify user gets error messages if user enters everything correct but random or wrong "mm/dd/yyyy"
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  And user enters valid and correct information accept invalid/wrong mm/dd/yyyy
  Then user clicks on Send Message and gets error messages and cannot sent message successfully
           
  Scenario: Verify user gets error messages if user enters everything correct but random or wrong "Message"
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  And user enters valid and correct information accept wrong/random/gibberish Message
  Then user clicks on Send Message and gets error messages and cannot sent message successfully
    
  Scenario:  Verify the field "Phone Number" only accepts a valid data with some restriction 
  Given user lands in Transfotech Academy homepage
  And user clicks on Book an appointment tab
  And user enters valid and correct information in rest of the field and 
  enters an invalid phone number other than numbers and with no restriction
  Then user clicks on Send Message and gets error messages and cannot sent message successfully
  
            
  
    
