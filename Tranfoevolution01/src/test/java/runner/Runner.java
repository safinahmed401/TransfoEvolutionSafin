package runner;

import org.junit.runner.RunWith;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(	features = "C:\\Users\\Safin\\git\\repository\\TransfoEvolution\\src\\test\\java\\step_defination",
					glue = "step_definition",
					plugin = {"pretty", "html:target/HtmlReports/report.html", "json:target/DemoTours-report-json"},
					monochrome = true
		)

public class Runner {

}