package page_objects;

import data.DummyData;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.support.PageFactory;
import utils.DriverFactory;

public class SecurePayment3DPage extends BasePage<SecurePayment3DPage> {

    private static Logger LOG = Logger.getLogger(SecurePayment3DPage.class);

    //region 'Elements'
    private final String KEY_3D_IFRAME = "#iframe";
    private final String KEY_3D_USERNAME = "#username";
    private final String KEY_3D_PASSWORD = "#password";
    private final String KEY_3D_SUBMIT_BUTTON = ".paySubmit";
    //endregion

    public SecurePayment3DPage() {
        PageFactory.initElements(DriverFactory.getDriver(), this);
        mDriver = DriverFactory.getDriver();
    }

    public void submit3DsForm(String paymentType) {
        if (paymentType.startsWith("3ds")) {
            String winHandle = mDriver.getWindowHandle();
            myWaitsForVisibilityOfElementLocated(KEY_3D_IFRAME);
            mDriver.switchTo().frame(mDriver.findElement(By.cssSelector(KEY_3D_IFRAME)));
            myWaitsForElementToBeClickable(KEY_3D_USERNAME);
            mDriver.findElement(By.cssSelector(KEY_3D_USERNAME)).sendKeys(DummyData.secure3DUsername);
            mDriver.findElement(By.cssSelector(KEY_3D_PASSWORD)).sendKeys(DummyData.secure3DPassword);
            mDriver.findElement(By.cssSelector(KEY_3D_SUBMIT_BUTTON)).sendKeys(Keys.ENTER);
            mDriver.switchTo().window(winHandle);
            LOG.info("3D secure form is submitted!");
        }
    }

    @Override
    protected void load() {

    }

    @Override
    protected void isLoaded() throws Error {

    }
}