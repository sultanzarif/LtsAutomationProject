package page_objects;

import data.DummyData;
import org.apache.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import utils.CommonFunctions;
import utils.Configs;
import utils.DriverFactory;
import utils.PropertyManager;

public class HomePage extends BasePage<HomePage> {

    private static Logger LOG = Logger.getLogger(HomePage.class);

    //region 'Elements'
    private final String KEY_CATEGORY_MENU_LINK_QA = "#navigationbarcomponent-link-main-noempty-0";
    private final String KEY_CATEGORY_MENU_LINK_PREPROD = "#navigationbarcomponent-link-main-noempty-1";
    private final String KEY_LOGO_QA = "img[title=\"LTS Logo\"]";
    private final String KEY_LOGO_PREPROD_DE = "img[title=\"LTS-Logo\"]";
    private final String KEY_LOGO_PREPROD_NL = "img[title=\"Logo van LTS\"]";
    private final String KEY_LOGO_PREPROD_FR = "img[title=\"Logo LTS\"]";
    private final String KEY_WISHLIST = "#header-link-wishlist";
    private final String KEY_MINIBAG_ICON = "#minicartcomponent-link-bag";
    private final String KEY_SEARCH_ICON = "#header-btn-search";
    private final String KEY_SEARCH_BOX = "#searchglobal";
    private final String KEY_MYACCOUNT_AFTER_LOGIN = "#welcomebackcomponent-link-myaccount-existing-user-desktop";
    private final String KEY_MY_ACCOUNT_BEFORE_LOGIN = "#welcomebackcomponent-link-myaccount-guest";
    private final String KEY_SITE_SWITCHER_CONTINUE_BUTTON = "#siteSwitching-btn-continue-modal";
    private final String KEY_US_SITE_BUTTON = "a[data-lang='en-US']";
    private final String KEY_NL_EN_SITE_BUTTON = "a[data-lang='en-NL']";
    private final String KEY_DE_EN_SITE_BUTTON_QA = "a[data-lang='en_DE']";
    private final String KEY_DE_EN_SITE_BUTTON_PREPROD = "#changecountry-link-country-name-3-1";
    private final String KEY_FR_EN_SITE_BUTTON = "a[data-lang='en-FR']";
    private final String KEY_IE_SITE_BUTTON_QA = "a[data-lang='en_IE']";
    private final String KEY_IE_SITE_BUTTON_PREPROD = "#changecountry-link-country-name-6-0";
    private final String KEY_CA_SITE_BUTTON = "a[data-lang='en-CA']";
    private final String KEY_NL_NL_SITE_BUTTON = "a[data-lang='nl-NL']";
    private final String KEY_DE_DE_SITE_BUTTON = "a[data-lang='de-DE']";
    private final String KEY_FR_FR_SITE_BUTTON = "a[data-lang='fr-FR']";
    private final String KEY_EU_SITE_BUTTON = "a[data-lang='en-SM']";
    private final String KEY_AU_SITE_BUTTON = "a[data-lang='en-AU']";
    private final String KEY_NZ_SITE_BUTTON_QA = "a[data-lang='en_NZ']";
    private final String KEY_NZ_SITE_BUTTON_PREPROD = "#changecountry-link-country-name-9-0";
    private final String KEY_INT_SITE_BUTTON = "a[data-lang='en_XI']";
    private final String KEY_TOPBAR_SITE_SWITCHER_DESKTOP = "#topbar-siteswitcher";
    private final String KEY_TOPBAR_SITE_SWITCHER_MOBILE = "#header-mobile-siteswitcher";
    private final String KEY_LINK_CATEGORY_QA = "a[title='New Arrivals']";
    private final String KEY_LINK_CATEGORY_PREPROD = "a[title='New In']";
    private final String KEY_LINK_CATEGORY_PREPROD_DE = "a[title='Neue Artikel']";
    private final String KEY_LINK_CATEGORY_PREPROD_FR = "a[title='Nouveautés']";
    private final String KEY_LINK_CATEGORY_PREPROD_NL = "a[title='Nieuw']";
    private final String KEY_COOKIE = ".uc-banner-content #uc-btn-accept-banner";
    private final String KEY_GLOBAL_ALERT = "#main-content > div.global-alerts > div";
    private final String KEY_SIGNUP_EMAIL_ADDRESS = "#signup-email-address";
    private final String KEY_FIRST_SERVICE_MESSAGE_LINK = "#servicemessagingcomponent-link-1";
    private final String KEY_SECOND_SERVICE_MESSAGE_LINK = "#servicemessagingcomponent-link-2";
    private final String KEY_HOMEPAGE_ELEMENT = "#main-content > div.homepage-main-container";
    private final String KEY_CAROUSEL_FIRST_PRODUCT_IMAGE = "#main-content > div.homepage-main-container > section > div > div > div > div > div > div.slick-slide.slick-current.slick-active > div > a > img";

