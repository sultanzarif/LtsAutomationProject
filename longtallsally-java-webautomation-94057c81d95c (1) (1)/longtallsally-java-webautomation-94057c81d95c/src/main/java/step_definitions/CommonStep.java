package step_definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.apache.log4j.Logger;
import org.testng.Assert;
import page_objects.CommonPage;
import utils.DriverFactory;
import utils.SharedDriver;

public class CommonStep {

    private static Logger LOG = Logger.getLogger(CommonStep.class);
    private CommonPage mCommonPage;

    public CommonStep(SharedDriver driver, CommonPage commonPage) {
        mCommonPage = commonPage;
    }

    @Then("^User should return homepage successfully$")
    public void user_should_return_homepage_successfully() {
        LOG.info("User is returned homepage successfully!");
    }

    @Then("^User should create an account successfully$")
    public void user_should_create_an_account_successfully() {
        mCommonPage.checkAccount();
    }

    @Then("The url should not contains option")
    public void the_url_should_not_contains_option() {
        String URL = DriverFactory.getDriver().getCurrentUrl();
        if (!URL.contains("/p?option=")) {
            LOG.info("The URL is correct! The URL does not contain the '/p?option=!'");
        } else {
            Assert.fail("The URL should not contain the '/p?option=!'");
        }
    }

    @Then("The url should contains option")
    public void the_url_should_contains_option() throws InterruptedException {
        Thread.sleep(1000);
        String URL = DriverFactory.getDriver().getCurrentUrl();
        LOG.info("URL is : " + DriverFactory.getDriver().getCurrentUrl());
        if (URL.contains("/p?option=")) {
            LOG.info("The URL is correct! The URL contains the '/p?option=!'");
        } else {
            Assert.fail("The URL should contain the '/p?option=!'");
        }
    }

    @Then("The warning message which is please select a size should appear \"([^\"]*)\"$")
    public void the_warning_message_which_is_please_select_a_size_should_appear(String quickViewPdp) {
        mCommonPage.checkSizeAlert(quickViewPdp);
    }

    @Then("The element should include TALL text from the recently view carousel \"([^\"]*)\"$")
    public void the_element_should_include_TALL_Text_from_the_recently_view_carousel(String locale) {
        mCommonPage.checkProductImageElement(locale);
    }

    @And("Browser tab should include TALL text {string}")
    public void browserTabShouldIncludeTALLText(String locale) {
        mCommonPage.checkBrowserText(true, locale);
    }

    @And("Browser tab should not include TALL text {string}")
    public void browserTabShouldNotIncludeTALLText(String locale) {
        mCommonPage.checkBrowserText(false, locale);
    }
}