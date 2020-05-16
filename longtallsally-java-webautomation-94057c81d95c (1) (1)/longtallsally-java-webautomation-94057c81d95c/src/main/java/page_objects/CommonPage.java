package page_objects;

import data.DummyData;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;
import org.testng.Assert;
import utils.DriverFactory;

//import utils.APIManager;

public class CommonPage extends BasePage<CommonPage> {

    //region 'Elements'
    private static final String KEY_COOKIEPOPUP = "btn-close-cookie-popup-id";
    private static final String KEY_NOTIFICATIONPOPUP = "button-deny._aimtellPromptDeny";
    private static Logger LOG = Logger.getLogger(CommonPage.class);
    private final String KEY_MYACCOUNT_AFTER_LOGIN = "#welcomebackcomponent-link-myaccount-existing-user-desktop";
    private final String KEY_MY_DETAILS_LINK = "#accountLayoutPage-link-account-details";
    private final String KEY_LAST_NAME_ON_MY_ACCOUNT = "#last-name";
    private final String KEY_TELEPHONE = "#phone";
    private final String KEY_MY_ADDRESS_BOOK_LINK = "#accountLayoutPage-link-address-book";
    private final String KEY_ADDRESS_EDIT_LINK = "#addressBookMainComponent-link-edit-0";
    private final String KEY_PAYMENT_DETAILS_LINK = "#accountLayoutPage-link-payment-details";
    private final String KEY_PAYMENT_DETAILS_EDIT_LINK = "#paymentDetailsMainComponent-link-edit-0";
    private final String KEY_COOKIE = ".uc-banner-content #uc-btn-accept-banner";
    private final String KEY_SIZE_ALERT_BOX_QUICKVIEW =
            "#general-modal > div > div > div > div.modal-body > div > div > div.col-12.col-lg-7 > section.size-options > div.alert.alert-danger.width-full.error-info-block.text-center.select-size-message";
    private final String KEY_SIZE_ALERT_BOX_PDP = ".alert";
    private final String KEY_CAROUSEL_FIRST_PRODUCT_IMAGE =
            "#main-content > div.homepage-main-container > section > div > div > div > div > div > div.slick-slide.slick-current.slick-active > div > a > img";
    private final String KEY_FIRST_COLOUR = "#productColourSwatches-link-colour-swatch-1";
    //endregion

    public CommonPage() {
        PageFactory.initElements(DriverFactory.getDriver(), this);
        mDriver = DriverFactory.getDriver();
    }

    public static int getBagThresholdForQA(String locale) {
        int bagThresholdValueQA;
        switch (locale) {
            case "uk":
            default:
                bagThresholdValueQA = 50;
                break;
            case "us":
            case "ca":
            case "de-en":
            case "fr-en":
            case "nl-en":
            case "de":
            case "fr":
            case "nl":
            case "ie":
            case "int":
                bagThresholdValueQA = 150;
                break;
            case "au":
            case "nz":
                bagThresholdValueQA = 100;
                break;
        }
        return bagThresholdValueQA;
    }

    public static int getBagThresholdForPreprod(String locale) {
        int bagThresholdValuePreprod;
        switch (locale) {
            case "uk":
            default:
                bagThresholdValuePreprod = 50;
                break;
            case "us":
            case "ca":
            case "de-en":
            case "fr-en":
            case "nl-en":
            case "de":
            case "fr":
            case "nl":
            case "ie":
            case "int":
            case "au":
            case "nz":
                bagThresholdValuePreprod = 100;
                break;
        }
        return bagThresholdValuePreprod;
    }

    public static String getDefaultFormatFromCurrency(String locale, String currencyText) {
        if (currencyText.indexOf(" ") > 0) {
            currencyText = currencyText.substring(0, currencyText.indexOf(" "));
        }
        //        String currency = APIManager.getInstance().getLocaleCurrency(locale);
        //        currencyText = currencyText.replaceAll(currency, "");
        currencyText = currencyText.replaceAll(CommonPage.getCurrency(locale), "");
        switch (locale) {
            case "nl-en":
            case "nl":
            case "de-en":
            case "de":
            case "fr-en":
            case "fr":
            case "eu":
                currencyText = currencyText.replaceAll(",", ".");
        }
        return currencyText;
    }

    public static String getCurrency(final String locale) {
        switch (locale) {
            default:
            case "uk":
            case "int":
                return "£";
            case "us":
                return "\\$";
            case "ca":
                return "C\\$";
            case "nl-en":
            case "nl":
            case "de-en":
            case "de":
            case "fr-en":
            case "fr":
            case "ie":
            case "eu":
                return "€";
            case "au":
            case "nz":
                return "AU\\$";
        }
    }

