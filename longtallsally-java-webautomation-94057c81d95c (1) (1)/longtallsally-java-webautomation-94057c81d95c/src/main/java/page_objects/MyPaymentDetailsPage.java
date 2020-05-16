package page_objects;

import data.DummyData;
import org.apache.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.*;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Wait;
import org.openqa.selenium.support.ui.WebDriverWait;
import utils.DriverFactory;

public class MyPaymentDetailsPage extends BasePage<MyPaymentDetailsPage> {

    private static Logger LOG = Logger.getLogger(MyPaymentDetailsPage.class);
    protected WebDriverWait wait;

    //region 'Elements'
    private final String KEY_NEW_PAYMENT_CARD_BUTTON = "#paymentDetailsMainComponent-btn-new-payment-card";
    private final String KEY_CARD_NUMBER = "#addCardForm-editpayment-cardnumber";
    private final String KEY_PAYMENT_CARD_ADD = "#addPaymentCardOverlay-btn-submit";
    private final String KEY_CARD_REMOVE_BUTTON = "#paymentDetailsMainComponent-link-remove-0";
    private final String KEY_CARD_EXPIRY_MONTH = "#addCardForm-payment-card-expiry";
    private final String KEY_CARD_EXPIRY_YEAR = "cardExpiryYear";
    private final String KEY_CARD_HOLDER_NAME = "#addCardForm-editpayment-ownername";
    private final String KEY_CARD_SECURITY_CODE = "securityNumber";
    private final String KEY_BILLING_ADDRESS_LAST_NAME = "addEditCardForm-addAddressForm-address-lastname";
    private final String KEY_BILLING_ADDRESS_ENTER_MANUALLY_LINK = "#addEditCardForm-addAddressForm-manual-address";
    private final String KEY_BILLING_ADDRESS_LINE_1 = "#addEditCardForm-addAddressForm-streetName";
    private final String KEY_BILLING_ADDRESS_TOWN_CITY = "#addEditCardForm-addAddressForm-town";
    private final String KEY_STATE = "#region";

    public @FindBy(name = "postalCode")
    WebElement textField_BillingAddressPostcode;
    //endregion

    public MyPaymentDetailsPage() {
        PageFactory.initElements(DriverFactory.getDriver(), this);
        mDriver = DriverFactory.getDriver();
    }

    public void clickNewPaymentCard() {
        myWaitsForElementToBeClickable(KEY_NEW_PAYMENT_CARD_BUTTON);
        clickExecuteScriptString(KEY_NEW_PAYMENT_CARD_BUTTON);
        LOG.info("New payment card is clicked!");
    }

    public void enterNewPaymentCardDetail() throws Exception {
        myWaitsForElementToBeClickable(KEY_CARD_NUMBER);
        Thread.sleep(1000);
        mDriver.findElement(By.cssSelector(KEY_CARD_NUMBER)).sendKeys(DummyData.cardNumberVisa);

        myWaitsForVisibilityOfElementLocated(KEY_CARD_HOLDER_NAME);
        mDriver.findElement(By.cssSelector(KEY_CARD_HOLDER_NAME)).sendKeys(DummyData.name);

        myWaitsForVisibilityOfElementLocated(KEY_CARD_EXPIRY_MONTH);
        Wait<WebDriver> tempWait = new WebDriverWait(mDriver, 30);

        try {
            tempWait.until(
                    ExpectedConditions.elementToBeClickable(mDriver.findElement(By.cssSelector(KEY_CARD_EXPIRY_MONTH))))
                    .click();
            mDriver.findElement(By.cssSelector(KEY_CARD_EXPIRY_MONTH)).sendKeys(DummyData.expriyMonth);
            mDriver.findElement(By.cssSelector(KEY_CARD_EXPIRY_MONTH)).sendKeys(Keys.TAB);
        } catch (Exception e) {
            e.printStackTrace();
        }

        try {
            tempWait.until(ExpectedConditions.elementToBeClickable(mDriver.findElement(By.name(KEY_CARD_EXPIRY_YEAR))))
                    .click();
            mDriver.findElement(By.name(KEY_CARD_EXPIRY_YEAR)).sendKeys(DummyData.expriyYear);
            mDriver.findElement(By.name(KEY_CARD_EXPIRY_YEAR)).sendKeys(Keys.TAB);
        } catch (Exception e) {
            e.printStackTrace();
        }
        mDriver.findElement(By.name(KEY_CARD_SECURITY_CODE)).sendKeys(DummyData.securityCode);
        LOG.info("New payment card details are entered!");
    }

