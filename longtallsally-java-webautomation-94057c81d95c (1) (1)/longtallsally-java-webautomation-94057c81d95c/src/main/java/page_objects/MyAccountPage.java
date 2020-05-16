package page_objects;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.support.PageFactory;
import utils.DriverFactory;

public class MyAccountPage extends BasePage<MyAccountPage> {

    private static Logger LOG = Logger.getLogger(MyAccountPage.class);

    //region 'Elements'
    private final String KEY_MY_DETAILS_LINK = "#accountLayoutPage-link-account-details";
    private final String KEY_MY_ADDRESS_BOOK_LINK = "#accountLayoutPage-link-address-book";
    private final String KEY_MY_PAYMENT_DETAILS = "#accountLayoutPage-link-payment-details";
    //endregion

    public MyAccountPage() {
        PageFactory.initElements(DriverFactory.getDriver(), this);
        mDriver = DriverFactory.getDriver();
    }

    public void clickMyPaymentDetails() {
        myWaitsForElementToBeClickable(KEY_MY_PAYMENT_DETAILS);
        mDriver.findElement(By.cssSelector(KEY_MY_PAYMENT_DETAILS)).sendKeys(Keys.ENTER);
        LOG.info("User clicked my payment details link!");
    }

    public void clickMyDetailsLink() {
        myWaitsForElementToBeClickable(KEY_MY_DETAILS_LINK);
        clickExecuteScriptString(KEY_MY_DETAILS_LINK);
        LOG.info("User clicked my details link!");
    }

    public void clickMyAddressBookLink() {
        myWaitsForElementToBeClickable(KEY_MY_ADDRESS_BOOK_LINK);
        clickExecuteScriptString(KEY_MY_ADDRESS_BOOK_LINK);
        LOG.info("User clicked my address book link!");
    }

    @Override
    protected void load() {

    }

    @Override
    protected void isLoaded() throws Error {

    }
}