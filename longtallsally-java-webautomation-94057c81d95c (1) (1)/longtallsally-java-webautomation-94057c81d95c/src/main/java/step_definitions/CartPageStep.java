package step_definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import page_objects.CartPage;
import utils.SharedDriver;

public class CartPageStep {

    private CartPage mCartPage;

    public CartPageStep(SharedDriver driver, CartPage cartPage) {
        mCartPage = cartPage;
    }

    @And("^User clicks the checkout button$")
    public void user_clicks_the_checkout_button() {
        mCartPage.clickCheckoutButton();
    }

    @Then("The product should be stored in the shopping bag page")
    public void the_product_should_be_stored_in_the_shopping_bag_page() {
        mCartPage.checkProductOnShoppingBag("true");
    }

    @When("User clicks remove link for the selected product")
    public void user_clicks_remove_link_for_the_selected_product() {
        mCartPage.clickRemoveProductLink();
    }

    @Then("The product should be removed in the shopping bag {string}")
    public void the_product_should_be_removed_in_the_shopping_bag(String isRemoveProduct) {
        mCartPage.checkProductOnShoppingBag(isRemoveProduct);
    }

    @And("User clicks remove product as {string}")
    public void user_clicks_remove_product_as(String isRemoveProduct) {
        mCartPage.isClickRemoveProduct(isRemoveProduct);
    }

    @And("User clicks edit link on cart page")
    public void user_clicks_edit_link_on_cart_page() {
        mCartPage.clickEditLink();
    }

    @And("User increases quantity for the product")
    public void user_increases_quantity_for_the_product() {
        mCartPage.increaseQuantity();
    }

    @When("User clicks confirm button on the edit popup")
    public void user_clicks_confirm_button_on_the_edit_popup() {
        mCartPage.clickEditSubmit();
    }

    @Then("The product quantity should be updated")
    public void the_product_quantity_should_be_updated() throws InterruptedException {
        mCartPage.checkProductQuantity();
    }

    @Then("The product price should be updated {string}")
    public void the_product_price_should_be_updated(String locale) {
        mCartPage.checkProductPrice(locale);
    }

    @Then("The shopping bag count should be update")
    public void the_shopping_bag_count_should_be_update() throws InterruptedException {
        mCartPage.checkBagIcon();
    }

    @And("User decrease quantity to zero for the product")
    public void user_decrease_quantity_to_zero_for_the_product() {
        mCartPage.decreaseQuantity();
    }
}