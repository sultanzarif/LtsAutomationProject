package step_definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import page_objects.ProductListPage;
import utils.SharedDriver;

public class ProductListPageStep {

    private ProductListPage mProductListPage;

    public ProductListPageStep(SharedDriver driver, ProductListPage productListPage) {
        mProductListPage = productListPage;
    }

    @And("^User picks a random product from \"([^\"]*)\"$")
    public void user_picks_a_random_product(String quickViewPdp) {
        mProductListPage.selectRandomProduct(quickViewPdp);
    }

    @When("User send the random product to the wishlist on the category page")
    public void user_send_the_random_product_to_the_wishlist_on_the_page() throws InterruptedException {
        mProductListPage.addToWishlistRandomly();
    }

    @Then("The heart icon number should be increased by one")
    public void the_heart_icon_number_should_be_increased_by_one() {
        mProductListPage.checkHeartIconNumber();
    }

    @And("User picks a random product which has +color option")
    public void user_picks_a_random_product_which_has_plus_color_option() {
        mProductListPage.clickPlusColor();
    }

    @And("User picks a random product and clicks product image")
    public void user_picks_a_random_product_and_clicks_product_image() {
        mProductListPage.clickProductImage();
    }

    @And("User picks a specific product which has a price under bag threshold for {string}")
    public void user_picks_a_specific_product_which_has_a_price_under_bag_threshold_for(String locale) {
        mProductListPage.selectSpecificProduct(locale);
    }

    @And("User selects filter menu {string}")
    public void user_selects_filter_menu(String filterMenu) {
        mProductListPage.selectFilterMenu(filterMenu);
    }

    @And("User selects filter {string} {string}")
    public void user_selects_filter(String filter, String locale) throws InterruptedException {
        mProductListPage.selectFilter(filter, locale);
    }

    @And("User send the first product to the wishlist on the category page")
    public void user_send_the_first_product_to_the_wishlist_on_the_category_page() {
        mProductListPage.addFirstProductToWishlist();
    }

    @And("User picks a specific product from {string}")
    public void user_picks_a_specific_product_from(String quickViewPdp) throws InterruptedException {
        mProductListPage.selectFirstProduct(quickViewPdp);
    }

    @Then("The clear filters button should appear")
    public void the_clear_filters_button_should_appear() {
        mProductListPage.clearFiltersButtonVisible(true);
    }

    @When("User clicks clear filters button")
    public void user_clicks_clear_filters_button() {
        mProductListPage.clearFiltersButtonClick();
    }

    @Then("All filters should be un-click again")
    public void all_filters_should_be_unclick_again() {
        mProductListPage.clearFiltersButtonVisible(false);
    }

    @And("User selects sort by {string}")
    public void user_selects_sort_by(String sortBy) throws InterruptedException {
        mProductListPage.selectSortBy(sortBy);
    }

    @Then("The product should be listed correctly {string} {string}")
    public void the_product_should_be_listed_correctly(String sortBy, String locale) {
        mProductListPage.productListCheckAfterSorting(sortBy, locale);
    }

    @And("User clicks the product and opens the product detail page")
    public void user_clicks_the_product_and_opens_the_product_detail_page() {
        mProductListPage.selectProductFromSearchPage();
    }
}