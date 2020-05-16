package page_objects;

import data.DummyData;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.Wait;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;
import utils.Configs;
import utils.DriverFactory;
import utils.PropertyManager;

import java.util.List;

public class CheckoutPage extends BasePage<CheckoutPage> {

    private static Logger LOG = Logger.getLogger(CheckoutPage.class);

    //region 'Elements'
    private final String KEY_KLARNA_DOB_DAY = "#checkoutLoginRegisterPage-dob-day";
    private final String KEY_KLARNA_DOB_MONTH = "#checkoutLoginRegisterPage-dob-month";
    private final String KEY_KLARNA_DOB_YEAR = "#checkoutLoginRegisterPage-dob-year";
    private final String KEY_PAYPAL_EMAIL = "input[id=email]";
    private final String KEY_PAYPAL_PASSWORD = "login_password";
    private final String KEY_PAYPAL_NEXT_BUTTON = "btnNext";
    private final String KEY_PAYPAL_LOGIN_BUTTON = "btnLogin";
    private final String KEY_PAYPAL_CONFIRM_BUTTON = "#payment-submit-btn";
    private final String KEY_SECURITY_CODE = "#checkoutLoginRegisterPage-securityNumber";
    private final String KEY_IFRAME = "sM432dIframe";
    private final String KEY_GOOGLEPAY_BUTTON_QA =
            "//*[@id=\"shop-summary\"]/div[1]/div/div/div[3]/div[3]/div/div/div/button";
    private final String KEY_GOOGLEPAY_BUTTON_PREPROD =
            "#shop-summary > div:nth-child(1) > div > div > div.expressPayments-container > div:nth-child(3) > div > div > div > button";
    private final String KEY_GOOGLEPAY_BUTTON_PREPROD_INT =
            "#shop-summary > div:nth-child(1) > div > div > div.expressPayments-container > div:nth-child(2) > div > div > div > button";
    private final String KEY_PAYPALPAY_FORM =
            "#shop-summary > div:nth-child(1) > div > div > div.expressPayments-container > div:nth-child(1)";
    private final String KEY_TOWN_CITY = "#deliveryDeliverForm-addAddressForm-town";
    private final String KEY_ADDRESS_LINE1 = "#deliveryDeliverForm-addAddressForm-streetName";
    private final String KEY_STATE = "#region";
    private final String KEY_COUNTY = "state";
    private final String KEY_DELIVERY_CONTINUE_BUTTON = "#deliverMyOrder-set-delivery-button";
    private final String KEY_CONTINUE_BUTTON = "#customerDetails-customer-details-submit";
    private final String KEY_GOOGLE_PAY_RADIO_BUTTON = "#checkoutLoginRegisterPage-delivery-payBygoogle-accordion-link";
    private final String KEY_PAY_BY_GOOGLE_PAY = "button.gpay-button";
    private final String KEY_COLLECT_PLUS_CONTINUE_BUTTON = "#collectPlusDelivery-button-continue-collectPlus-method";
    private final String KEY_COLLECT_PLUS_LIST = ".collect-plus-agents";
    private final String KEY_PAY_BY_KLARNA = "#checkoutLoginRegisterPage-delivery-payByKlarna-accordion-link";
    private final String KEY_DELIVERY_PRICE_1 =
            ".checkout-summary-container > .checkout-total .subtotal + .delivery .text-right";
    private final String KEY_DELIVERY_PRICE_2 =
            "#checkoutLoginRegisterPage-checkout-page > div > div.checkout-summary.col-md-4.visible-md.visible-lg.pull-right > div > div.checkout-total.col-xs-12.col > div > div > div:nth-child(3) > div > div.col-xs-6.text-right";
    private final String KEY_DELIVERY_PRICE_TEXT =
            "#checkoutLoginRegisterPage-checkout-page > div > div.checkout-summary.col-md-4.visible-md.visible-lg.pull-right > div > div.checkout-total.col-xs-12.col > div > div > div:nth-child(2) > div > div:nth-child(1)";
    private final String KEY_CARD_NUMBER = "#addCardForm-editpayment-cardnumber";
    private final String KEY_NL_NEXTDAY_DELIVERY = ".custom-label[for='delivery-1dayNL']";
    private final String KEY_NL_TWODAY_DELIVERY = ".custom-label[for='delivery-2dayNL']";
    private final String KEY_DE_NEXTDAY_DELIVERY = ".custom-label[for='delivery-1dayDE']";
    private final String KEY_DE_TWODAY_DELIVERY = ".custom-label[for='delivery-2dayDE']";
    private final String KEY_FR_NEXTDAY_DELIVERY = ".custom-label[for='delivery-1dayFR']";
    private final String KEY_FR_TWODAY_DELIVERY = ".custom-label[for='delivery-2dayFR']";
    private final String KEY_IE_NEXTDAY_DELIVERY = ".custom-label[for='delivery-1dayIE']";
    private final String KEY_IE_TWODAY_DELIVERY = ".custom-label[for='delivery-2dayIE']";
    private final String KEY_UK_EXPRESS_DELIVERY = ".custom-label[for='delivery-expressUK']";
    private final String KEY_UK_COLLECT_PLUS_DELIVERY = "#checkoutLoginRegisterPage-collectplus-delivery";
    private final String KEY_UK_CHANNEL_ISLAND_DELIVERY = ".custom-label[for='delivery-ChannelIslands']";
    private final String KEY_US_EXPRESS_DELIVERY = ".custom-label[for='delivery-expressUS']";
    private final String KEY_CA_EXPRESS_DELIVERY = ".custom-label[for='delivery-expressCA']";
    private final String KEY_EU_EXPRESS_DELIVERY = ".custom-label[for='delivery-expressEU']";
    private final String KEY_AU_EXPRESS_DELIVERY = ".custom-label[for='delivery-expressAU']";
    private final String KEY_COUNTRY = "country";
    private final String KEY_ENTER_ADDRESS_MANUALLY = "#deliveryDeliverForm-addAddressForm-manual-address";
    private final String KEY_CARD_NUMBER_ON_CHECKOUT_PAGE = "#addCardForm-editpayment-cardnumber";
    private final String KEY_PAY_BY_CARD_RADIO_BUTTON = "label[for=\"payment-card\"]";
    private final String KEY_FIRST_NAME = "#customerDetails-firstname";
    private final String KEY_LAST_NAME = "#customerDetails-lastname";
    private final String KEY_TELEPHONE = "#customerDetails-phone";
    private final String KEY_CUSTOMER_DETAILS_PASSWORD = "#customerDetails-password";
    private final String KEY_PAYPAL_SUBMIT_ORDER = "#checkoutLoginRegisterPage-payment-paypal-submit";
    private final String KEY_PAYPAL_RADIO_BUTTON = "#checkoutLoginRegisterPage-delivery-payByPaypal-accordion-link";
    private final String KEY_GOOGLE_PAY_EMAIL = "input[type=email]";
    private final String KEY_GOOGLE_PAY_PASSWORD = "input[type=password]";
    private final String KEY_PAYPAL_CHANGE_ADDRESS_LINK =
            "#root > div > div > main > div:nth-child(4) > div > section > div.ShipTo_header_1Vp0S > div > button";
    private final String KEY_PAYPAL_ADD_A_NEW_ADDRESS_LINK =
            "#root > div > div > main > div:nth-child(4) > div > section > div:nth-child(2) > div.AddOption_container_1YSQc > button";
    private final String KEY_PAYPAL_ADDRESS_LINE_1 = "#line1";
    private final String KEY_PAYPAL_COUNTRY = "#country";
    private final String KEY_PAYPAL_CITY = "#city";
    private final String KEY_PAYPAL_STATE = "#state";
    private final String KEY_PAYPAL_ZIPCODE = "#postalCode";
    private final String KEY_PAYPAL_SAVE_BUTTON =
            "body > div:nth-child(29) > div.css-1w4es16.eq0cx9h3 > section > div > div.InterstitialWithBodyScroll_inner-container_2rfTD > form > button";
    private final String KEY_PAYPAL_SUMBIT_ORDER_BUTTON = "#form3DSecure > button";
    private final String KEY_ADDRESS_DROPDOWN_MENU = "#shippingDropdown";


