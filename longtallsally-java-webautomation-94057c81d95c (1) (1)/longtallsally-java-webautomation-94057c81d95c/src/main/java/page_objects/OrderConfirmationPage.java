package page_objects;

import org.apache.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.support.PageFactory;
import utils.Configs;
import utils.DriverFactory;
import utils.PropertyManager;

public class OrderConfirmationPage extends BasePage<OrderConfirmationPage> {

    private static Logger LOG = Logger.getLogger(OrderConfirmationPage.class);

    String orderNumber;
    String orderNumberText;
    private PropertyManager config = PropertyManager.getInstance();

    //region 'Elements'
    private final String KEY_ORDER_CONFIRMATION_NUMBER = "#orderConfirmation-orderNumber-highlight";
    //endregion

    public OrderConfirmationPage() {
        PageFactory.initElements(DriverFactory.getDriver(), this);
        mDriver = DriverFactory.getDriver();
    }

    public void checkOrderConfirmation() throws InterruptedException {
        Thread.sleep(3000);
        myWaitsForVisibilityOfElementLocated(KEY_ORDER_CONFIRMATION_NUMBER);
        if (config.getString(Configs.ENV_SERVER).equals("preprod")) {
            if (mDriver.getCurrentUrl().contains("/nl/")) {
                orderNumberText = "BESTELNUMMER: ";
            } else if (mDriver.getCurrentUrl().contains("/de/")) {
                orderNumberText = "BESTELLNUMMER: ";
            } else if (mDriver.getCurrentUrl().contains("/fr/")) {
                orderNumberText = "Nº DE COMMANDE : ";
            } else {
                orderNumberText = "ORDER NUMBER: ";
            }
        } else {
            orderNumberText = "ORDER NUMBER: ";
        }
        orderNumber = mDriver.findElement(By.cssSelector(KEY_ORDER_CONFIRMATION_NUMBER)).getText().replaceFirst(
                orderNumberText, "");
        LOG.info("Order number is : " + orderNumber);
        Assert.assertTrue(mDriver.getCurrentUrl().contains(orderNumber));
        LOG.info("Order is completed successfully!");
    }

    @Override
    protected void load() {

    }

    @Override
    protected void isLoaded() throws Error {

    }
}