    public @FindBy(id = "header-btn-mobile-menu-hamburger")
    WebElement link_HamburgerMenu;
    //endregion

    String serviceLink;
    String searchWord;
    private PropertyManager config = PropertyManager.getInstance();

    public HomePage() {
        PageFactory.initElements(DriverFactory.getDriver(), this);
        mDriver = DriverFactory.getDriver();
    }

    public void clickCategoryMenu() {
        if (CommonFunctions.isMobile()) {
            link_HamburgerMenu.click();
        }
        if (config.getString(Configs.ENV_SERVER).equals("qa")) {
            findAndClick(KEY_CATEGORY_MENU_LINK_QA);
            LOG.info("Category menu " + mDriver.findElement(By.cssSelector(KEY_CATEGORY_MENU_LINK_QA)).getText()
                    + " is clicked!");
        } else {
            findAndClick(KEY_CATEGORY_MENU_LINK_PREPROD);
            LOG.info("Category menu " + mDriver.findElement(By.cssSelector(KEY_CATEGORY_MENU_LINK_PREPROD)).getText()
                    + " is clicked!");
        }
    }

    public void clickCategoryLink(String locale) {
        String myElement = null;
        if (config.getString(Configs.ENV_SERVER).equals("qa") || config.getString(Configs.ENV_SERVER).equals("dev")) {
            myElement = KEY_LINK_CATEGORY_QA;
        } else if (config.getString(Configs.ENV_SERVER).equals("preprod")) {
            if (locale.equals("de")) {
                myElement = KEY_LINK_CATEGORY_PREPROD_DE;
            } else if (locale.equals("nl")) {
                myElement = KEY_LINK_CATEGORY_PREPROD_NL;
            } else if (locale.equals("fr")) {
                myElement = KEY_LINK_CATEGORY_PREPROD_FR;
            } else {
                myWaitsForVisibilityOfElementLocated(KEY_LINK_CATEGORY_PREPROD);
                myElement = KEY_LINK_CATEGORY_PREPROD;
            }
        }
        if (myElement != null) {
            myWaitsForElementToBeClickable(myElement);
            clickExecuteScriptString(myElement);
        }
        LOG.info("Category link is clicked!");
    }

    public void clickMyAccountLinkBeforeLogin() {
        myWaitsForElementToBeClickable(KEY_MY_ACCOUNT_BEFORE_LOGIN);
        clickExecuteScriptString(KEY_MY_ACCOUNT_BEFORE_LOGIN);
        LOG.info("My account link is clicked before login!");
    }

    public void clickMyAccountLinkAfterLogin() {
        myWaitsForVisibilityOfElementLocated(KEY_MYACCOUNT_AFTER_LOGIN);
        clickExecuteScriptString(KEY_MYACCOUNT_AFTER_LOGIN);
        LOG.info("My account link is clicked after login!");
    }

