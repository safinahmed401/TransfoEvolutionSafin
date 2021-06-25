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

 Feature: Book an appointment functionality box layout
 
 As a candidate to be able to access the book an appointment tab properly and clearly without 
 any problems the Book an Appointment tab/box should have a proper layout.
 
 Scenario: Verify calendar drop down menu is visible for the user to select the date
 Given user lands in Transfotech Academy homepage
 When user clicks on Book an appointment tab
 And user is able to fill up all the required information up until date or /mm/dd/yyyy
 Then user when ready to fill up or enter mm/dd/yyyy user can 
 access a drop down menu from the corner for them to easily enter a valid date
 
 Scenario: Verify Calender drop down menu is functional and user can interact with it
 Given user lands in Transfotech Academy homepage
 And user clicks on Book an appointment tab
 And user is able to fill up all the required information up until date or /mm/dd/yyyy
 When user is ready to fill up or enter mm/dd/yyyy user can access a 
 drop down menu from the corner for them to easily enter a valid date
 Then user is also able to interact and browse through the drop down calendar option
  
 Scenario: Verify dates are placed in correct format after selecting them from the drop down option
 Given user lands in Transfotech Academy homepage
 And user clicks on Book an appointment tab
 And user is able to fill up all the required information up until date or /mm/dd/yyyy
 When user is ready to fill up or enter mm/dd/yyyy user can access a drop 
 down menu from the corner for them to easily enter a valid date
 Then the dates should display exactly what the user had selected form the drop down options
 
 
 Scenario: Verify user is able to expand message field box in order to compensate for information required
 Given user lands in Transfotech Academy homepage
 And user clicks on Book an appointment tab
 And user is able to fill up all the required information up until "Message" option
 When user tries to send more information as their message
 Then user shall also be able to expand the message box in order to view their messages if its long/big
 
 Scenario: Verify message field box when expanded does not interfere with other required fields
 Given user lands in Transfotech Academy homepage
 When user clicks on Book an appointment tab
 And user is able to fill up all the required information up until "Message" option
 And user tries to send more information as their message
 And user shall also be able to expand the message box in order to view their messages if its long/big
 Then after expanding the box it should not interfere with the other fields that are in the box
 
 Scenario: Verify there is a scroll bar for user to have a better visual incase they have alot of information
 Given user lands in Transfotech Academy homepage
 And user clicks on Book an appointment tab
 When user fills up all the 
 required information "Your name, Phone Number, Email, Appointment Subject, mm/dd//yyyy, message"
 Then if user wishes to make sure all information are placed correctly they
 can browse through the box/tab with the scroll bar provided at the bottom
 
 Scenario: Verify user is able to see an icon indicating that their message is being sent out
 Given user lands in Transfotech Academy homepage
 And user clicks on Book an appointment tab
 And user fills up all the 
 required information "Your name, Phone Number, Email, Appointment Subject, mm/dd//yyyy, message"
 When user clicks on "Send Message" button
 And a small wait icon should be displayed while the message
 is being send for the better understanding of the user that their message is being sent
 Then user should be able to view a success message at the bottom on the tab/box
 
 Scenario: Verify the wait icon is only being displayed only if user
 is trying to send a message and not dummy clicks and immediately is shown error without wait
 Given user lands in Transfotech Academy homepage
 And user clicks on Book an appointment tab
 When user does not fills in any information and just dummy clicks on the "Send Message" option
 Then should not be displayed any wait icon an error is displayed immediately
 
 Scenario: Verify user is able to exit the Book an Appointment tab if user does not wish to send any message
 Given user lands in Transfotech Academy homepage
 When user clicks on Book an appointment tab
 Then user can easily exit this option anytime if user changed their mind and wants to book an appointment later
 
 Scenario: Verify Book an Appointment tab/box is set back to default after user exits the box halfway incomplete   
 Given user lands in Transfotech Academy homepage
 When user clicks on Book an appointment tab
 And user is filling up the required information's but decides to exit halfway
 Then upon slectecting the Book an appointment option again all the information
 entered should be erased and set back to default



 