    public @FindBy(name = "postalCode")
    WebElement textField_Postcode;
    public @FindBy(id = "addCardForm-editpayment-ownername")
    WebElement textField_CardHolderNameOnCheckoutPage;
    public @FindBy(name = "cardExpiryMonth")
    WebElement textField_CardExpiryMonthOnCheckoutPage;
    public @FindBy(name = "cardExpiryYear")
    WebElement textField_CardExpiryYearOnCheckoutPage;
    public @FindBy(name = "securityNumber")
    WebElement textField_SecurityCodeOnCheckoutPage;
    public @FindBy(id = "checkoutLoginRegisterPage-payment-submit")
    WebElement button_Submit;
    public @FindBy(id = "checkoutLoginRegisterPage-dob-day")
    WebElement textField_DateOfBirthDay;
    public @FindBy(id = "checkoutLoginRegisterPage-klarna-payment-submit-desktop")
    WebElement button_PayByKlarna;
    public @FindBy(id = "collect-plus-postcode")
    WebElement textField_CollectPlusPostCode;
    public @FindBy(id = "collectPlusDelivery-btn-find")
    WebElement button_CollectPlusFind;
    public @FindBy(css = "#forms\\.payByCardForm-addAddressForm-manual-address")
    WebElement link_EnterAddressManuallyOnCheckout;
    public @FindBy(css = "#forms\\.payByCardForm-addAddressForm-streetName")
    WebElement textField_AddressLineOnCheckout;
    public @FindBy(css = "#forms\\.payByCardForm-addAddressForm-town")
    WebElement textField_TownCityOnCheckout;
    public @FindBy(name = "postalCode")
    WebElement textField_PostCodeOnCheckout;
    public @FindBy(id = "deliveryDeliverForm-addAddressForm-country")
    WebElement textField_Country;
    public @FindBy(css = "div[role=button]")
    WebElement button_GooglepayContinue;
    String paypalCountry;
    //endregion
    String paypalAddressLine1;
    String paypalCity;
    String paypalState;
    String paypalZipcode;
    private PropertyManager config = PropertyManager.getInstance();

    public CheckoutPage() {
        PageFactory.initElements(DriverFactory.getDriver(), this);
        mDriver = DriverFactory.getDriver();
    }

