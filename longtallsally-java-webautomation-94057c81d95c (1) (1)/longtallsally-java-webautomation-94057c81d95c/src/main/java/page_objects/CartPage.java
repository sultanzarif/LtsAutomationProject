package page_objects;

import org.apache.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;
import utils.Configs;
import utils.DriverFactory;
import utils.PropertyManager;

public class CartPage extends BasePage<CartPage> {

    private static Logger LOG = Logger.getLogger(CartPage.class);
    //region 'Elements'
    private final String KEY_CHECKOUT_BUTTON = "#cartPage-button-goto-checkout";
    private final String KEY_SHOPPING_BAG_PRODUCT = ".entry-details";
    private final String KEY_REMOVE_LINK = "#cartPage-link-remove-product-0";
    private final String KEY_REMOVE_LINK_YES = "#removeProduct-btn-yes";
    private final String KEY_REMOVE_LINK_NO = "#removeProduct-link-no";
    private final String KEY_EDIT_LINK = "#cartPage-link-edit-product-0";
    private final String KEY_EDIT_QUANTITY_UP = "#quickViewPopup-input-qty > div.spn-btn.up";
    private final String KEY_EDIT_QUANTITY_DOWN = "#quickViewPopup-input-qty > div.spn-btn.down";
    private final String KEY_EDIT_CONFIRM_BUTTON = "#quickViewPopup-btn-confirm";
    private final String KEY_PRODUCT_PRICE_ON_EDIT_PAGE =
            "body > div.modal.fade.in > div > div > div > div.modal-body.clearfix > div > div:nth-child(4) > section > div.price-swatches > div.price > span:nth-child(6)";
    private final String KEY_PRODUCT_PRICE_ON_CART_PAGE = ".prices .price";
    private final String KEY_CLOSE_EDIT_POPUP = "#quickViewPopup-btn-close-modal";
    private final String KEY_PRODUCT_COUNT = "tbody > tr:nth-child(2) .product-description > span:first-child";
    private final String KEY_BAG_ICON = "#minicartcomponent-link-bag > span.sprite.sprite-shopping-bag";
    //endregion

    String expectedCount = "2";
    private PropertyManager config = PropertyManager.getInstance();

    public CartPage() {
        PageFactory.initElements(DriverFactory.getDriver(), this);
        mDriver = DriverFactory.getDriver();
    }

    public void clickCheckoutButton() {
        myWaitsForElementToBeClickable(KEY_CHECKOUT_BUTTON);
        clickExecuteScriptString(KEY_CHECKOUT_BUTTON);
        LOG.info("Checkout button is clicked!");
    }

    public void checkProductOnShoppingBag(String isRemoveProduct) {
        if (isRemoveProduct.equals("false")) {
            if (isElementExist(KEY_SHOPPING_BAG_PRODUCT)) {
                myWaitsForVisibilityOfElementLocated(KEY_SHOPPING_BAG_PRODUCT);
                LOG.info("The product is exist in the shopping bag!");
            } else {
                Assert.fail("The product is not exist in the shopping bag!");
            }
        } else {
            LOG.info("The product is not exist in the shopping bag as expected!");
        }
    }

    public void clickRemoveProductLink() {
        myWaitsForElementToBeClickable(KEY_REMOVE_LINK);
        clickExecuteScriptString(KEY_REMOVE_LINK);
        LOG.info("The product is removed from the shopping bag!");
    }

    public void isClickRemoveProduct(String isRemoveProduct) {
        if (isRemoveProduct.equals("true")) {
            myWaitsForElementToBeClickable(KEY_REMOVE_LINK_YES);
            clickExecuteScriptString(KEY_REMOVE_LINK_YES);
            LOG.info("Yes button is clicked!");
        } else {
            myWaitsForElementToBeClickable(KEY_REMOVE_LINK_NO);
            clickExecuteScriptString(KEY_REMOVE_LINK_NO);
            LOG.info("No button is clicked!");
        }
    }

