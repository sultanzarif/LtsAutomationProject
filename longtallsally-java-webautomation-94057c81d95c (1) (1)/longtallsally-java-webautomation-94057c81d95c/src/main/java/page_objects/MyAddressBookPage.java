package page_objects;

import data.DummyData;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import utils.DriverFactory;

public class MyAddressBookPage extends BasePage<MyAddressBookPage> {

    private static Logger LOG = Logger.getLogger(MyAddressBookPage.class);

    //region 'Element'
    private final String KEY_ADD_ADDRESS_ENTER_MANUALLY_ON_MY_ADDRESS_BOOK_PAGE =
            "#addEditAddressForm-addAddressForm-manual-address";
    private final String KEY_COUNTRY = "[name='country']";
    private final String KEY_NEW_ADDRESS_ON_MY_ADDRESS_BOOK_PAGE = "#addressBookMainComponent-btn-new-address";
    private final String KEY_COUNTY = "state";
    private final String KEY_POSTAL_CODE_MY_ADDRESS_BOOK_PAGE = "postalCode";
    private final String KEY_ADDRESS_LINE_MY_ADDRESS_BOOK_PAGE = "#addEditAddressForm-addAddressForm-streetName";
    private final String KEY_TOWN_CITY_MY_ADDRESS_BOOK_PAGE = "#addEditAddressForm-addAddressForm-town";
    private final String KEY_REGION_MY_ADDRESS_BOOK_PAGE = "#region";
    private final String KEY_COUNTRY_MY_ADDRESS_BOOK_PAGE = "#addEditAddressForm-addAddressForm-country";
    //endregion

    public MyAddressBookPage() {
        PageFactory.initElements(DriverFactory.getDriver(), this);
        mDriver = DriverFactory.getDriver();
    }

    public void addAddress(String locale) throws Exception {
        String addressLine1 = null;
        String townCity = null;
        String postcode = null;
        String country = null;

        switch (locale) {
            case "uk":
                addressLine1 = DummyData.ukAddressLine1;
                townCity = DummyData.ukTownCity;
                postcode = DummyData.ukPostcode;
                break;
            case "us":
                addressLine1 = DummyData.usAddressLine1;
                townCity = DummyData.usTownCity;
                postcode = DummyData.usPostcode;
                break;
            case "nl-en":
            case "nl":
                addressLine1 = DummyData.nlAddressLine1;
                townCity = DummyData.nlTownCity;
                postcode = DummyData.nlPostcode;
                break;
            case "de-en":
            case "de":
                addressLine1 = DummyData.deAddressLine1;
                townCity = DummyData.deTownCity;
                postcode = DummyData.dePostcode;
                break;
            case "fr-en":
            case "fr":
                addressLine1 = DummyData.frAddressLine1;
                townCity = DummyData.frTownCity;
                postcode = DummyData.frPostcode;
                break;
            case "eu":
                addressLine1 = DummyData.euAddressLine1;
                townCity = DummyData.euTownCity;
                postcode = DummyData.euPostcode;
                country = DummyData.euCountry;
                break;
            case "au":
                addressLine1 = DummyData.auAddressLine1;
                townCity = DummyData.auTownCity;
                postcode = DummyData.auPostcode;
                break;
            case "nz":
                addressLine1 = DummyData.nzAddressLine1;
                townCity = DummyData.nzTownCity;
                postcode = DummyData.nzPostcode;
                break;
            case "int":
                addressLine1 = DummyData.intAddressLine1;
                townCity = DummyData.intTownCity;
                postcode = DummyData.intPostcode;
                country = DummyData.intCountry;
                break;
            case "ca":
                addressLine1 = DummyData.caAddressLine1;
                townCity = DummyData.caTownCity;
                postcode = DummyData.caPostcode;
                break;
            case "ie":
                addressLine1 = DummyData.ieAddressLine1;
                townCity = DummyData.ieTownCity;
                postcode = DummyData.iePostcode;
                break;
        }
        myWaitsForVisibilityOfElementLocated(KEY_NEW_ADDRESS_ON_MY_ADDRESS_BOOK_PAGE);
        mDriver.findElement(By.cssSelector(KEY_NEW_ADDRESS_ON_MY_ADDRESS_BOOK_PAGE)).click();
        LOG.info("The new address button is clicked on my address book page!");

        if (!locale.equals("nl-en") && !locale.equals("nl") && !locale.equals("de-en") && !locale.equals("de")
                && !locale.equals("ie")) {
            myWaitsForVisibilityOfElementLocated(KEY_ADD_ADDRESS_ENTER_MANUALLY_ON_MY_ADDRESS_BOOK_PAGE);
            Thread.sleep(1000);
            mDriver.findElement(By.cssSelector(KEY_ADD_ADDRESS_ENTER_MANUALLY_ON_MY_ADDRESS_BOOK_PAGE)).click();
        }
        myWaitsForVisibilityOfElementLocated(KEY_ADDRESS_LINE_MY_ADDRESS_BOOK_PAGE);
        sendKeysToWebElement(mDriver.findElement(By.cssSelector(KEY_ADDRESS_LINE_MY_ADDRESS_BOOK_PAGE)), addressLine1);
        sendKeysToWebElement(mDriver.findElement(By.cssSelector(KEY_TOWN_CITY_MY_ADDRESS_BOOK_PAGE)), townCity);
        if (locale.equals("int")) {
            clickOnTextFromDropdownList(mDriver.findElement(By.cssSelector(KEY_COUNTRY)), country);
        }
        if (locale.equals("eu")) {
            clickOnTextFromDropdownList(mDriver.findElement(By.cssSelector(KEY_COUNTRY)), country);
        }
        Thread.sleep(1000);
        if (locale.equals("us")) {
            clickOnTextFromDropdownList(mDriver.findElement(By.cssSelector(KEY_REGION_MY_ADDRESS_BOOK_PAGE)), DummyData.usRegion);
        }
        if (locale.equals("ca")) {
            clickOnTextFromDropdownList(mDriver.findElement(By.cssSelector(KEY_REGION_MY_ADDRESS_BOOK_PAGE)), DummyData.caCounty);
        }
        if (locale.equals("ie")) {
            WebElement textFieldRegion = mDriver.findElement(By.name(KEY_COUNTY));
            clickOnTextFromDropdownList(textFieldRegion, DummyData.ieCounty);
        }
        if (locale.equals("nl-en")) {
            clickOnTextFromDropdownList(mDriver.findElement(By.cssSelector(KEY_COUNTRY_MY_ADDRESS_BOOK_PAGE)), DummyData.nlCountry);
        }

        if (mDriver.findElement(By.name(KEY_POSTAL_CODE_MY_ADDRESS_BOOK_PAGE)).isDisplayed()) {
            Thread.sleep(2000);
            mDriver.findElement(By.name(KEY_POSTAL_CODE_MY_ADDRESS_BOOK_PAGE)).click();
            mDriver.findElement(By.name(KEY_POSTAL_CODE_MY_ADDRESS_BOOK_PAGE)).sendKeys(postcode);
            Thread.sleep(2000);
            mDriver.findElement(By.name(KEY_POSTAL_CODE_MY_ADDRESS_BOOK_PAGE)).sendKeys(Keys.ENTER);
        }
        LOG.info("Customer address is added on my address book page!");
    }

    @Override
    protected void load() {

    }

    @Override
    protected void isLoaded() throws Error {

    }
}