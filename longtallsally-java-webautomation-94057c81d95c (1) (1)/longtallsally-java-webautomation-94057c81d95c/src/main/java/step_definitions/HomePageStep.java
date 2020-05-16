package step_definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.apache.log4j.Logger;
import page_objects.CommonPage;
import page_objects.HomePage;
import utils.DriverFactory;
import utils.SharedDriver;

public class HomePageStep {

    private static Logger LOG = Logger.getLogger(HomePageStep.class);
    private HomePage mHomePage;
    private CommonPage mCommonPage;

    public HomePageStep(SharedDriver driver, HomePage homePage, CommonPage commonPage) {
        mHomePage = homePage;
        mCommonPage = commonPage;
    }

    @Given("^User navigates to the home website \"([^\"]*)\"$")
    public void user_navigates_to_the_website_with(String locale) {
        LOG.info("User navigates to the website");
        LOG.info("URL : " + DriverFactory.getUrl());
        DriverFactory.getDriver().get(DriverFactory.getUrl());
        if(locale.equals("uk")){
            mCommonPage.closeCookiePopup();
        }
    }

    @Then("^User clicks My Account link before login$")
    public void user_clicks_my_account_link_before_login() {
        mHomePage.clickMyAccountLinkBeforeLogin();
    }

    @When("^User hovers over the category menu link$")
    public void user_hovers_over_the_category_menu_link() {
        mHomePage.clickCategoryMenu();
    }

    @And("^User clicks category page link \"([^\"]*)\"$")
    public void user_clicks_category_page_link(String locale) {
        mHomePage.clickCategoryLink(locale);
    }

    @Then("^User clicks My Account link after login$")
    public void user_clicks_my_account_link_after_login() {
        mHomePage.clickMyAccountLinkAfterLogin();
    }

    @And("^User changes the site to the locale \"([^\"]*)\"$")
    public void user_changes_the_site_to_the_locale(String locale) throws InterruptedException {
        mHomePage.changeLocalSite(locale);
    }

    @And("User clicks logo {string}")
    public void user_clicks_logo(String locale) throws InterruptedException {
        mHomePage.clickLogo(locale);
    }

    @And("User clicks the shopping bag icon")
    public void user_clicks_the_shopping_bag_icon() {
        mHomePage.clickShoppingBagIcon();
    }

    @And("User goes to wishlist page")
    public void user_goes_to_wishlist_page() {
        mHomePage.clickWishlistIcon();
    }

    @When("User clicks search icon")
    public void user_clicks_search_icon() {
        mHomePage.clickSearchIcon();
    }

    @And("User searches a keyword through search box \"([^\"]*)\"$")
    public void user_searches_a_keyword_through_search_box(String keyword) {
        mHomePage.searchKeyword(keyword);
    }

    @Then("Search page should be displayed \"([^\"]*)\"$")
    public void search_page_should_be_displayed(String keyword) {
        mHomePage.assertSearchPage(keyword);
    }

    @And("User enters email address to the signup box on the homepage")
    public void user_enters_email_address_to_the_signup_box_on_the_homepage() {
        mHomePage.enterEmailAddressForSignup();
    }

    @And("User clicks the service message link {string}")
    public void user_clicks_the_service_message_link(String serviceMessage) {
        mHomePage.checkServiceMessage(serviceMessage);
        mHomePage.clickServiceMessage(serviceMessage);
    }

    @When("The user navigates the previous page")
    public void the_user_navigates_the_previous_page() {
        mHomePage.navigatesPreviousPage();
    }

    @Then("The page should turn back to the homepage successfully")
    public void the_page_should_turn_back_to_the_homepage_successfully() {
        mHomePage.checkHomepage();
    }
}