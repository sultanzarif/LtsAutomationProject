package page_objects;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.testng.Assert;
import utils.DriverFactory;

import java.util.List;
import java.util.Random;

public class ProductPage extends BasePage<ProductPage> {

    private static Logger LOG = Logger.getLogger(ProductPage.class);
    // region 'Elements'
    private final String KEY_COLOUR = ".swatch";
    private final String KEY_GO_TO_SHOPPING_BAG = "#addToBagOverlay-link-modal-goto-bag-checkout";
    private final String KEY_PRODUCT_TITLE = "h1[itemprop=\"name\"]";
    private final String KEY_PRODUCT_CODE = ".sku";
    private final String KEY_SIZE = "#productSizesAndGrid-btn-size-1";
    private final String KEY_ADD_TO_WISHLIST_PDP = "#productSizePanel-btn-add-to-wishlist";
    private final String KEY_ADD_TO_WISHLIST_QUICKVIEW = "#quickViewPopup-btn-add-to-wishlist";
    private final String KEY_ADD_TO_BAG = "#productSizePanel-btn-add-to-bag";
    private final String KEY_SIZE_GUIDE = ".size-guide";
    private final String KEY_PDP_SIZE = ".size .selection-button:not(.outOfStock)";
    private final String KEY_QUICKVIEW_SIZE = ".sizes-row:not(.d-none) .size .selection-button:not(.outOfStock)";
    private final String KEY_CLOSE_ADD_TO_BAG_POPUP = "#addToBagOverlay-btn-close-modal";
    private final String KEY_PDP_ADD_TO_BAG_BUTTON = "#productSizePanel-btn-add-to-bag";
    private final String KEY_QUICKVIEW_ADD_TO_BAG_BUTTON = "#quickViewPopup-btn-add-to-bag";
    public @FindBy(css = ".size .selection-button:not(.outOfStock)")
    List<WebElement> textField_PdpSize;
    public @FindBy(css = ".sizes-row:not(.d-none) .size .selection-button:not(.outOfStock)")
    List<WebElement> textField_QuickviewSize;
    String myElement;
    private List<WebElement> sizeList;
    // endregion

    public ProductPage() {
        PageFactory.initElements(DriverFactory.getDriver(), this);
        mDriver = DriverFactory.getDriver();
    }

    public void selectRandomColour() {
        myWaitsForVisibilityOfElementLocated(KEY_COLOUR);
        List<WebElement> colourList = mDriver.findElements(By.cssSelector(KEY_COLOUR));
        if (colourList != null && colourList.size() > 2) {
            Random r = new Random();
            WebElement randomColour = colourList.get(r.nextInt(colourList.size() - 1));
            randomColour.click();
        }
        LOG.info("Colour is selected randomly!");
    }

    public void selectRandomSize(String quickViewPdp) {
        if (quickViewPdp.equals("pdp") || quickViewPdp.equals("wishlistQuickview")) {
            sizeList = textField_PdpSize;
            myWaitsForVisibilityOfElementLocated(KEY_PDP_SIZE);
        } else if (quickViewPdp.equals("quickview")) {
            sizeList = textField_QuickviewSize;
            myWaitsForVisibilityOfElementLocated(KEY_QUICKVIEW_SIZE);
        }
        Random r = new Random();
        LOG.info("Size List : " + sizeList.size());
        int randomIndex = sizeList.size() > 1 ? r.nextInt(sizeList.size() - 1) : 0;
        WebElement randomIndexElement = sizeList.get(randomIndex);
        clickExecuteScriptWebElement(randomIndexElement);
        LOG.info("Size is selected randomly!");
    }

    public void clickAddToBagButton(String quickViewPdp) {
        String addToBagButton = null;
        if (quickViewPdp.equals("pdp")) {
            addToBagButton = KEY_PDP_ADD_TO_BAG_BUTTON;
        } else if (quickViewPdp.equals("quickview") || quickViewPdp.equals("wishlistQuickview")) {
            addToBagButton = KEY_QUICKVIEW_ADD_TO_BAG_BUTTON;
        }
        myWaitsForElementToBeClickable(addToBagButton);
        clickExecuteScriptString(addToBagButton);
        LOG.info("Add to bag button is clicked!");
    }

    public void clickShoppingBagCheckoutButton() {
        myWaitsForVisibilityOfElementLocated(KEY_GO_TO_SHOPPING_BAG);
        clickExecuteScriptString(KEY_GO_TO_SHOPPING_BAG);
        LOG.info("Shopping bag checkout button is clicked!");
    }

    public void checkProductEntities(String productEntities) {
        switch (productEntities) {
            case "productName":
                myElement = KEY_PRODUCT_TITLE;
                break;
            case "productCode":
                myElement = KEY_PRODUCT_CODE;
                break;
            case "colour":
                myElement = KEY_COLOUR;
                break;
            case "size":
                myElement = KEY_SIZE;
                break;
            case "addToWishlist":
                myElement = KEY_ADD_TO_WISHLIST_PDP;
                break;
            case "addToBag":
                myElement = KEY_ADD_TO_BAG;
                break;
            case "sizeGuide":
                myElement = KEY_SIZE_GUIDE;
                break;
        }
        myWaitsForVisibilityOfElementLocated(myElement);
        scrollToElementByWebElementLocator(mDriver.findElement(By.cssSelector(myElement)));
        this.isEntitiesDisplayed(myElement);
    }

    private void isEntitiesDisplayed(String element) {
        scrollToElementByWebElementLocator(mDriver.findElement(By.cssSelector(element)));
        WebElement elementName = mDriver.findElement(By.cssSelector(element));
        if (elementName.isDisplayed()) {
            LOG.info("Product entities is displayed as : " + elementName.getText());
        } else {
            Assert.assertFalse(elementName.isDisplayed(), "Product entities is not displayed!");
        }
    }

    public void clickAddToWishlist(String quickViewPdp) {
        String addToWishlist = null;
        switch (quickViewPdp) {
            case "pdp":
                addToWishlist = KEY_ADD_TO_WISHLIST_PDP;
                LOG.info("Add to wishlist button is clicked on PDP!");
                break;
            case "quickview":
            case "wishlistQuickview":
                addToWishlist = KEY_ADD_TO_WISHLIST_QUICKVIEW;
                LOG.info("Add to wishlist button is clicked on Quickview!");
                break;
        }
        myWaitsForVisibilityOfElementLocated(addToWishlist);
        clickExecuteScriptString(addToWishlist);
    }

    public void checkProductColor() {
        List<WebElement> colourList = mDriver.findElements(By.cssSelector(KEY_COLOUR));
        if (colourList != null && colourList.size() > 1) {
            LOG.info("The product has got more than one color!");
        } else {
            LOG.info("The product has not got more than one color!");
            Assert.fail("The product has not got more than one color!");
        }
    }

    public void closeAddToBagPopup() {
        myWaitsForVisibilityOfElementLocated(KEY_CLOSE_ADD_TO_BAG_POPUP);
        mDriver.findElement(By.cssSelector(KEY_CLOSE_ADD_TO_BAG_POPUP)).sendKeys(Keys.ENTER);
    }

    @Override
    protected void load() {

    }

    @Override
    protected void isLoaded() throws Error {

    }
}