    public void clickEditLink() {
        myWaitsForElementToBeClickable(KEY_EDIT_LINK);
        clickExecuteScriptString(KEY_EDIT_LINK);
        LOG.info("The edit link is clicked successfully!");
    }

    public void increaseQuantity() {
        myWaitsForElementToBeClickable(KEY_EDIT_QUANTITY_UP);
        clickExecuteScriptString(KEY_EDIT_QUANTITY_UP);
        LOG.info("The product quantity is increased successfully!");
    }

    public void clickEditSubmit() {
        myWaitsForElementToBeClickable(KEY_EDIT_CONFIRM_BUTTON);
        clickExecuteScriptString(KEY_EDIT_CONFIRM_BUTTON);
        LOG.info("The submit button is clicked successfully!");
    }

    public void checkProductQuantity() throws InterruptedException {
        Thread.sleep(1000);
        String productCountText = mDriver.findElement(By.cssSelector(KEY_PRODUCT_COUNT)).getText();
        LOG.info("The product count text is : " + productCountText);
        if (productCountText.equals(expectedCount)) {
            LOG.info("Product quantity is updated successfully!");
        } else {
            Assert.fail("Product quantity is not updated successfully!");
        }
    }

    public void checkProductPrice(String locale) {
        // get product price
        clickEditLink();
        myWaitsForElementToBeClickable(KEY_PRODUCT_PRICE_ON_EDIT_PAGE);
        WebElement productPriceElement = mDriver.findElement(By.cssSelector(KEY_PRODUCT_PRICE_ON_EDIT_PAGE));
        String priceText = CommonPage.getDefaultFormatFromCurrency(locale, productPriceElement.getText());
        double productPriceOnEditPage = Double.parseDouble(priceText);
        mDriver.findElement(By.cssSelector(KEY_CLOSE_EDIT_POPUP)).click();

        // get cart page subtotal price
        double productPriceOnCartPage;
        if (locale.equals("ca")) {
            if (config.getString(Configs.ENV_SERVER).equals("preprod")) {
                productPriceOnCartPage = Double.parseDouble(mDriver.findElement(
                        By.cssSelector(KEY_PRODUCT_PRICE_ON_CART_PAGE)).getText().replaceAll("CA\\$", ""));
            } else {
                productPriceOnCartPage = Double.parseDouble(CommonPage.getDefaultFormatFromCurrency(locale,
                        mDriver.findElement(By.cssSelector(KEY_PRODUCT_PRICE_ON_CART_PAGE)).getText()));
            }
        } else {
            productPriceOnCartPage = Double.parseDouble(CommonPage.getDefaultFormatFromCurrency(locale,
                    mDriver.findElement(By.cssSelector(KEY_PRODUCT_PRICE_ON_CART_PAGE)).getText()));
        }

        // compare product price and cart page total price
        if (productPriceOnEditPage * 2 == productPriceOnCartPage) {
            LOG.info("The cart page subtotal is updated successfully!");
        } else {
            Assert.fail("The cart page subtotal is not correct!");
        }
    }

    public void checkBagIcon() throws InterruptedException {
        Thread.sleep(1000);
        String bagIconText = mDriver.findElement(By.cssSelector(KEY_BAG_ICON)).getText();
        if (bagIconText.equals(expectedCount)) {
            LOG.info("Bag icon quantity is updated successfully!");
        } else {
            Assert.fail("Bag icon quantity is not updated successfully!");
        }
    }

    public void decreaseQuantity() {
        myWaitsForElementToBeClickable(KEY_EDIT_QUANTITY_DOWN);
        clickExecuteScriptString(KEY_EDIT_QUANTITY_DOWN);
        LOG.info("The product quantity is increased successfully!");
    }

    @Override
    protected void load() {

    }

    @Override
    protected void isLoaded() throws Error {

    }
}