package page_objects;

import data.DummyData;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;
import utils.CommonFunctions;
import utils.DriverFactory;

public class LoginPage extends BasePage<LoginPage> {

    private static Logger LOG = Logger.getLogger(LoginPage.class);

    //region 'Elements'
    private final String KEY_EXISTING_USER_NAME = "#loginRegister-existing-email";
    private final String KEY_USERNAME = "#loginRegister-new-email";
    private final String KEY_SUBMIT_OR_CONTINUE_AS_GUEST_BUTTON = "#loginRegister-new-customer-submit";
    private final String KEY_NEW_CUSTOMER_EMAIL_ADDRESS = "#new-email-address";
    private final String KEY_NEW_CUSTOMER_PASSWORD = "#new-password";
    private final String KEY_CREATE_ACCOUNT_BUTTON = "#register-btn-create-account";
    private final String KEY_EXISTING_PASSWORD = "j_password";
    private final String KEY_EXISTING_LOGIN_BUTTON = "#loginRegister-existing-customer-submit";
    //endregion

    boolean isStale = true;
    String userName;
    WebElement userNameGuest;

    public LoginPage() {
        PageFactory.initElements(DriverFactory.getDriver(), this);
        mDriver = DriverFactory.getDriver();
    }

    // The thread is necessary in this method!
    public void logInAsGuestOrNewCustomerWhileShopping() throws Exception {
        userName = KEY_USERNAME;
        myWaitsForElementToBeClickable(KEY_USERNAME);
        Thread.sleep(1000);
        while (isStale) {
            try {
                mDriver.findElement(By.cssSelector(userName)).sendKeys(Keys.ENTER);
                isStale = false;
            } catch (org.openqa.selenium.StaleElementReferenceException ex) {
                userName = KEY_USERNAME;
            }
        }
        myWaitsForVisibilityOfElementLocated(userName);
        mDriver.findElement(By.cssSelector(userName)).sendKeys(CommonFunctions.getUniqueEmail());
        LOG.info("User logged in with : " + CommonFunctions.getUniqueEmail());
        mDriver.findElement(By.cssSelector(KEY_SUBMIT_OR_CONTINUE_AS_GUEST_BUTTON)).click();
        LOG.info("Guest customer logged in successfully on shopping bag!");
    }

    public void logInAsNewCustomerFromMyAccountPage(String locale) throws InterruptedException {
        Thread.sleep(2000);
        myWaitsForVisibilityOfElementLocated(KEY_NEW_CUSTOMER_EMAIL_ADDRESS);
        mDriver.findElement(By.cssSelector(KEY_NEW_CUSTOMER_EMAIL_ADDRESS)).sendKeys(selectLocaleEmail(locale));
        LOG.info("User logged in with : " + selectLocaleEmail(locale));
        myWaitsForVisibilityOfElementLocated(KEY_NEW_CUSTOMER_PASSWORD);
        mDriver.findElement(By.cssSelector(KEY_NEW_CUSTOMER_PASSWORD)).sendKeys(DummyData.password);
        mDriver.findElement(By.cssSelector(KEY_CREATE_ACCOUNT_BUTTON)).click();
        LOG.info("New customer logged in successfully on my account page!");
    }

    private String selectLocaleEmail(String locale) {
        String email;
        switch (locale) {
            case "uk":
            default:
                email = DummyData.ukNewUserEmail;
                break;
            case "us":
                email = DummyData.usNewUserEmail;
                break;
            case "ca":
                email = DummyData.caNewUserEmail;
                break;
            case "nl-en":
                email = DummyData.nlEnNewUserEmail;
                break;
            case "nl":
                email = DummyData.nlNewUserEmail;
                break;
            case "de-en":
                email = DummyData.deEnNewUserEmail;
                break;
            case "de":
                email = DummyData.deNewUserEmail;
                break;
            case "fr-en":
                email = DummyData.frEnNewUserEmail;
                break;
            case "fr":
                email = DummyData.frNewUserEmail;
                break;
            case "ie":
                email = DummyData.ieNewUserEmail;
                break;
            case "eu":
                email = DummyData.euNewUserEmail;
                break;
            case "au":
                email = DummyData.auNewUserEmail;
                break;
            case "nz":
                email = DummyData.nzNewUserEmail;
                break;
            case "int":
                email = DummyData.intNewUserEmail;
                break;
        }
        return email;
    }

    // The thread is necessary in this method!
    public void logInAsExistingCustomerWhileShopping(String locale) throws Exception {
        myWaitsForVisibilityOfElementLocated(KEY_EXISTING_USER_NAME);
        WebElement userNameExisting = mDriver.findElement(By.cssSelector(KEY_EXISTING_USER_NAME));
        while (isStale) {
            try {
                userNameExisting.click();
                isStale = false;
            } catch (org.openqa.selenium.StaleElementReferenceException ex) {
                userNameExisting = mDriver.findElement(By.cssSelector(KEY_EXISTING_USER_NAME));
            }
        }
        Thread.sleep(1000);
        sendKeysToWebElement(userNameExisting, selectLocaleEmail(locale));
        LOG.info("User logged in with : " + selectLocaleEmail(locale));
        sendKeysToWebElement(mDriver.findElement(By.name(KEY_EXISTING_PASSWORD)), DummyData.password);
        mDriver.findElement(By.cssSelector(KEY_EXISTING_LOGIN_BUTTON)).sendKeys(Keys.ENTER);
        LOG.info("Existing customer logged in successfully on shopping bag!");
    }

    public void logInAsGuestCustomerOnMyAccountPage() {
        myWaitsForVisibilityOfElementLocated(KEY_NEW_CUSTOMER_EMAIL_ADDRESS);
        mDriver.findElement(By.cssSelector(KEY_NEW_CUSTOMER_EMAIL_ADDRESS)).sendKeys(CommonFunctions.getUniqueEmail());
        myWaitsForVisibilityOfElementLocated(KEY_NEW_CUSTOMER_PASSWORD);
        mDriver.findElement(By.cssSelector(KEY_NEW_CUSTOMER_PASSWORD)).sendKeys(DummyData.password);
        mDriver.findElement(By.cssSelector(KEY_CREATE_ACCOUNT_BUTTON)).click();
        LOG.info("Guest customer logged in successfully on my account page!");
    }

    public void continueAsGuestLogin(String locale) {
        myWaitsForVisibilityOfElementLocated(KEY_EXISTING_USER_NAME);
        mDriver.findElement(By.cssSelector(KEY_USERNAME)).sendKeys(selectLocaleEmail(locale));
        myWaitsForVisibilityOfElementLocated(KEY_USERNAME);
        mDriver.findElement(By.cssSelector(KEY_SUBMIT_OR_CONTINUE_AS_GUEST_BUTTON)).click();
        LOG.info("Continue as a guest user logged in successfully on checkout page!");
    }

    public void clickContinueAsGuestButton() {
        myWaitsForElementToBeClickable(KEY_SUBMIT_OR_CONTINUE_AS_GUEST_BUTTON);
        mDriver.findElement(By.cssSelector(KEY_SUBMIT_OR_CONTINUE_AS_GUEST_BUTTON)).click();
    }

    @Override
    protected void load() {

    }

    @Override
    protected void isLoaded() throws Error {

    }
}