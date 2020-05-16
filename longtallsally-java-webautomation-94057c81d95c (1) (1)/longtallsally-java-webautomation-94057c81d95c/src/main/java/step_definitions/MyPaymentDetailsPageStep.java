package step_definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import page_objects.MyPaymentDetailsPage;
import utils.SharedDriver;

public class MyPaymentDetailsPageStep {

    private MyPaymentDetailsPage mMyPaymentDetailsPage;

    public MyPaymentDetailsPageStep(SharedDriver driver, MyPaymentDetailsPage myPaymentDetailsPage) {
        mMyPaymentDetailsPage = myPaymentDetailsPage;
    }

    @And("^User clicks new payment card button$")
    public void user_clicks_new_payment_card_button() {
        mMyPaymentDetailsPage.clickNewPaymentCard();
    }

    @And("^User adds new payment card details$")
    public void user_adds_new_payment_card() throws Exception {
        mMyPaymentDetailsPage.enterNewPaymentCardDetail();
    }

    @And("^User adds a billing address based on local \"([^\"]*)\"$")
    public void user_adds_a_billing_address_based_on_locale(String locale) {
        mMyPaymentDetailsPage.addBillingAddress(locale);
    }

    @When("^User submits add payment card button$")
    public void user_submits_add_payment_card_button() {
        mMyPaymentDetailsPage.submitPaymentCard();
    }

    @Then("^The card should be saved properly on the payment details page$")
    public void the_card_should_be_saved_properly_on_the_payment_details_page() throws InterruptedException {
        mMyPaymentDetailsPage.checkCreditCard();
    }
}