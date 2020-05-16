package step_definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import page_objects.MyWishlistPage;
import utils.SharedDriver;

public class MyWishlistPageStep {

    private MyWishlistPage mMyWishlistPage;

    public MyWishlistPageStep(SharedDriver driver, MyWishlistPage myWishlistPage) {
        mMyWishlistPage = myWishlistPage;
    }

    @Then("The product should be stored in my wishlist page")
    public void the_product_should_be_stored_in_my_wishlist_page() {
        mMyWishlistPage.checkProductOnWishlistPage();
    }

    @And("User clicks add to bag button on the wishlist page")
    public void user_clicks_add_to_bag_button_on_the_wishlist_page() throws InterruptedException {
        mMyWishlistPage.addToBagFromWishlist();
    }
}