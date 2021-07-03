package step_defination;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.Assert;

import base.Base;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class BookAppointmentProcessTest extends Base {

	@Given("user lands in Transfotech Academy homepage")
	public void user_lands_in_transfotech_academy_homepage() {
	  
	}

	@When("user clicks on Book an appointment option")
	public void user_clicks_on_book_an_appointment_option() {
	   
	}

	@Then("user is brought to the Book an appointment tab with all the necessary fields visible")
	public void user_is_brought_to_the_book_an_appointment_tab_with_all_the_necessary_fields_visible() {
	 
	}

	@And("user clicks on Book an appointment tab")
	public void user_clicks_on_book_an_appointment_tab() {
		
	}

	@And("user fills up all the required information {string},{string},{string},{string},{string},{string}")
	public void user_fills_up_all_the_required_information(String yourname, String phonenumber, String email, String appointmentsubject, String validdate, String message) {
	   
	}

	@When("user clicks on Send Message button")
	public void user_clicks_on_send_message_button() {
	   
	}

	@Then("user should be able to view a success message")
	public void user_should_be_able_to_view_a_success_message() {
	   
	}

	@And("user does not fill-up the required information for booking an appointment")
	public void user_does_not_fill_up_the_required_information_for_booking_an_appointment() {
	  
	}

	@Then("user is displayed error message")
	public void user_is_displayed_error_message() {
	   
	}

	@And("user fills up all the invalid information {string},{string},{string},{string},{string},{string}")
	public void user_fills_up_all_the_invalid_information(String invalidyourname, String invalidphonenumber, String invalidemail, String invalidappointmentsubject, String invaliddate, String invalidmessage) {
	    
	}


	@Then("user is not displayed any success message")
	public void user_is_not_displayed_any_success_message() {
	  
	}

	@And("user fills up {string},{string},{string},{string},{string} but name" )
	public void user_fills_up_everything_but_name(String phonenumber, String email, String appointmentsubject, String validdate, String message) {
	    
	}

	@And("user fills up {string},{string},{string},{string},{string} but invalidyourname {string}")
	public void user_fills_up_everything_but_invalidyourname(String phonenumber, String email, String appointmentsubject, String validdate, String message, String invalidyourname) {
	    
	}

	@And("user should be able to view a success message at the bottom on the box")
	public void user_should_be_able_to_view_a_success_message_at_the_bottom_on_the_tab_box() {
	   
	}


	@And("user fills up {string},{string},{string},{string},{string} but invaliddate {string}")
	public void user_fills_up_but_invaliddate(String yourname, String phonenumber, String email, String appointmentsubject, String message, String invaliddate) {
	    
	}

	@And("user is browsing through the Transfotech Academy homepage")
	public void user_is_browsing_through_the_transfotech_academy_homepage() {
	    
	}

	@Then("user can successfully interact with the book an appointment functionality")
	public void user_can_successfully_interact_with_the_book_an_appointment_functionality() {
	    
	}

	@And("user fills up {string},{string},{string},{string},{string} but phonenumber")
	public void user_fills_up_everything_but_phonenumber(String yourname, String email, String appointmentsubject, String validdate, String message) {
	   
	}

	@And("user fills up {string},{string},{string},{string},{string} but email")
	public void user_fills_up_everything_but_email(String yourname, String phonenumber, String appointmentsubject, String validdate, String message) {
	    
	}

	@And("user fills up  {string},{string},{string},{string},{string} but appointmentsubject")
	public void user_fills_up_everything_but_appointmentsubject(String yourname, String phonenumber, String email, String validate, String message) {
	  
	}
	
	@And("user fills up  {string},{string},{string},{string},{string} but date")
	public void user_fills_up_everything_but_date(String yourname, String phonenumber, String email, String appointmentsubject, String message) {
	    
	}
	
	@And("user fills up  {string},{string},{string},{string},{string} but message")
	public void user_fills_up_everything_but_message(String yourname, String phonenumber, String email, String appointmentsubject, String validate) {
	    
	}
	
	@And("user fills up  {string},{string},{string},{string},{string} but invalidappointmentsubject {string}" )
	public void user_fills_up_everything_but_invalidappointmentsubject(String yourname, String phonenumber , String email, String validate, String message, String invalidappointmentsubject) {
	   
	}
	
	@And("user fills up  {string},{string},{string},{string},{string} but invalidmessage {string}")
	public void user_fills_up_everything_but_invalidmessage(String yourname, String phonenumber, String email, String appointmentsubject, String validdate, String invalidmessage) {
	   
	}

	@When("user clicks on drop down calender option")
	public void user_clicks_on_drop_down_calender_option() {
	        
	    }

	@Then("user can also access a drop down calender menu from the corner and interact with it")
	public void user_can_also_access_a_drop_down_calender_menu_from_the_corner_and_interact_with_it() {
	        
	    }

	@Then("the dates should display exactly what the user had selected form the drop down options")
    public void the_dates_should_display_exactly_what_the_user_had_selected_form_the_drop_down_options()  {
        
    }

    @And("user selects a different valid date")
    public void user_selects_a_different_valid_date()  {
       
    }

    
    @When("user clicks on the exit button")
    public void user_clicks_on_the_exit_button()  {
        
    }

    @Then("user can easily exit and brought to homepage")
    public void user_can_easily_exit_and_brought_to_homepage() {
        
    }

}

