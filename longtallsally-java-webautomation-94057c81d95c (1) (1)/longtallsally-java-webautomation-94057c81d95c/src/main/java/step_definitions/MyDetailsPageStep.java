package step_definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import page_objects.MyDetailsPage;
import utils.SharedDriver;

public class MyDetailsPageStep {

    private MyDetailsPage mMyDetailsPage;

    public MyDetailsPageStep(SharedDriver driver, MyDetailsPage myDetailsPage) {
        mMyDetailsPage = myDetailsPage;
    }

    @And("^User enters name, lastname and phones$")
    public void user_enters_name_lastname_and_phones() {
        mMyDetailsPage.enterMyDetails();
    }

    @And("User clicks customer preference edit button")
    public void user_clicks_customer_preference_edit_button() {
        mMyDetailsPage.clickCustomerPreferenceEditButton();
    }

    @And("User ticks all communication option to opt out")
    public void user_ticks_all_communication_option_to_opt_out() {
        mMyDetailsPage.selectAllCommunicationOption();
    }

    @And("User clicks OK button")
    public void user_clicks_OK_button() {
        mMyDetailsPage.clicksOKButtonForCommunicationPreference();
    }

    @And("User clicks save my details button")
    public void user_clicks_save_my_details_button() {
        mMyDetailsPage.saveMyDetails();
    }

    @Then("By Email option should be unclick")
    public void by_email_option_should_be_unclick() {
        mMyDetailsPage.checkEmailOption();
    }
}