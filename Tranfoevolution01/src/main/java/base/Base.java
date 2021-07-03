 package base;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class Base {     //constructor
	
      public static Properties prop;

      public static WebDriver driver;
      public Base(){
      try {
      prop = new Properties();
      FileInputStream file = new FileInputStream("C:\\Users\\Safin\\Desktop\\java workspace"
		+ "\\TransfoEvolution\\src\\main\\java\\propertyFiles\\config.properties");

      prop.load(file);
}     catch (FileNotFoundException e) {
      e.printStackTrace();
}     catch (IOException e) {
      e.printStackTrace();
}
}


      public static void initialization() {
    	  
      System.setProperty(prop.getProperty("chromeKey"), prop.getProperty("chromePath"));
      driver = new ChromeDriver();
      driver.manage().window().maximize();
      driver.manage().timeouts().pageLoadTimeout(20, TimeUnit.SECONDS);
      driver.manage().timeouts().implicitlyWait(20, TimeUnit.SECONDS);
      driver.get(prop.getProperty("url"));
}



      public static void tearDown() {
      driver.close();


}

}







