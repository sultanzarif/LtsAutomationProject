package page_objects;

import data.DummyData;
import org.apache.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.By;
import utils.CommonFunctions;

public class SignupPage extends BasePage<SignupPage> {

    private static Logger LOG = Logger.getLogger(SignupPage.class);

    //region 'Elements'
    private final String KEY_SIGNUP_BUTTON = "#footer-btn-sign-up";
    private final String KEY_SUBMIT_BUTTON =
            "#general-modal > div > div > div.modal-page.page-current > form > div.modal-body > div:nth-child(4) > div > button";
    private final String KEY_EMAIL_SIGNUP_POPUP = "#general-modal > div > div > div.modal-page.page-current";
    private final String KEY_EMAIL_ADDRESS_ON_POPUP = "#signup-email";
    private final String KEY_COUNTRY_ON_SIGNUP = "[name='country']";
    private final String KEY_CONTINUE_SHOPPING_BUTTON = "#signupModal > div > div > div.modal-page.page-current > div.modal-footer > button";
    private final String KEY_CONTINUE_SHOPPING_BUTTON_1 =
            "#general-modal > div > div > div.modal-page.page-current > div.modal-footer > button";
    private final String KEY_SUBMIT_BUTTON_WHEN_LOGGED_IN = "#signup-btn-submit";
    //endregion

    public void clickSignupButton() {
        myWaitsForElementToBeClickable(KEY_SIGNUP_BUTTON);
        mDriver.findElement(By.cssSelector(KEY_SIGNUP_BUTTON)).click();
        LOG.info("Signup button is clicked!");
    }

    public void clickSubmitButton() {
        myWaitsForElementToBeClickable(KEY_SUBMIT_BUTTON);
        mDriver.findElement(By.cssSelector(KEY_SUBMIT_BUTTON)).click();
        LOG.info("Submit button is clicked!");
    }

    public void checkSignupConfirmationPopup() {
        myWaitsForElementToBeClickable(KEY_EMAIL_SIGNUP_POPUP);
        if (mDriver.findElement(By.cssSelector(KEY_EMAIL_SIGNUP_POPUP)).isDisplayed()) {
            LOG.info("Signup Confirmation Popup is displayed!");
        } else {
            Assert.fail("Signup Confirmation Popup is not displayed!");
        }
    }

    public void checkContinueShoppingButton() {
        myWaitsForVisibilityOfElementLocated(KEY_CONTINUE_SHOPPING_BUTTON_1);
        if (mDriver.findElement(By.cssSelector(KEY_CONTINUE_SHOPPING_BUTTON_1)).isDisplayed()) {
            LOG.info("Continue Shopping button is displayed!");
        } else {
            Assert.fail("Continue Shopping button is not displayed!");
        }
    }

    public void enterEmailAddressForSignup() throws InterruptedException {
        Thread.sleep(1000);
        mDriver.findElement(By.cssSelector(KEY_EMAIL_ADDRESS_ON_POPUP)).sendKeys(CommonFunctions.getUniqueEmail());
        LOG.info("Email address is entered!");
    }

    public void selectsCountryForSignup(String locale) {
        myWaitsForElementToBeClickable(KEY_COUNTRY_ON_SIGNUP);
        if (locale.equals("eu")) {
            clickOnTextFromDropdownList(mDriver.findElement(By.cssSelector(KEY_COUNTRY_ON_SIGNUP)), DummyData.euCountry);
        } else if(locale.equals("int")) {
            clickOnTextFromDropdownList(mDriver.findElement(By.cssSelector(KEY_COUNTRY_ON_SIGNUP)), DummyData.intCountry);
        } else {
            LOG.info("Country is already selected!");
        }
    }

    public void clickContinueShoppingButton() {
        myWaitsForElementToBeClickable(KEY_CONTINUE_SHOPPING_BUTTON);
        mDriver.findElement(By.cssSelector(KEY_CONTINUE_SHOPPING_BUTTON)).click();
    }

    public void clickSubmitButtonWhenLoggedIn() {
        myWaitsForElementToBeClickable(KEY_SUBMIT_BUTTON_WHEN_LOGGED_IN);
        mDriver.findElement(By.cssSelector(KEY_SUBMIT_BUTTON_WHEN_LOGGED_IN)).click();
    }
}