    public void changeLocalSite(String locale) throws InterruptedException {
        if (!locale.equals("uk")) {
            if (PropertyManager.getInstance().isMobile()) {
                myWaitsForElementToBeClickable(KEY_TOPBAR_SITE_SWITCHER_MOBILE);
                clickExecuteScriptString(KEY_TOPBAR_SITE_SWITCHER_MOBILE);
                LOG.info("Site switcher popup is opened on Mobile!");
            } else {
                Thread.sleep(1000);
                myWaitsForElementToBeClickable(KEY_TOPBAR_SITE_SWITCHER_DESKTOP);
                clickExecuteScriptString(KEY_TOPBAR_SITE_SWITCHER_DESKTOP);
                LOG.info("Site switcher popup is opened on Desktop!");
            }
            Thread.sleep(2000);
            String siteButton;
            switch (locale) {
                case "us":
                    siteButton = KEY_US_SITE_BUTTON;
                    LOG.info("United States site is selected!");
                    break;
                case "nl-en":
                    siteButton = KEY_NL_EN_SITE_BUTTON;
                    LOG.info("Netherlands(English) site is selected!");
                    break;
                case "de-en":
                    if (config.getString(Configs.ENV_SERVER).equals("qa")) {
                        siteButton = KEY_DE_EN_SITE_BUTTON_QA;
                    } else {
                        siteButton = KEY_DE_EN_SITE_BUTTON_PREPROD;
                    }
                    LOG.info("Germany(English) site is selected!");
                    break;
                case "fr-en":
                    siteButton = KEY_FR_EN_SITE_BUTTON;
                    LOG.info("France(English) site is selected!");
                    break;
                case "ie":
                    if (config.getString(Configs.ENV_SERVER).equals("qa")) {
                        siteButton = KEY_IE_SITE_BUTTON_QA;
                    } else {
                        siteButton = KEY_IE_SITE_BUTTON_PREPROD;
                    }
                    LOG.info("Ireland site is selected!");
                    break;
                case "ca":
                    siteButton = KEY_CA_SITE_BUTTON;
                    LOG.info("Canada site is selected!");
                    break;
                case "nl":
                    siteButton = KEY_NL_NL_SITE_BUTTON;
                    LOG.info("Netherlands(Dutch) site is selected!");
                    break;
                case "de":
                    siteButton = KEY_DE_DE_SITE_BUTTON;
                    LOG.info("Germany(Deutsch) site is selected!");
                    break;
                case "fr":
                    siteButton = KEY_FR_FR_SITE_BUTTON;
                    LOG.info("France(Francais) site is selected!");
                    break;
                case "eu":
                    siteButton = KEY_EU_SITE_BUTTON;
                    LOG.info("Eurozone site is selected!");
                    break;
                case "au":
                    siteButton = KEY_AU_SITE_BUTTON;
                    LOG.info("Australia site is selected!");
                    break;
                case "nz":
                    if (config.getString(Configs.ENV_SERVER).equals("qa")) {
                        siteButton = KEY_NZ_SITE_BUTTON_QA;
                    } else {
                        siteButton = KEY_NZ_SITE_BUTTON_PREPROD;
                    }
                    LOG.info("New Zealand site is selected!");
                    break;
                case "int":
                    siteButton = KEY_INT_SITE_BUTTON;
                    LOG.info("International site is selected!");
                    break;
                default:
                    return;
            }
            myWaitsForVisibilityOfElementLocated(siteButton);
            clickExecuteScriptString(siteButton);
            closeSiteSwitcherPopup();

            myWaitsForElementToBeClickable(KEY_COOKIE);
            WebElement cookieAcceptButton = findElementIfExists(By.cssSelector(KEY_COOKIE));
            if (cookieAcceptButton != null) {
                cookieAcceptButton.click();
                LOG.info("Cookie accept popup is closed!");
            }
        }
    }

    public void clickLogo(String locale) throws InterruptedException {
        String logoElement;
        if (config.getString(Configs.ENV_SERVER).equals("preprod")) {
            switch (locale) {
                case "de":
                    logoElement = KEY_LOGO_PREPROD_DE;
                    break;
                case "nl":
                    logoElement = KEY_LOGO_PREPROD_NL;
                    break;
                case "fr":
                    logoElement = KEY_LOGO_PREPROD_FR;
                    break;
                default:
                    logoElement = KEY_LOGO_QA;
            }
        } else {
            logoElement = KEY_LOGO_QA;
        }
        myWaitsForVisibilityOfElementLocated(logoElement);
        Thread.sleep(2000);
        findAndClick(logoElement);
        LOG.info("Logo is clicked!");
    }

    public void clickShoppingBagIcon() {
        myWaitsForVisibilityOfElementLocated(KEY_MINIBAG_ICON);
        mDriver.findElement(By.cssSelector(KEY_MINIBAG_ICON)).sendKeys(Keys.ENTER);
        LOG.info("Shopping bag icon is clicked!");
    }

