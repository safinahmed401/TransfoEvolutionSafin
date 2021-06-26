
package step_defination;



import base.Main;
import io.cucumber.java.After;
import io.cucumber.java.Before;

public class Hooks extends Main{

	@Before
	public void loadBrowser() {
		initialization();
	}
	
	@After
	public void closeBrowser() {
		tearDown();
	}
}