package runner;

import org.junit.runner.RunWith;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(	features = "C:\\Users\\Safin\\git\\repository2\\Tranfoevolution01\\src\\main\\java\\feature",
					glue = "step_definition",
					plugin = {"pretty", "html:target/HtmlReports/report.html", "json:target/HtmlReports-report-json"},
					monochrome = true
		)

public class Runner {

}