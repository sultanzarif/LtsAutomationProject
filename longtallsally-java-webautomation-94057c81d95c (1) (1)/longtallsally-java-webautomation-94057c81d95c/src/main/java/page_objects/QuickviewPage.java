package page_objects;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.support.PageFactory;
import utils.DriverFactory;

public class QuickviewPage extends BasePage<QuickviewPage> {

    private static Logger LOG = Logger.getLogger(QuickviewPage.class);

    //region 'Elements'
    private final String KEY_QUICKVIEW_POPUP_CLOSE = "#quickViewPopup-btn-close-modal";
    //endregion

    public QuickviewPage() {
        PageFactory.initElements(DriverFactory.getDriver(), this);
        mDriver = DriverFactory.getDriver();
    }

    public void closeQuickviewPopup() {
        mDriver.findElement(By.cssSelector(KEY_QUICKVIEW_POPUP_CLOSE)).sendKeys(Keys.ENTER);
        LOG.info("Quickview popup is closed!");
    }

    @Override
    protected void load() {

    }

    @Override
    protected void isLoaded() throws Error {

    }
}