    public void checkAccount() {
        /* Check if the personal info is added successfully on My Details page */
        myWaitsForElementToBeClickable(KEY_MYACCOUNT_AFTER_LOGIN);
        clickExecuteScriptString(KEY_MYACCOUNT_AFTER_LOGIN);
        myWaitsForVisibilityOfElementLocated(KEY_MY_DETAILS_LINK);
        clickExecuteScriptString(KEY_MY_DETAILS_LINK);
        myWaitsForElementToBeClickable(KEY_LAST_NAME_ON_MY_ACCOUNT);
        if (mDriver.findElement(By.cssSelector(KEY_LAST_NAME_ON_MY_ACCOUNT)).getAttribute("value").equals(
                DummyData.lastname) && mDriver.findElement(By.cssSelector(KEY_TELEPHONE)).getAttribute("value").equals(
                DummyData.telephone)) {
            LOG.info("My Details page is updated successfully!");
        } else {
            Assert.fail("My Details page is not updated successfully!");
        }

        /* Check if the address is added successfully on My Address Book page */
        myWaitsForElementToBeClickable(KEY_MYACCOUNT_AFTER_LOGIN);
        clickExecuteScriptString(KEY_MYACCOUNT_AFTER_LOGIN);
        myWaitsForElementToBeClickable(KEY_MY_ADDRESS_BOOK_LINK);
        clickExecuteScriptString(KEY_MY_ADDRESS_BOOK_LINK);
        myWaitsForVisibilityOfElementLocated(KEY_ADDRESS_EDIT_LINK);
        if (isElementExist(KEY_ADDRESS_EDIT_LINK)) {
            LOG.info("My address is added successfully!");
        } else {
            Assert.fail("My address is added successfully!");
        }

        /* Check if the card is added successfully on My Payment Details page */
        myWaitsForElementToBeClickable(KEY_MYACCOUNT_AFTER_LOGIN);
        clickExecuteScriptString(KEY_MYACCOUNT_AFTER_LOGIN);
        myWaitsForVisibilityOfElementLocated(KEY_PAYMENT_DETAILS_LINK);
        clickExecuteScriptString(KEY_PAYMENT_DETAILS_LINK);
        myWaitsForVisibilityOfElementLocated(KEY_PAYMENT_DETAILS_EDIT_LINK);
        if (isElementExist(KEY_PAYMENT_DETAILS_EDIT_LINK)) {
            LOG.info("My card is added successfully!");
        } else {
            Assert.fail("My card is not added successfully!");
        }
        LOG.info("Account is created successfully!");
    }

    public void closeCookiePopup() {
        //        WebElement cookiePopupCloseButton = findElementIfExists(By.id(KEY_COOKIEPOPUP));
        //        if (cookiePopupCloseButton != null) {
        //            cookiePopupCloseButton.sendKeys(Keys.ENTER);
        //            LOG.info("Cookie popup is closed!");
        //        }
        //        WebElement notificationPopupCloseButton = findElementIfExists(By.cssSelector(KEY_NOTIFICATIONPOPUP));
        //        if (notificationPopupCloseButton != null) {
        //            notificationPopupCloseButton.click();
        //            LOG.info("Notification popup is closed!");
        //        }
        myWaitsForElementToBeClickable(KEY_COOKIE);
        WebElement cookieAcceptButton = findElementIfExists(By.cssSelector(KEY_COOKIE));
        if (cookieAcceptButton != null) {
            cookieAcceptButton.click();
            LOG.info("Cookie accept popup is closed!");
        }
    }

    public void checkSizeAlert(String quickViewPdp) {
        String alertBox;

        switch (quickViewPdp) {
            case "quickview":
                alertBox = KEY_SIZE_ALERT_BOX_QUICKVIEW;
                break;
            case "pdp":
            default:
                alertBox = KEY_SIZE_ALERT_BOX_PDP;
                break;
        }
        myWaitsForVisibilityOfElementLocated(alertBox);
        if (mDriver.findElement(By.cssSelector(alertBox)).getText().contains("size")) {
            LOG.info("Please select a size warning message is shown!");
        } else {
            Assert.fail("Please select a size warning message is not shown!");
        }
    }

    public void checkProductImageElement(String locale) {
        myWaitsForVisibilityOfElementLocated(KEY_CAROUSEL_FIRST_PRODUCT_IMAGE);
        WebElement imageElement = mDriver.findElement(By.cssSelector(KEY_CAROUSEL_FIRST_PRODUCT_IMAGE));
        LOG.info("The image alt element includes: " + imageElement.getAttribute("alt"));
        if (imageElement.getAttribute("alt").startsWith(getText(locale))) {

        }
    }

    public void checkBrowserText(Boolean checkValue, String locale) {
        myWaitsForVisibilityOfElementLocated(KEY_FIRST_COLOUR);
        String browserTitle = mDriver.getTitle();

        if (checkValue) {
            if (browserTitle.startsWith(getText(locale))) {
                LOG.info("Browser title is: " + browserTitle);
            } else {
                LOG.info("Browser title is: " + browserTitle);
                Assert.fail("Browser title is not include " + getText(locale) + " text!");
            }
        } else {
            if (!browserTitle.startsWith(getText(locale))) {
                LOG.info("Browser title is not include: " + browserTitle);
            } else {
                LOG.info("Browser title is: " + browserTitle);
                Assert.fail("Browser title is include " + getText(locale) + " text!");
            }
        }
    }


    public String getText(String locale) {
        String includeText;
        switch (locale) {
            case "de":
                includeText = "Hoch";
                break;
            case "nl":
                includeText = "Hoog";
                break;
            case "fr":
                includeText = "Grande";
                break;
            default:
                includeText = "Tall";
        }
        return includeText;
    }

    @Override
    protected void load() {

    }

    @Override
    protected void isLoaded() throws Error {

    }
}