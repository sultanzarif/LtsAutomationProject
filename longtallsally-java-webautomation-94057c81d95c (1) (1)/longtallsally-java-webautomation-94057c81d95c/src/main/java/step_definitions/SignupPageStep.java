package step_definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.When;
import page_objects.SignupPage;
import utils.SharedDriver;

public class SignupPageStep {

    private SignupPage mSignupPage;

    public SignupPageStep(SharedDriver driver, SignupPage signupPage) {
        mSignupPage = signupPage;
    }

    @And("User clicks to sign up button")
    public void user_clicks_to_sign_up_button() {
        mSignupPage.clickSignupButton();
    }

    @When("User clicks submit button on sign up popup")
    public void user_click_submit_button_on_sign_up_popup() {
        mSignupPage.clickSubmitButton();
    }

    @And("Email signup confirmation popup should be appear")
    public void email_signup_confirmation_popup_should_be_appear() {
        mSignupPage.checkSignupConfirmationPopup();
    }

    @And("Continue Shopping button should be clickable")
    public void continue_shopping_button_should_be_clickable() {
        mSignupPage.checkContinueShoppingButton();
    }

    @And("User enters email address on the signup popup")
    public void user_enters_email_address_on_the_signup_popup() throws InterruptedException {
        mSignupPage.enterEmailAddressForSignup();
    }

    @And("User selects a country from the list on the signup popup \"([^\"]*)\"$")
    public void user_selects_a_country_from_the_list_on_the_signup_popup(String locale) {
        mSignupPage.selectsCountryForSignup(locale);
    }

    @And("User clicks continue shopping button")
    public void user_clicks_continue_shopping_button() {
        mSignupPage.clickContinueShoppingButton();
    }

    @When("User clicks submit button on sign up popup when logged in")
    public void user_clicks_submit_button_on_sign_up_popup_when_logged_in() {
        mSignupPage.clickSubmitButtonWhenLoggedIn();
    }
}