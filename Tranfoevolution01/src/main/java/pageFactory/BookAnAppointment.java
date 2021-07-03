package pageFactory;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import base.Base;

public class BookAnAppointment extends Base {
 
	@FindBy(name="your-name")
	WebElement username;
	@FindBy(name="your-phone")
	WebElement phoneNumber;
	@FindBy(name="your-email")
	WebElement emailAddress;
	@FindBy(name="appointment-about")
	WebElement apptsub;
	@FindBy(name="appointment-date")
	WebElement apptdate;
	@FindBy(name="your-message")
	WebElement apptmsg;
	@FindBy(xpath="//*[@id=\"wpcf7-f3805-o1\"]/form/div[2]/div[5]/input")
	WebElement sendmsgbtn;
	@FindBy(xpath="//*[@id=\"sgpb-popup-dialog-main-div-wrapper\"]/div/img")
	WebElement exitbtn;
	@FindBy(xpath="//*[@id=\"site-navigation\"]/div[2]/div/a")
	WebElement bookapptbtn;
	
	public BookAnAppointment() { 
		PageFactory.initElements(driver, this);
	}
	
} 
