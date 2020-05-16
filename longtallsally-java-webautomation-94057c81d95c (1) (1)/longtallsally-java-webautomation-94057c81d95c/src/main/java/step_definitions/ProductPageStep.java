package step_definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import page_objects.ProductPage;
import utils.SharedDriver;

public class ProductPageStep {

    private ProductPage mProductPage;

    public ProductPageStep(SharedDriver driver, ProductPage productPage) {
        mProductPage = productPage;
    }

    @And("^User picks a random colour$")
    public void user_picks_a_random_colour() {
        mProductPage.selectRandomColour();
    }

    @And("^User picks a random size from \"([^\"]*)\"$")
    public void user_picks_a_random_size_from(String quickViewPdp) {
        mProductPage.selectRandomSize(quickViewPdp);
    }

    @And("^User clicks add to bag button \"([^\"]*)\"$")
    public void user_clicks_add_to_bag_button(String quickViewPdp) {
        mProductPage.clickAddToBagButton(quickViewPdp);
    }

    @Then("^User clicks shopping bag checkout button$")
    public void user_click_shopping_bag_checkout_button() {
        mProductPage.clickShoppingBagCheckoutButton();
    }

    @And("User checks product entities {string}")
    public void user_checks_product_entities(String productEntities) {
        mProductPage.checkProductEntities(productEntities);
    }

    @When("User clicks add to wishlist button {string}")
    public void user_clicks_add_to_wishlist_button(String quickViewPdp) {
        mProductPage.clickAddToWishlist(quickViewPdp);
    }

    @Then("The product should have more than one color")
    public void the_product_color_should_be_more_than_one() {
        mProductPage.checkProductColor();
    }

    @And("User closes add to bag popup")
    public void user_closes_add_to_bag_popup() {
        mProductPage.closeAddToBagPopup();
    }
}