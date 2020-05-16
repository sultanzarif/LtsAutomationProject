package step_definitions;

import io.cucumber.java.en.And;
import page_objects.LoginPage;
import utils.SharedDriver;

public class LoginPageStep {

    private LoginPage mLoginPage;

    public LoginPageStep(SharedDriver driver, LoginPage loginPage) {
        mLoginPage = loginPage;
    }

    @And("^User logs in as a guest or new customer on the checkout page$")
    public void user_logs_in_as_a_guest_or_new_customer_on_the_checkout_page() throws Exception {
        mLoginPage.logInAsGuestOrNewCustomerWhileShopping();
    }

    @And("^User logs in as a new customer from my account page based on locale \"([^\"]*)\"$")
    public void user_logs_in_as_a_new_customer_from_my_account_page_based_on_locale(String locale)
            throws InterruptedException {
        mLoginPage.logInAsNewCustomerFromMyAccountPage(locale);
    }

    @And("^User logs in as an existing customer on the checkout page based on locale \"([^\"]*)\"$")
    public void user_logs_in_as_an_existing_customer_on_the_checkout_page_based_on_locale(String locale)
            throws Exception {
        mLoginPage.logInAsExistingCustomerWhileShopping(locale);
    }

    @And("^User logs in as a guest customer from my account page$")
    public void user_logs_in_as_a_guest_customer_from_my_account_page() {
        mLoginPage.logInAsGuestCustomerOnMyAccountPage();
    }

    @And("User logs in with continue as guest customer {string}")
    public void user_logs_in_with_continue_as_guest_customer(String locale) {
        mLoginPage.continueAsGuestLogin(locale);
    }

    @And("User clicks continue as guest button")
    public void user_clicks_continue_as_guest_button() {
        mLoginPage.clickContinueAsGuestButton();
    }
}