    public void clickWishlistIcon() {
        myWaitsForVisibilityOfElementLocated(KEY_WISHLIST);
        clickExecuteScriptString(KEY_WISHLIST);
        LOG.info("Wishlist icon is clicked!");
    }

    private void closeSiteSwitcherPopup() throws InterruptedException {
        Thread.sleep(2000);
        myWaitsForElementToBeClickable(KEY_SITE_SWITCHER_CONTINUE_BUTTON);
        mDriver.findElement(By.cssSelector(KEY_SITE_SWITCHER_CONTINUE_BUTTON)).sendKeys(Keys.ENTER);
        LOG.info("Site Switcher popup is closed!");
    }

    public void clickSearchIcon() {
        myWaitsForElementToBeClickable(KEY_SEARCH_ICON);
        clickExecuteScriptString(KEY_SEARCH_ICON);
        LOG.info("Search icon is clicked!");
    }

    public void searchKeyword(String keyword) {
        switch (keyword) {
            case "obtainable":
            default:
                searchWord = DummyData.obtainableSearchWord;
                break;
            case "unobtainable":
                searchWord = DummyData.unobtainableSearchWord;
                break;
            case "withTall":
                searchWord = DummyData.searchWordWithTall;
                break;
            case "withoutTall":
                searchWord = DummyData.searchWordWithoutTall;
                break;
        }

        myWaitsForVisibilityOfElementLocated(KEY_SEARCH_BOX);
        clickExecuteScriptString(KEY_SEARCH_BOX);
        LOG.info("Search box is clicked!");
        mDriver.findElement(By.cssSelector(KEY_SEARCH_BOX)).sendKeys(searchWord);
        mDriver.findElement(By.cssSelector(KEY_SEARCH_BOX)).sendKeys(Keys.ENTER);
        LOG.info("Search text is entered!");
    }

    public void assertSearchPage(String keyword) {
        if (keyword.equals("unobtainable")) {
            myWaitsForVisibilityOfElementLocated(KEY_GLOBAL_ALERT);
            if (mDriver.findElement(By.cssSelector(KEY_GLOBAL_ALERT)).getText().contains("no results.")) {
                LOG.info("........" + mDriver.findElement(By.cssSelector(KEY_GLOBAL_ALERT)).getText());
                LOG.info("Searched keyword is not shown!");
            } else {
                Assert.fail("Search keyword test is failed!");
            }
        } else if (keyword.equals("obtainable")) {
            if (mDriver.getCurrentUrl().contains(searchWord)) {
                LOG.info("The url " + mDriver.getCurrentUrl() + " contains the word " + DummyData.obtainableSearchWord
                        + " !");
            }
        }
    }

    public void enterEmailAddressForSignup() {
        myWaitsForElementToBeClickable(KEY_SIGNUP_EMAIL_ADDRESS);
        mDriver.findElement(By.cssSelector(KEY_SIGNUP_EMAIL_ADDRESS)).sendKeys(CommonFunctions.getUniqueEmail());
        LOG.info("Email address is entered!");
    }

    public void checkServiceMessage(String serviceMessage) {

        switch (serviceMessage) {
            case "firstServiceMessage":
            default:
                serviceLink = KEY_FIRST_SERVICE_MESSAGE_LINK;
                break;
            case "secondServiceMessage":
                serviceLink = KEY_SECOND_SERVICE_MESSAGE_LINK;
                break;
        }
        if (isClickable(serviceLink)) {
            LOG.info("Service message link is clickable!");
        } else {
            Assert.fail("Service message link is not clickable!");
        }
    }

    public void clickServiceMessage(String serviceMessage) {
        if (serviceMessage.equals("firstServiceMessage")) {
            mDriver.findElement(By.cssSelector(serviceLink)).click();
            LOG.info("Service message link is clicked!");
        }
    }

    public void navigatesPreviousPage() {
        mDriver.navigate().back();
    }

    public void checkHomepage() {
        if(isClickable(KEY_HOMEPAGE_ELEMENT)){
            LOG.info("The page is turned the previous page!");
        } else {
            Assert.fail("The page is not turned the previous page!");
        }
    }

    @Override
    protected void load() {

    }

    @Override
    protected void isLoaded() throws Error {

    }
}