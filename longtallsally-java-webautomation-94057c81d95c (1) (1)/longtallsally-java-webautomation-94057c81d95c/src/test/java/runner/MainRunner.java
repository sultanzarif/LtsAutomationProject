package runner;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;
import org.testng.ITestContext;
import org.testng.ITestResult;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.DataProvider;
import utils.DriverFactory;

@CucumberOptions(features = { "src/test/java/feature/" }, tags = { "@rundaily" }, glue = {
        "step_definitions" }, monochrome = true, plugin = { "pretty", "html:target/site/cucumber-pretty",
        "json:target/cucumber-report.json" })

public class MainRunner extends AbstractTestNGCucumberTests {

    @AfterMethod(alwaysRun = true)
    public static void afterMethod(ITestResult result) {
        DriverFactory.removeDriver();
    }

    @Override
    @DataProvider(parallel = true)
    public Object[][] scenarios() {
        return super.scenarios();
    }

    @BeforeClass
    public void setupClassName(ITestContext context) {
        context.getCurrentXmlTest().getSuite().setDataProviderThreadCount(3);
        context.getCurrentXmlTest().getSuite().setPreserveOrder(false);
    }
}