    // The threads are necessary in this method!
    public void addBillingAddress(String locale) {
        String addressLine1;
        String townCity;
        String postcode;

        switch (locale) {
            case "uk":
            default:
                addressLine1 = DummyData.ukAddressLine1;
                townCity = DummyData.ukTownCity;
                postcode = DummyData.ukPostcode;
                break;
            case "us":
                addressLine1 = DummyData.usAddressLine1;
                townCity = DummyData.usTownCity;
                postcode = DummyData.usPostcode;
                break;
        }
        mDriver.findElement(By.cssSelector(KEY_BILLING_ADDRESS_LAST_NAME)).sendKeys(DummyData.lastname);

        this.wait.until(ExpectedConditions
                .visibilityOf(mDriver.findElement(By.cssSelector(KEY_BILLING_ADDRESS_ENTER_MANUALLY_LINK))))
                 .isEnabled();
        ((JavascriptExecutor) mDriver).executeScript("arguments[0].scrollIntoView();",
                mDriver.findElement(By.cssSelector(KEY_BILLING_ADDRESS_ENTER_MANUALLY_LINK)));
        ((JavascriptExecutor) mDriver).executeScript("window.scrollBy(0, -400)");

        mDriver.findElement(By.cssSelector(KEY_BILLING_ADDRESS_ENTER_MANUALLY_LINK)).click();

        mDriver.findElement(By.cssSelector(KEY_BILLING_ADDRESS_LINE_1)).sendKeys(addressLine1);

        mDriver.findElement(By.cssSelector(KEY_BILLING_ADDRESS_TOWN_CITY)).sendKeys(townCity);

        if (locale.equals("us")) {
            Wait<WebDriver> tempWait = new WebDriverWait(mDriver, 30);
            tempWait.until(ExpectedConditions.elementToBeClickable(mDriver.findElement(By.cssSelector(KEY_STATE))))
                    .click();
            mDriver.findElement(By.cssSelector(KEY_STATE)).sendKeys(DummyData.usRegion);
            mDriver.findElement(By.cssSelector(KEY_STATE)).sendKeys(Keys.TAB);
        }
        if (textField_BillingAddressPostcode.isDisplayed()) {
            textField_BillingAddressPostcode.sendKeys(Keys.ENTER);
            textField_BillingAddressPostcode.sendKeys(postcode);
            textField_BillingAddressPostcode.sendKeys(Keys.TAB);
        }
        LOG.info("Billing address is added!");
    }

    public void submitPaymentCard() {
        myWaitsForVisibilityOfElementLocated(KEY_PAYMENT_CARD_ADD);
        clickExecuteScriptString(KEY_PAYMENT_CARD_ADD);
        LOG.info("New payment card submit button is clicked!");
    }

    public void checkCreditCard() throws InterruptedException {
        Thread.sleep(1000);
        WebElement button_CardRemove = mDriver.findElement(By.cssSelector(KEY_CARD_REMOVE_BUTTON));
        if (!button_CardRemove.isDisplayed()) {
            Assert.fail("Credit card is not added successfully!");
        }
        LOG.info("Credit card is added successfully!");
    }

    @Override
    protected void load() {

    }

    @Override
    protected void isLoaded() throws Error {

    }
}