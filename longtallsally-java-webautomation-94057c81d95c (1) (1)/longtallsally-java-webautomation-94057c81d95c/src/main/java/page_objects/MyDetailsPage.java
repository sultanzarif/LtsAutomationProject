package page_objects;

import data.DummyData;
import org.apache.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.support.PageFactory;
import utils.DriverFactory;

import java.util.Arrays;
import java.util.List;

public class MyDetailsPage extends BasePage<MyDetailsPage> {

    private static Logger LOG = Logger.getLogger(MyDetailsPage.class);

    //region 'Elements'
    private final String KEY_FIRST_NAME_ON_MY_ACCOUNT = "#first-name";
    private final String KEY_LAST_NAME_ON_MY_ACCOUNT = "#last-name";
    private final String KEY_PHONE_ON_MY_ACCOUNT = "#phone";
    private final String KEY_SAVE_MY_DETAILS_ON_MY_ACCOUNT = "#accountDetailsPage-btn-save-details";
    private final String KEY_CUSTOMER_PREFERENCE_EDIT_BUTTON = "#accountDetailsPage-link-edit-customer-preferences";
    private final String KEY_BY_POST = "#preferencesForm > div:nth-child(2) > div > div > label";
    private final String KEY_BY_POST_3RD_PARTIES = "#preferencesForm > div:nth-child(3) > div > div > label";
    private final String KEY_BY_EMAIL = "#preferencesForm > div:nth-child(4) > div > div > label";
    private final String KEY_BY_EMAIL_3RD_PARTIES = "#preferencesForm > div:nth-child(5) > div > div > label";
    private final String KEY_BY_PHONE = "#preferencesForm > div:nth-child(6) > div > div > label";
    private final String KEY_BY_PHONE_3RD_PARTIES = "#preferencesForm > div:nth-child(7) > div > div > label";
    private final String KEY_BY_SMS = "#preferencesForm > div:nth-child(8) > div > div > label";
    private final String KEY_BY_SMS_3RD_PARTIES = "#preferencesForm > div:nth-child(9) > div > div > label";
    private final String KEY_OK_BUTTON = "#preferencesChange-btn-submit";
    //endregion

    public MyDetailsPage() {
        PageFactory.initElements(DriverFactory.getDriver(), this);
        mDriver = DriverFactory.getDriver();
    }

    public void enterMyDetails() {
        myWaitsForElementToBeClickable(KEY_FIRST_NAME_ON_MY_ACCOUNT);
        mDriver.findElement(By.cssSelector(KEY_FIRST_NAME_ON_MY_ACCOUNT)).clear();
        mDriver.findElement(By.cssSelector(KEY_FIRST_NAME_ON_MY_ACCOUNT)).sendKeys(DummyData.name);
        mDriver.findElement(By.cssSelector(KEY_LAST_NAME_ON_MY_ACCOUNT)).sendKeys(DummyData.lastname);
        mDriver.findElement(By.cssSelector(KEY_PHONE_ON_MY_ACCOUNT)).sendKeys(DummyData.telephone);
        mDriver.findElement(By.cssSelector(KEY_SAVE_MY_DETAILS_ON_MY_ACCOUNT)).click();
        LOG.info("Customer detail information is added on my details page!");
    }

    public void clickCustomerPreferenceEditButton() {
        myWaitsForElementToBeClickable(KEY_CUSTOMER_PREFERENCE_EDIT_BUTTON);
        mDriver.findElement(By.cssSelector(KEY_CUSTOMER_PREFERENCE_EDIT_BUTTON)).click();
    }

    public void selectAllCommunicationOption() {
        myWaitsForElementToBeClickable(KEY_BY_POST);
        List<String> communicationOptions = Arrays.asList(KEY_BY_POST, KEY_BY_POST_3RD_PARTIES, KEY_BY_EMAIL,
                KEY_BY_EMAIL_3RD_PARTIES, KEY_BY_PHONE, KEY_BY_PHONE_3RD_PARTIES, KEY_BY_SMS, KEY_BY_SMS_3RD_PARTIES);
        for (String communicationOption : communicationOptions) {
            mDriver.findElement(By.cssSelector(communicationOption)).click();
        }
    }

    public void clicksOKButtonForCommunicationPreference() {
        myWaitsForElementToBeClickable(KEY_OK_BUTTON);
        mDriver.findElement(By.cssSelector(KEY_OK_BUTTON)).click();
    }

    public void saveMyDetails() {
        mDriver.findElement(By.cssSelector(KEY_SAVE_MY_DETAILS_ON_MY_ACCOUNT)).click();
    }

    public void checkEmailOption() {
        myWaitsForVisibilityOfElementLocated(KEY_BY_EMAIL);
        boolean isChecked = mDriver.findElement(By.cssSelector(KEY_BY_EMAIL)).isSelected();
        if(isChecked) {
            Assert.fail("Email option should be unclick!");
        } else {
            LOG.info("Email option is un-clicked!");
        }
    }

    @Override
    protected void load() {

    }

    @Override
    protected void isLoaded() throws Error {

    }
}