    private void customerDetails() {
        myWaitsForElementToBeClickable(KEY_FIRST_NAME);
        mDriver.findElement(By.cssSelector(KEY_FIRST_NAME)).sendKeys(DummyData.name);
        mDriver.findElement(By.cssSelector(KEY_LAST_NAME)).sendKeys(DummyData.lastname);
        mDriver.findElement(By.cssSelector(KEY_TELEPHONE)).sendKeys(DummyData.telephone);
    }

    public void entersCustomerDetails() {
        this.customerDetails();
        myWaitsForVisibilityOfElementLocated(KEY_CONTINUE_BUTTON);
        mDriver.findElement(By.cssSelector(KEY_CONTINUE_BUTTON)).click();
        LOG.info("Customer details are entered without password!");
    }

    public void entersCustomerDetailsWithPassword() {
        this.customerDetails();
        mDriver.findElement(By.cssSelector(KEY_CUSTOMER_DETAILS_PASSWORD)).sendKeys(DummyData.password);
        myWaitsForVisibilityOfElementLocated(KEY_CONTINUE_BUTTON);
        mDriver.findElement(By.cssSelector(KEY_CONTINUE_BUTTON)).click();
        LOG.info("Customer details are entered with password!");
    }

    public void entersAddressDetailsOnCheckOut(String locale) throws Exception {
        String addressLine1;
        String townCity;
        String postcode;
        String country;

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
            case "nl-en":
            case "nl":
                addressLine1 = DummyData.nlAddressLine1;
                townCity = DummyData.nlTownCity;
                postcode = DummyData.nlPostcode;
                break;
            case "ie":
                addressLine1 = DummyData.ieAddressLine1;
                townCity = DummyData.ieTownCity;
                postcode = DummyData.iePostcode;
                break;
            case "fr-en":
            case "fr":
                addressLine1 = DummyData.frAddressLine1;
                townCity = DummyData.frTownCity;
                postcode = DummyData.frPostcode;
                break;
            case "de-en":
            case "de":
                addressLine1 = DummyData.deAddressLine1;
                townCity = DummyData.deTownCity;
                postcode = DummyData.dePostcode;
                break;
            case "eu":
                addressLine1 = DummyData.euAddressLine1;
                townCity = DummyData.euTownCity;
                postcode = DummyData.euPostcode;
                break;
            case "int":
                addressLine1 = DummyData.intAddressLine1;
                townCity = DummyData.intTownCity;
                postcode = DummyData.intPostcode;
                break;
        }

        if (!locale.equals("de-en") && !locale.equals("nl-en") && !locale.equals("ie") && !locale.equals("de")
                && !locale.equals("nl") && !locale.equals("int")) {
            myWaitsForVisibilityOfElementLocated(KEY_ENTER_ADDRESS_MANUALLY);
            mDriver.findElement(By.cssSelector(KEY_ENTER_ADDRESS_MANUALLY)).sendKeys(Keys.ENTER);
        }

        WebElement textFieldAddressLine1 = mDriver.findElement(By.cssSelector(KEY_ADDRESS_LINE1));
        sendKeysToWebElement(textFieldAddressLine1, addressLine1, mDriver);
        textFieldAddressLine1.sendKeys(Keys.TAB);
        Thread.sleep(1000);
        myWaitsForVisibilityOfElementLocated(KEY_TOWN_CITY);
        WebElement textFieldTownCity = mDriver.findElement(By.cssSelector(KEY_TOWN_CITY));
        textFieldTownCity.sendKeys(townCity);

        if (locale.equals("us")) {
            Wait<WebDriver> tempWait = new WebDriverWait(mDriver, 30);
            tempWait.until(ExpectedConditions.elementToBeClickable(mDriver.findElement(By.cssSelector(KEY_STATE))))
                    .click();
            mDriver.findElement(By.cssSelector(KEY_STATE)).sendKeys(DummyData.usRegion);
            mDriver.findElement(By.cssSelector(KEY_STATE)).sendKeys(Keys.TAB);
        }

        if (locale.equals("ca")) {
            clickOnTextFromDropdownList(mDriver.findElement(By.cssSelector(KEY_STATE)), DummyData.caCounty);
        }

        if (locale.equals("eu")) {
            clickOnTextFromDropdownList(mDriver.findElement(By.name(KEY_COUNTRY)), DummyData.euCountry);
        }

        if (locale.equals("nl-en")) {
            clickOnTextFromDropdownList(mDriver.findElement(By.name(KEY_COUNTRY)), DummyData.nlCountry);
        }

        if (config.getString(Configs.ENV_SERVER).equals("preprod")) {
            country = DummyData.nlCountryNl;
        } else {
            country = DummyData.nlCountry;
        }

        if (locale.equals("nl")) {
            clickOnTextFromDropdownList(textField_Country, country);
        }

        if (locale.equals("int")) {
            clickOnTextFromDropdownList(mDriver.findElement(By.name(KEY_COUNTRY)), DummyData.intCountry);
        }

        if (locale.equals("ie")) {
            clickOnTextFromDropdownList(mDriver.findElement(By.name(KEY_COUNTY)), DummyData.ieCounty);
        }

        if (textField_Postcode.isDisplayed()) {
            textField_Postcode.click();
            textField_Postcode.sendKeys(postcode);
            textField_Postcode.sendKeys(Keys.TAB);
        }

