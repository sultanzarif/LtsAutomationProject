package page_objects;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.support.PageFactory;
import org.testng.Assert;
import utils.DriverFactory;

public class MyWishlistPage extends BasePage<MyWishlistPage> {

    private static Logger LOG = Logger.getLogger(MyWishlistPage.class);

    //region 'Elements'
    private static final String KEY_WISHLIST_PRODUCT = "#wishListPage-link-name-product-0";
    private static final String KEY_ADD_TO_BAG_ON_WISHLIST = "#wishListPage-btn-add-to-bag-0";
    //endregion

    public MyWishlistPage() {
        PageFactory.initElements(DriverFactory.getDriver(), this);
        mDriver = DriverFactory.getDriver();
    }

    public void checkProductOnWishlistPage() {
        myWaitsForVisibilityOfElementLocated(KEY_WISHLIST_PRODUCT);
        if (isElementExist(KEY_WISHLIST_PRODUCT)) {
            LOG.info("The product is stored on the Wishlist page!");
        } else {
            Assert.fail("The product is not stored on the Wishlist page!");
        }
    }

    public void addToBagFromWishlist() throws InterruptedException {
        Thread.sleep(3000);
        myWaitsForElementToBeClickable(KEY_ADD_TO_BAG_ON_WISHLIST);
        mDriver.findElement(By.cssSelector(KEY_ADD_TO_BAG_ON_WISHLIST)).sendKeys(Keys.ENTER);
        LOG.info("Add to bag button is clicked on Wishlist page!");
    }
}