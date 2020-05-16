package step_definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import page_objects.CheckoutPage;
import utils.SharedDriver;

public class CheckoutPageStep {

    private CheckoutPage mCheckoutPage;

    public CheckoutPageStep(SharedDriver driver, CheckoutPage checkoutPage) {
        mCheckoutPage = checkoutPage;
    }

    @And("^User enters customer details$")
    public void user_enters_customer_details() {
        mCheckoutPage.entersCustomerDetails();
    }

    @And("^User enters address details on the checkout page \"([^\"]*)\"$")
    public void user_enters_address_details_on_the_checkout_page(String locale) throws Throwable {
        mCheckoutPage.entersAddressDetailsOnCheckOut(locale);
    }

    @And("^User enters payment detail for \"([^\"]*)\" \"([^\"]*)\"$")
    public void user_enters_payment_detail(String paymentType, String locale) throws Exception {
        mCheckoutPage.entersPaymentDetails(paymentType, locale);
    }

    @Then("^User clicks submit order button \"([^\"]*)\"$")
    public void user_clicks_submit_order_button(String paymentType) {
        mCheckoutPage.submitOrderButton(paymentType);
    }

    @And("^User chooses delivery type based on locale \"([^\"]*)\" \"([^\"]*)\"$")
    public void user_chooses_delivery_type_based_on_locale(String deliveryType, String locale) {
        mCheckoutPage.selectDeliveryType(deliveryType, locale);
    }

    @Then("^User clicks submit pay by klarna button \"([^\"]*)\"$")
    public void user_clicks_submit_pay_by_klarna_button(String paymentType) {
        mCheckoutPage.submitPayByKlarnaButton(paymentType);
    }

    @And("^User enters the postcode to find the store$")
    public void user_enters_the_postcode_to_find_the_store() {
        mCheckoutPage.findCollectPlusStore();
    }

    @And("^User clicks delivery continue button based on delivery type \"([^\"]*)\"$")
    public void user_clicks_delivery_continue_button_based_on_delivery_type(String deliveryType) {
        mCheckoutPage.deliveryContinueButton(deliveryType);
    }

    @And("^User adds billing address for collect plus$")
    public void user_adds_billing_address_for_collect_lus() throws Exception {
        mCheckoutPage.addBillingAddressOnCheckOut();
    }

    @And("^User enters customer details with password$")
    public void user_enters_customer_details_with_password() {
        mCheckoutPage.entersCustomerDetailsWithPassword();
    }

    @And("^User enters security code$")
    public void user_enters_security_code() {
        mCheckoutPage.enterSecurityCode();
    }

    @And("^User enters address details on the checkout page for Channel Island Delivery type$")
    public void user_enters_address_details_on_the_checkout_page_for_channel_island_delivery_type() {
        mCheckoutPage.enterAddressForChannelIsland();
    }

    @And("User selects pay by card option \"([^\"]*)\"")
    public void user_selects_pay_by_card_option(String locale) {
        mCheckoutPage.clickPayByCard(locale);
    }

    @And("User click delivery and collection continue button")
    public void user_click_delivery_and_collection_continue_button() {
        mCheckoutPage.clickDeliveryContinue();
    }

    @Then("The Delivery price should be added to subtotal {string} {string} {string}")
    public void the_delivery_price_should_be_added_to_subtotal(String deliveryAmountQA, String deliveryAmountPreprod,
            String locale) {
        mCheckoutPage.checkDeliveryPrice(deliveryAmountQA, deliveryAmountPreprod, locale);
    }
}