        myWaitsForVisibilityOfElementLocated(KEY_DELIVERY_CONTINUE_BUTTON);
        mDriver.findElement(By.cssSelector(KEY_DELIVERY_CONTINUE_BUTTON)).sendKeys(Keys.ENTER);
        LOG.info("Address details are entered on checkout page!");
    }

    public void entersPaymentDetails(String paymentType, String locale) throws Exception {
        switch (paymentType) {
            case "creditcardVisa":
            case "creditcardMaster":
            case "amex":
            case "3dsVisa":
            case "3dsMaster":
            case "3dsAmex":
            case "3dsMaestro":
                LOG.info("Credit card is selected!");
                payByCard(paymentType);
                break;
            case "klarna":
                LOG.info("Klarna is selected!");
                payByKlarna();
                break;
            case "paypal":
                LOG.info("Paypal is selected!");
                myWaitsForElementToBeClickable(KEY_PAYPAL_RADIO_BUTTON);
                mDriver.findElement(By.cssSelector(KEY_PAYPAL_RADIO_BUTTON)).sendKeys(Keys.ENTER);
                myWaitsForElementToBeClickable(KEY_PAYPAL_SUBMIT_ORDER);
                clickExecuteScriptString(KEY_PAYPAL_SUBMIT_ORDER);
                pyByPayPal();
                break;
            case "paypalexpress":
                LOG.info("Paypal express is selected!");
                myWaitsForElementToBeClickable(KEY_PAYPALPAY_FORM);
                Thread.sleep(1000);
                mDriver.findElement(By.cssSelector(KEY_PAYPALPAY_FORM)).click();
                pyByPayPalExpress(locale);
                break;
            case "googlepay":
                LOG.info("Googlepay is selected!");
                myWaitsForElementToBeClickable(KEY_GOOGLE_PAY_RADIO_BUTTON);
                mDriver.findElement(By.cssSelector(KEY_GOOGLE_PAY_RADIO_BUTTON)).sendKeys(Keys.ENTER);
                myWaitsForElementToBeClickable(KEY_PAY_BY_GOOGLE_PAY);
                mDriver.findElement(By.cssSelector(KEY_PAY_BY_GOOGLE_PAY)).sendKeys(Keys.ENTER);
                pyByGooglePay();
                break;
            case "googlepayexpress":
                LOG.info("Googlepay express is selected!");
                if (config.getString(Configs.ENV_SERVER).equals("qa") || config.getString(Configs.ENV_SERVER).equals(
                        "dev")) {
                    mDriver.findElement(By.xpath(KEY_GOOGLEPAY_BUTTON_QA)).sendKeys(Keys.ENTER);
                } else {
                    Thread.sleep(1000);

                    if (locale.equals("int")) {
                        clickExecuteScriptString(KEY_GOOGLEPAY_BUTTON_PREPROD_INT);
                    } else {
                        clickExecuteScriptString(KEY_GOOGLEPAY_BUTTON_PREPROD);
                    }
                }
                pyByGooglePay();
                break;
        }
    }

    private void pyByPayPal() throws Exception {
        myWaitsForElementToBeClickable(KEY_PAYPAL_EMAIL);
        clickExecuteScriptString(KEY_PAYPAL_EMAIL);
        WebElement paypalEmail = mDriver.findElement(By.cssSelector(KEY_PAYPAL_EMAIL));
        sendKeysToWebElement(paypalEmail, DummyData.paypalEmail);
        LOG.info("Paypal email address is entered!");

        mDriver.findElement(By.name(KEY_PAYPAL_NEXT_BUTTON)).sendKeys(Keys.ENTER);
        Thread.sleep(2000);
        WebElement paypalPassword = mDriver.findElement(By.name(KEY_PAYPAL_PASSWORD));
        paypalPassword.sendKeys(Keys.ENTER);
        paypalPassword.sendKeys(DummyData.paypalPassword);
        LOG.info("Paypal password is entered!");
        Thread.sleep(2000);
        mDriver.findElement(By.name(KEY_PAYPAL_LOGIN_BUTTON)).sendKeys(Keys.ENTER);

        myWaitsForElementToBeClickable(KEY_PAYPAL_CONFIRM_BUTTON);
        mDriver.findElement(By.cssSelector(KEY_PAYPAL_CONFIRM_BUTTON)).sendKeys(Keys.ENTER);
        LOG.info("Paypal payment is completed!");
    }

    private void pyByPayPalExpress(String locale) throws Exception {
        Thread.sleep(2000);
        myWaitsForElementToBeClickable(KEY_PAYPAL_EMAIL);
        clickExecuteScriptString(KEY_PAYPAL_EMAIL);
        mDriver.findElement(By.cssSelector(KEY_PAYPAL_EMAIL)).sendKeys(DummyData.paypalEmail);
        LOG.info("Paypal email address is entered!");
        mDriver.findElement(By.name(KEY_PAYPAL_NEXT_BUTTON)).sendKeys(Keys.ENTER);
        Thread.sleep(2000);
        WebElement paypalPassword = mDriver.findElement(By.name(KEY_PAYPAL_PASSWORD));
        Thread.sleep(1000);
        paypalPassword.sendKeys(Keys.ENTER);
        Thread.sleep(1000);
        paypalPassword.sendKeys(DummyData.paypalPassword);
        LOG.info("Paypal password is entered!");
        Thread.sleep(2000);
        mDriver.findElement(By.name(KEY_PAYPAL_LOGIN_BUTTON)).sendKeys(Keys.ENTER);
        Thread.sleep(2000);
        if (!locale.equals("uk")) {
            myWaitsForElementToBeClickable(KEY_PAYPAL_CHANGE_ADDRESS_LINK);
            mDriver.findElement(By.cssSelector(KEY_PAYPAL_CHANGE_ADDRESS_LINK)).click();
            LOG.info("Paypal change address link is clicked!");
            Thread.sleep(2000);
            mDriver.findElement(By.cssSelector(KEY_ADDRESS_DROPDOWN_MENU)).click();
            Thread.sleep(2000);

            Select dropdown = new Select(mDriver.findElement(By.cssSelector(KEY_ADDRESS_DROPDOWN_MENU)));

            String addressContains;
            switch (locale) {
                case "us":
                    addressContains = "San Francisco";
                    break;
                case "nl":
                case "nl-en":
                    addressContains = "Amsterdam";
                    break;
                case "de":
                case "de-en":
                    addressContains = "Munich";
                    break;
                case "fr":
                case "fr-en":
                    addressContains = "Paris";
                    break;
                case "ie":
                    addressContains = "Dublin";
                    break;
                case "ca":
                    addressContains = "Toronto";
                    break;
                case "eu":
                    addressContains = "Athens";
                    break;
                case "au":
                    addressContains = "Sydney";
                    break;
                case "nz":
                    addressContains = "Wellington";
                    break;
                default:
                    addressContains = "London";
                    break;
            }

            //Get all options
            List<WebElement> allOptions = dropdown.getOptions();
            for (int i = 0; i < allOptions.size(); i++) {
                if (allOptions.get(i).getText().contains(addressContains)) {
                    LOG.info("Selected address is: " + dropdown.getOptions().get(i).getText());
                    dropdown.getOptions().get(i).click();
                    break;
                }
            }
            LOG.info("Paypal address is changed!");
        }
            myWaitsForElementToBeClickable(KEY_PAYPAL_CONFIRM_BUTTON);
            mDriver.findElement(By.cssSelector(KEY_PAYPAL_CONFIRM_BUTTON)).sendKeys(Keys.ENTER);
            LOG.info("Paypal confirm button is clicked!");

            if (locale.equals("us")) {
                myWaitsForElementToBeClickable(KEY_PAYPAL_SUMBIT_ORDER_BUTTON);
                mDriver.findElement(By.cssSelector(KEY_PAYPAL_SUMBIT_ORDER_BUTTON)).sendKeys(Keys.ENTER);
                LOG.info("Paypal submit order button is clicked!");
            }
            LOG.info("Paypal payment is completed!");
    }

    private void payByCard(String paymentType) throws Exception {
        String cardNumber;
        String securityCode;
        switch (paymentType) {
            case "creditcardVisa":
            default:
                cardNumber = DummyData.cardNumberVisa;
                securityCode = DummyData.securityCode;
                break;
            case "creditcardMaster":
                cardNumber = DummyData.cardNumberMaster;
                securityCode = DummyData.securityCode;
                break;
            case "amex":
                cardNumber = DummyData.cardNumberAmex;
                securityCode = DummyData.securityCodeAmex;
                break;
            case "3dsVisa":
                cardNumber = DummyData.cardNumber3dsVisa;
                securityCode = DummyData.securityCode;
                break;
            case "3dsMaster":
                cardNumber = DummyData.cardNumber3dsMaster;
                securityCode = DummyData.securityCode;
                break;
            case "3dsAmex":
                cardNumber = DummyData.cardNumber3dsAmex;
                securityCode = DummyData.securityCodeAmex;
                break;
            case "3dsMaestro":
                cardNumber = DummyData.cardNumber3dsMaestro;
                securityCode = DummyData.securityCode;
                break;
        }
        myWaitsForVisibilityOfElementLocated(KEY_CARD_NUMBER_ON_CHECKOUT_PAGE);
        mDriver.findElement(By.cssSelector(KEY_CARD_NUMBER_ON_CHECKOUT_PAGE)).sendKeys(cardNumber);
        Thread.sleep(1000);
        textField_CardHolderNameOnCheckoutPage.sendKeys(DummyData.name);
        clickOnTextFromDropdownList(textField_CardExpiryMonthOnCheckoutPage, DummyData.expriyMonth);
        clickOnTextFromDropdownList(textField_CardExpiryYearOnCheckoutPage, DummyData.expriyYear);
        textField_SecurityCodeOnCheckoutPage.sendKeys(securityCode);
        LOG.info("Credit card payment is completed with : " + cardNumber);
    }

    public void clickPayByCard(String locale) {
        if (locale.equals("nl-en") || locale.equals(
                "nl")) { // It is for preprod regression --> || locale.equals("de") || locale.equals("de-en")) {
            scrollToElementByWebElementLocator(mDriver.findElement(By.cssSelector(KEY_PAY_BY_CARD_RADIO_BUTTON)));
            clickExecuteScriptString(KEY_PAY_BY_CARD_RADIO_BUTTON);
            LOG.info("Pay by card option is selected!");
        } else {
            LOG.info("Pay by card option is not selected!");
        }
    }

    private void payByKlarna() throws Exception {
        myWaitsForVisibilityOfElementLocated(KEY_PAY_BY_KLARNA);
        WebElement radioButton_PayByKlarna = mDriver.findElement(By.cssSelector(KEY_PAY_BY_KLARNA));
        myWaitsForElementToBeClickable(KEY_PAY_BY_KLARNA);
        radioButton_PayByKlarna.click();
        actionMoveAndClick(textField_DateOfBirthDay);
        myWaitsForVisibilityOfElementLocated(KEY_KLARNA_DOB_DAY);
        mDriver.findElement(By.cssSelector(KEY_KLARNA_DOB_DAY)).sendKeys(DummyData.dateOfBirthDay);
        mDriver.findElement(By.cssSelector(KEY_KLARNA_DOB_MONTH)).sendKeys(DummyData.dateOfBirthMonth);
        mDriver.findElement(By.cssSelector(KEY_KLARNA_DOB_YEAR)).sendKeys(DummyData.dateOfBirthYear);
        LOG.info("Klarna DOB information are entered!");
    }

    // The threads are necessary in this method!
    private void pyByGooglePay() throws Exception {
        Thread.sleep(2000);
        String winHandleBefore = mDriver.getWindowHandle();
        for (String winHandle : mDriver.getWindowHandles()) {
            mDriver.switchTo().window(winHandle);
        }
        myWaitsForElementToBeClickable(KEY_GOOGLE_PAY_EMAIL);
        mDriver.findElement(By.cssSelector(KEY_GOOGLE_PAY_EMAIL)).sendKeys(DummyData.googlepayEmail);
        mDriver.findElement(By.cssSelector(KEY_GOOGLE_PAY_EMAIL)).sendKeys(Keys.ENTER);
        myWaitsForElementToBeClickable(KEY_GOOGLE_PAY_PASSWORD);
        mDriver.findElement(By.cssSelector(KEY_GOOGLE_PAY_PASSWORD)).sendKeys(DummyData.googlepayPassword);
        mDriver.findElement(By.cssSelector(KEY_GOOGLE_PAY_PASSWORD)).sendKeys(Keys.ENTER);
        Thread.sleep(3000);
        mDriver.switchTo().defaultContent();
        mDriver.switchTo().frame(KEY_IFRAME);
        Thread.sleep(3000);
        button_GooglepayContinue.click();
        Thread.sleep(3000);
        mDriver.switchTo().window(winHandleBefore);
        LOG.info("Googlepay payment is completed!");
    }

    public void submitOrderButton(String paymentType) {
        if (!paymentType.equals("googlepay") && !paymentType.equals("googlepayexpress") && !paymentType.equals(
                "klarna")) {
            waitAndClickElement(button_Submit);
        }
        LOG.info("Submit button is clicked!");
    }

    public void submitPayByKlarnaButton(String paymentType) {
        WebDriverWait wait;
        wait = new WebDriverWait(mDriver, 15);
        if (paymentType.equals("klarna")) {
            WebElement element = wait.until(ExpectedConditions.elementToBeClickable(button_PayByKlarna));
            element.sendKeys(Keys.ENTER);
        }
        LOG.info("Klarna submit button is clicked!");
    }

    public void selectDeliveryType(String deliveryType, String locale) {
        switch (locale) {
            case "uk":
            default:
                selectUkDelivery(deliveryType);
                break;
            case "us":
                selectUsDelivery(deliveryType);
                break;
            case "nl-en":
            case "nl":
                selectNlDelivery(deliveryType);
                break;
            case "de-en":
            case "de":
                selectDeDelivery(deliveryType);
                break;
            case "fr-en":
            case "fr":
                selectFrDelivery(deliveryType);
                break;
            case "ie":
                selectIeDelivery(deliveryType);
                break;
            case "ca":
                selectCaDelivery(deliveryType);
                break;
            case "eu":
                selectEuDelivery(deliveryType);
                break;
            case "au":
                selectAuDelivery(deliveryType);
                break;
        }
    }

    private void selectUkDelivery(String deliveryType) {
        switch (deliveryType) {
            case "standard":
            default:
                LOG.info("The delivery type is already selected as a standard for United Kingdom!");
                break;
            case "collectplus":
                myWaitsForElementToBeClickable(KEY_UK_COLLECT_PLUS_DELIVERY);
                mDriver.findElement(By.cssSelector(KEY_UK_COLLECT_PLUS_DELIVERY)).click();
                LOG.info("Collect plus delivery type is selected for United Kingdom!");
                break;
            case "express":
                myWaitsForElementToBeClickable(KEY_UK_EXPRESS_DELIVERY);
                clickExecuteScriptString(KEY_UK_EXPRESS_DELIVERY);
                LOG.info("Express delivery type is selected for United Kingdom!");
                break;
            case "channelIsland":
                myWaitsForElementToBeClickable(KEY_UK_CHANNEL_ISLAND_DELIVERY);
                clickExecuteScriptString(KEY_UK_CHANNEL_ISLAND_DELIVERY);
                LOG.info("Channel Island delivery type is selected for United Kingdom!");
                break;
        }
    }

    private void selectUsDelivery(String deliveryType) {
        if (deliveryType.equals("express")) {
            myWaitsForElementToBeClickable(KEY_US_EXPRESS_DELIVERY);
            clickExecuteScriptString(KEY_US_EXPRESS_DELIVERY);
            LOG.info("Express delivery type is selected for United States!");
        } else {
            LOG.info("The delivery type is already selected as a standard for United States!");
        }
    }

    private void selectNlDelivery(String deliveryType) {
        switch (deliveryType) {
            case "twoday":
                myWaitsForElementToBeClickable(KEY_NL_TWODAY_DELIVERY);
                clickExecuteScriptString(KEY_NL_TWODAY_DELIVERY);
                LOG.info("2 day delivery type is selected for Netherlands!");
                break;
            case "nextday":
                myWaitsForElementToBeClickable(KEY_NL_NEXTDAY_DELIVERY);
                clickExecuteScriptString(KEY_NL_NEXTDAY_DELIVERY);
                LOG.info("Nextday delivery type is selected for Netherlands!");
                break;
            default:
                LOG.info("The delivery type is already selected as a standard for Netherlands!");
        }
    }

    private void selectDeDelivery(String deliveryType) {
        switch (deliveryType) {
            case "twoday":
                myWaitsForElementToBeClickable(KEY_DE_TWODAY_DELIVERY);
                clickExecuteScriptString(KEY_DE_TWODAY_DELIVERY);
                LOG.info("2 day delivery type is selected for Germany!");
                break;
            case "nextday":
                myWaitsForElementToBeClickable(KEY_DE_NEXTDAY_DELIVERY);
                clickExecuteScriptString(KEY_DE_NEXTDAY_DELIVERY);
                LOG.info("Nextday delivery type is selected for Germany!");
                break;
            default:
                LOG.info("The delivery type is already selected as a standard for Germany!");
        }
    }

    private void selectEuDelivery(String deliveryType) {
        if (deliveryType.equals("express") && config.getString(Configs.ENV_SERVER).equals("qa")) {
            myWaitsForElementToBeClickable(KEY_EU_EXPRESS_DELIVERY);
            clickExecuteScriptString(KEY_EU_EXPRESS_DELIVERY);
            LOG.info("Express delivery type is selected for Eurozone!");
        } else {
            LOG.info("The delivery type is already selected as a standard for Eurozone!");
        }
    }

    private void selectFrDelivery(String deliveryType) {
        switch (deliveryType) {
            case "twoday":
                myWaitsForElementToBeClickable(KEY_FR_TWODAY_DELIVERY);
                scrollToElementByWebElementLocator(mDriver.findElement(By.cssSelector(KEY_FR_TWODAY_DELIVERY)));
                clickExecuteScriptString(KEY_FR_TWODAY_DELIVERY);
                LOG.info("2 day delivery type is selected for France!");
                break;
            case "nextday":
                myWaitsForElementToBeClickable(KEY_FR_NEXTDAY_DELIVERY);
                clickExecuteScriptString(KEY_FR_NEXTDAY_DELIVERY);
                LOG.info("Nextday delivery type is selected for France!");
                break;
            default:
                LOG.info("The delivery type is already selected as a standard for France!");
        }
    }

    private void selectIeDelivery(String deliveryType) {
        switch (deliveryType) {
            case "twoday":
                myWaitsForElementToBeClickable(KEY_IE_TWODAY_DELIVERY);
                clickExecuteScriptString(KEY_IE_TWODAY_DELIVERY);
                LOG.info("2 day delivery type is selected for Ireland!");
                break;
            case "nextday":
                myWaitsForElementToBeClickable(KEY_IE_NEXTDAY_DELIVERY);
                clickExecuteScriptString(KEY_IE_NEXTDAY_DELIVERY);
                LOG.info("Nextday delivery type is selected for Ireland!");
                break;
            default:
                LOG.info("The delivery type is already selected as a standard for Ireland!");
        }
    }

    private void selectCaDelivery(String deliveryType) {
        if (deliveryType.equals("express") && config.getString(Configs.ENV_SERVER).equals("qa")) {
            myWaitsForElementToBeClickable(KEY_CA_EXPRESS_DELIVERY);
            clickExecuteScriptString(KEY_CA_EXPRESS_DELIVERY);
            LOG.info("Express delivery type is selected for Canada!");
        } else {
            LOG.info("The delivery type is already selected as a standard for Canada!");
        }
    }

    private void selectAuDelivery(String deliveryType) {
        if (deliveryType.equals("express")) {
            myWaitsForElementToBeClickable(KEY_AU_EXPRESS_DELIVERY);
            clickExecuteScriptString(KEY_AU_EXPRESS_DELIVERY);
            LOG.info("Express delivery type is selected for United States!");
        } else {
            LOG.info("The delivery type is already selected as a standard for United States!");
        }
    }

    public void findCollectPlusStore() {
        sendKeysToWebElement(textField_CollectPlusPostCode, DummyData.ukPostcode, mDriver);
        waitAndClickElement(button_CollectPlusFind);
        myWaitsForVisibilityOfElementLocated(KEY_COLLECT_PLUS_LIST);
        LOG.info("Collect plus store is selected!");
    }

    public void deliveryContinueButton(String deliveryType) {
        switch (deliveryType) {
            case "standard":
            case "express":
            case "twoday":
            case "nextday":
                myWaitsForVisibilityOfElementLocated(KEY_DELIVERY_CONTINUE_BUTTON);
                clickExecuteScriptString(KEY_DELIVERY_CONTINUE_BUTTON);
                LOG.info("Delivery continue button is clicked!");
                break;
            case "collectplus":
                myWaitsForVisibilityOfElementLocated(KEY_COLLECT_PLUS_CONTINUE_BUTTON);
                //                scrollPage();
                clickExecuteScriptString(KEY_COLLECT_PLUS_CONTINUE_BUTTON);
                LOG.info("Collect plus delivery continue button is clicked!");
                break;
        }
    }

    public void addBillingAddressOnCheckOut() throws Exception {
        actionMoveAndClick(link_EnterAddressManuallyOnCheckout);
        sendKeysToWebElement(textField_AddressLineOnCheckout, DummyData.ukAddressLine1, mDriver);
        sendKeysToWebElement(textField_TownCityOnCheckout, DummyData.ukTownCity, mDriver);

        if (textField_PostCodeOnCheckout.isDisplayed()) {
            textField_PostCodeOnCheckout.sendKeys(Keys.ENTER);
            textField_PostCodeOnCheckout.sendKeys(DummyData.ukPostcode);
            textField_PostCodeOnCheckout.sendKeys(Keys.ENTER);
        }
        LOG.info("Billing address is added on checkout page!");
    }

    public void enterSecurityCode() {
        waitAndClickElementsUsingByLocator(By.cssSelector(KEY_SECURITY_CODE));
        mDriver.findElement(By.cssSelector(KEY_SECURITY_CODE)).sendKeys(DummyData.securityCode);
        LOG.info("Security code is entered!");
    }

    public void enterAddressForChannelIsland() {
        myWaitsForElementToBeClickable(KEY_ENTER_ADDRESS_MANUALLY);
        mDriver.findElement(By.cssSelector(KEY_ENTER_ADDRESS_MANUALLY)).sendKeys(Keys.ENTER);
        WebElement textFieldAddressLine1 = mDriver.findElement(By.cssSelector(KEY_ADDRESS_LINE1));
        sendKeysToWebElement(textFieldAddressLine1, DummyData.jerseyAddressLine1, mDriver);
        WebElement textFieldTownCity = mDriver.findElement(By.cssSelector(KEY_TOWN_CITY));
        sendKeysToWebElement(textFieldTownCity, DummyData.jerseyTownCity, mDriver);
        clickOnTextFromDropdownList(textField_Country, DummyData.jerseyCountry);

        if (textField_Postcode.isDisplayed()) {
            textField_Postcode.click();
            textField_Postcode.sendKeys(DummyData.jerseyPostcode);
            textField_Postcode.sendKeys(Keys.ENTER);
        }
        WebElement deliveryContinueButton = mDriver.findElement(By.cssSelector(KEY_DELIVERY_CONTINUE_BUTTON));
        waitAndClickElement(deliveryContinueButton);
        LOG.info("Address is entered for Channel Island!");
    }

    public void clickDeliveryContinue() {
        myWaitsForVisibilityOfElementLocated(KEY_DELIVERY_CONTINUE_BUTTON);
        mDriver.findElement(By.cssSelector(KEY_DELIVERY_CONTINUE_BUTTON)).sendKeys(Keys.ENTER);
        LOG.info("Delivery continue button is clicked on checkout page!");
    }

    public void checkDeliveryPrice(String deliveryAmountQA, String deliveryAmountPreprod, String locale) {
        String selectDeliveryPrice;
        String elementText;
        if (config.getString(Configs.ENV_SERVER).equals("preprod")) {
            switch (locale) {
                case "us":
                case "ca":
                    elementText = "Shipping";
                    break;
                case "de":
                    elementText = "Versand";
                    break;
                case "nl":
                    elementText = "Bezorgen";
                    break;
                case "fr":
                    elementText = "Livraison";
                    break;
                default:
                    elementText = "Delivery";
            }
        } else {
            switch (locale) {
                case "us":
                case "ca":
                    elementText = "Shipping";
                    break;
                default:
                    elementText = "Delivery";
            }
        }
        if (mDriver.findElement(By.cssSelector(KEY_DELIVERY_PRICE_TEXT)).getText().equals(elementText)) {
            selectDeliveryPrice = KEY_DELIVERY_PRICE_1;
        } else {
            selectDeliveryPrice = KEY_DELIVERY_PRICE_2;
        }
        if (!locale.equals("nl")) {
            myWaitsForVisibilityOfElementLocated(KEY_CARD_NUMBER);
        }
        //        scrollPage();
        WebElement deliveryPrice = mDriver.findElement(By.cssSelector(selectDeliveryPrice));
        String deliveryAmount = null;
        if (config.getString(Configs.ENV_SERVER).equals("qa")) {
            deliveryAmount = deliveryAmountQA;
        } else if (config.getString(Configs.ENV_SERVER).equals("preprod")) {
            deliveryAmount = deliveryAmountPreprod;
        }
        if (!locale.equals("ca")) {
            if (!locale.equals("eu")) {
                if (deliveryPrice.getText().equals(deliveryAmount)) {
                    LOG.info("Delivery price is correct! Delivery price is : " + deliveryAmount);
                } else {
                    Assert.fail("Delivery price is not correct! Delivery price should be  : " + deliveryAmount);
                }
            }
        }
    }

    @Override
    protected void load() {

    }

    @Override
    protected void isLoaded() throws Error {

    }
}