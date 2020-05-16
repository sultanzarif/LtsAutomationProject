package page_objects;

import org.apache.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.LoadableComponent;
import org.openqa.selenium.support.ui.Wait;
import org.openqa.selenium.support.ui.WebDriverWait;
import utils.DriverFactory;

import java.util.List;

public class BasePage<T> extends LoadableComponent<BasePage<T>> {

    private static Logger LOG = Logger.getLogger(BasePage.class);
    public WebDriver mDriver;
    protected WebDriverWait wait;

    public BasePage() {
        PageFactory.initElements(DriverFactory.getDriver(), this);
        mDriver = DriverFactory.getDriver();
        this.wait = new WebDriverWait(mDriver, 15);
    }

    /**********************************************************************************/

    public WebElement findElementIfExists(By by) {

        if (mDriver.findElements(by).size() > 0) {
            return mDriver.findElement(by);
        } else {
            return null;
        }
    }

    // the element should be css type
    public Boolean isElementExist(String element) {
        myWaitsForVisibilityOfElementLocated(element);
        WebElement myElement = mDriver.findElement(By.cssSelector(element));
        if (myElement.isDisplayed()) {
            return true;
        } else {
            return false;
        }
    }

    public void myWaitsForVisibilityOfElementLocated(String element) {
        WebDriverWait wait = new WebDriverWait(mDriver, 10);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector(element)));
    }

    public void myWaitsForElementToBeClickable(String element) {
        WebDriverWait wait = new WebDriverWait(mDriver, 10);
        wait.until(ExpectedConditions.elementToBeClickable(By.cssSelector(element)));
    }

    public Boolean isClickable(String element) {
        WebDriverWait wait = new WebDriverWait(mDriver, 10);
        if(wait.until(ExpectedConditions.elementToBeClickable(By.cssSelector(element))).getSize() != null) {
            return true;
        } else {
            return false;
        }
    }

    public void findAndClick(String element) {
        Actions clickAction = new Actions(mDriver);
        WebElement myElement = mDriver.findElement(By.cssSelector(element));
        clickAction.moveToElement(myElement);
        clickAction.click().build().perform();
    }

    public void clickExecuteScriptString(String element) {
        WebElement myElement = mDriver.findElement(By.cssSelector(element));
        ((JavascriptExecutor) mDriver).executeScript("arguments[0].click();", myElement);
    }

    public void clickExecuteScriptWebElement(WebElement element) {
        ((JavascriptExecutor) mDriver).executeScript("arguments[0].click();", element);
    }

    public void sendKeysToWebElement(WebElement element, String textToSend, WebDriver aDriver) {
        try {
            WaitUntilWebElementIsVisible(element, aDriver);
            element.sendKeys(textToSend);
            LOG.info(
                    "Successfully Sent the following keys: '" + textToSend + "' to element: " + "<" + element.toString()
                            + ">");
        } catch (Exception e) {
            LOG.error("Unable to locate WebElement: " + "<" + element.toString() + "> and send the following keys: "
                    + textToSend);
            Assert.fail("Unable to send keys to WebElement, Exception: " + e.getMessage());
        }
    }

    public boolean WaitUntilWebElementIsVisible(WebElement element, WebDriver aDriver) {
        WebDriverWait wait = new WebDriverWait(aDriver, 15);
        try {
            wait.until(ExpectedConditions.visibilityOf(element));
            LOG.info("WebElement is visible using locator: " + "<" + element.toString() + ">");
            return true;
        } catch (Exception e) {
            LOG.error("WebElement is NOT visible, using locator: " + "<" + element.toString() + ">");
            Assert.fail("WebElement is NOT visible, Exception: " + e.getMessage());
            return false;
        }
    }

    public void clickOnTextFromDropdownList(WebElement list, String textToSearchFor) {
        Wait<WebDriver> tempWait = new WebDriverWait(mDriver, 30);
        try {
            tempWait.until(ExpectedConditions.elementToBeClickable(list)).click();
            list.sendKeys(textToSearchFor);
            list.sendKeys(Keys.TAB);
            LOG.info(
                    "Successfully sent the following keys: " + textToSearchFor + ", to the following WebElement: " + "<"
                            + list.toString() + ">");
        } catch (Exception e) {
            LOG.error("Unable to send the following keys: " + textToSearchFor + ", to the following WebElement: " + "<"
                    + list.toString() + ">");
            Assert.fail("Unable to select the required text from the dropdown menu, Exception: " + e.getMessage());
        }
    }

    public void waitAndClickElementsUsingByLocator(By by) {
        boolean clicked = false;
        int attempts = 0;
        WebDriverWait wait;
        wait = new WebDriverWait(mDriver, 15);

        while (!clicked && attempts < 10) {
            try {
                wait.until(ExpectedConditions.elementToBeClickable(by)).click();
                LOG.info("Successfully clicked on the element using by locator: " + "<" + by.toString() + ">");
                clicked = true;
            } catch (Exception e) {
                LOG.error("Unable to wait and click on the element using the By locator, Exception: " + e.getMessage());
            }
            attempts++;
        }
        if (!clicked) {
            Assert.fail("Unable to wait and click on the element using the By locator, element: " + "<" + by.toString()
                    + ">");
        }
    }

    /**********************************************************************************
     **CLICK METHODS
     **********************************************************************************/
    public void waitAndClickElement(WebElement element) {
        boolean clicked = false;
        int attempts = 0;
        while (!clicked && attempts < 3) {
            try {
                WebDriverWait myWait = new WebDriverWait(mDriver, 5);
                final WebElement myElement = myWait.until(ExpectedConditions.elementToBeClickable(element));
                myElement.click();
                LOG.info("Successfully clicked on the WebElement: " + "<" + element.toString() + ">");
                clicked = true;
            } catch (Exception e) {
                LOG.error("Unable to wait and click on WebElement attemptNumber:" + attempts + ", Exception: " + e
                        .getMessage());
            }
            attempts++;
        }
        if (!clicked) {
            Assert.fail("Unable to wait and click on the WebElement, using locator: " + "<" + element.toString() + ">");
        }
    }

    public void clickOnElementUsingCustomTimeout(WebElement locator, WebDriver driver, int timeout) {
        try {
            final WebDriverWait customWait = new WebDriverWait(driver, timeout);
            customWait.until(ExpectedConditions.refreshed(ExpectedConditions.elementToBeClickable(locator)));
            locator.click();
            LOG.info("Successfully clicked on the WebElement, using locator: " + "<" + locator + ">"
                    + ", using a custom Timeout of: " + timeout);
        } catch (Exception e) {
            LOG.error("Unable to click on the WebElement, using locator: " + "<" + locator + ">"
                    + ", using a custom Timeout of: " + timeout);
            Assert.fail("Unable to click on the WebElement, Exception: " + e.getMessage());
        }
    }

    /**********************************************************************************
     **ACTION METHODS
     **********************************************************************************/

    public void actionMoveAndClick(WebElement element) throws Exception {
        Actions ob = new Actions(mDriver);
        try {
            this.wait.until(ExpectedConditions.elementToBeClickable(element)).isEnabled();
            ob.moveToElement(element).click().build().perform();
            LOG.info("Successfully Action Moved and Clicked on the WebElement, using locator: " + "<" + element
                    .toString() + ">");
        } catch (StaleElementReferenceException elementUpdated) {
            WebElement elementToClick = element;
            Boolean elementPresent = wait.until(ExpectedConditions.elementToBeClickable(elementToClick)).isEnabled();
            if (elementPresent == true) {
                ob.moveToElement(elementToClick).click().build().perform();
                LOG.info("(Stale Exception) - Successfully Action Moved and Clicked on the WebElement, using locator: "
                        + "<" + element.toString() + ">");
            }
        } catch (Exception e) {
            LOG.error("Unable to Action Move and Click on the WebElement, using locator: " + "<" + element.toString()
                    + ">");
            Assert.fail("Unable to Action Move and Click on the WebElement, Exception: " + e.getMessage());
        }
    }

    /**********************************************************************************/

    public void actionMoveAndClickByLocator(By element) throws Exception {
        Actions ob = new Actions(mDriver);
        try {
            Boolean elementPresent = wait.until(ExpectedConditions.elementToBeClickable(element)).isEnabled();
            if (elementPresent == true) {
                WebElement elementToClick = mDriver.findElement(element);
                ob.moveToElement(elementToClick).click().build().perform();
                LOG.info("Action moved and clicked on the following element, using By locator: " + "<" + element
                        .toString() + ">");
            }
        } catch (StaleElementReferenceException elementUpdated) {
            WebElement elementToClick = mDriver.findElement(element);
            ob.moveToElement(elementToClick).click().build().perform();
            LOG.info("(Stale Exception) - Action moved and clicked on the following element, using By locator: " + "<"
                    + element.toString() + ">");
        } catch (Exception e) {
            LOG.error("Unable to Action Move and Click on the WebElement using by locator: " + "<" + element.toString()
                    + ">");
            Assert.fail(
                    "Unable to Action Move and Click on the WebElement using by locator, Exception: " + e.getMessage());
        }
    }

    /**********************************************************************************
     **SEND KEYS METHODS /
     **********************************************************************************/
    public void sendKeysToWebElement(WebElement element, String textToSend) throws Exception {
        try {
            WaitUntilWebElementIsVisible(element);
            //            element.clear();
            element.sendKeys(textToSend);
            LOG.info(
                    "Successfully Sent the following keys: '" + textToSend + "' to element: " + "<" + element.toString()
                            + ">");
        } catch (Exception e) {
            LOG.error("Unable to locate WebElement: " + "<" + element.toString() + "> and send the following keys: "
                    + textToSend);
            Assert.fail("Unable to send keys to WebElement, Exception: " + e.getMessage());
        }
    }

    /**********************************************************************************
     **JS METHODS & JS SCROLL
     **********************************************************************************/
    public void scrollToElementByWebElementLocator(WebElement element) {
        try {
            this.wait.until(ExpectedConditions.visibilityOf(element)).isEnabled();
            ((JavascriptExecutor) mDriver).executeScript("arguments[0].scrollIntoView();", element);
            ((JavascriptExecutor) mDriver).executeScript("window.scrollBy(0, -400)");
            LOG.info("Succesfully scrolled to the WebElement, using locator: " + "<" + element.toString() + ">");
        } catch (Exception e) {
            LOG.error("Unable to scroll to the WebElement, using locator: " + "<" + element.toString() + ">");
            Assert.fail("Unable to scroll to the WebElement, Exception: " + e.getMessage());
        }
    }

    public void jsPageScroll(int numb1, int numb2) {
        try {
            JavascriptExecutor js = (JavascriptExecutor) mDriver;
            js.executeScript("scroll(" + numb1 + "," + numb2 + ")");
            LOG.info("Succesfully scrolled to the correct position! using locators: " + numb1 + ", " + numb2);
        } catch (Exception e) {
            LOG.error("Unable to scroll to element using locators: " + "<" + numb1 + "> " + " <" + numb2 + ">");
            Assert.fail("Unable to manually scroll to WebElement, Exception: " + e.getMessage());
        }
    }

    /**********************************************************************************/

    public void waitAndclickElementUsingJS(WebElement element) {
        JavascriptExecutor js = (JavascriptExecutor) mDriver;
        try {
            wait.until(ExpectedConditions.elementToBeClickable(element));
            js.executeScript("arguments[0].click();", element);
            LOG.info("Successfully JS clicked on the following WebElement: " + "<" + element.toString() + ">");
        } catch (StaleElementReferenceException elementUpdated) {
            WebElement staleElement = element;
            Boolean elementPresent = wait.until(ExpectedConditions.elementToBeClickable(staleElement)).isEnabled();
            if (elementPresent == true) {
                js.executeScript("arguments[0].click();", elementPresent);
                LOG.info("(Stale Exception) Successfully JS clicked on the following WebElement: " + "<" + element
                        .toString() + ">");
            }
        } catch (NoSuchElementException e) {
            LOG.error("Unable to JS click on the following WebElement: " + "<" + element.toString() + ">");
            Assert.fail("Unable to JS click on the WebElement, Exception: " + e.getMessage());
        }
    }

    public void jsClick(WebElement element) {
        JavascriptExecutor js = (JavascriptExecutor) mDriver;
        js.executeScript("arguments[0].click();", element);
    }

    /**********************************************************************************
     **WAIT METHODS
     **********************************************************************************/
    public boolean WaitUntilWebElementIsVisible(WebElement element) {
        try {
            this.wait.until(ExpectedConditions.visibilityOf(element));
            LOG.info("WebElement is visible using locator: " + "<" + element.toString() + ">");
            return true;
        } catch (Exception e) {
            LOG.error("WebElement is NOT visible, using locator: " + "<" + element.toString() + ">");
            Assert.fail("WebElement is NOT visible, Exception: " + e.getMessage());
            return false;
        }
    }

    public boolean WaitUntilWebElementIsVisibleUsingByLocator(By element) {
        try {
            this.wait.until(ExpectedConditions.visibilityOfElementLocated(element));
            LOG.info("Element is visible using By locator: " + "<" + element.toString() + ">");
            return true;
        } catch (Exception e) {
            LOG.error("WebElement is NOT visible, using By locator: " + "<" + element.toString() + ">");
            Assert.fail("WebElement is NOT visible, Exception: " + e.getMessage());
            return false;
        }
    }

    /**********************************************************************************/

    public boolean isElementClickable(WebElement element) {
        try {
            this.wait.until(ExpectedConditions.elementToBeClickable(element));
            LOG.info("WebElement is clickable using locator: " + "<" + element.toString() + ">");
            return true;
        } catch (Exception e) {
            LOG.error("WebElement is NOT clickable using locator: " + "<" + element.toString() + ">");
            return false;
        }
    }

    public boolean waitUntilPreLoadElementDissapears(By element) {
        return this.wait.until(ExpectedConditions.invisibilityOfElementLocated(element));
    }

    /**********************************************************************************
     **PAGE METHODS
     **********************************************************************************/
    public BasePage loadUrl(String url) {
        mDriver.get(url);
        return new BasePage();
    }

    /**********************************************************************************/

    public String getCurrentURL() {
        try {
            String url = mDriver.getCurrentUrl();
            LOG.info("Found(Got) the following URL: " + url);
            return url;
        } catch (Exception e) {
            LOG.error("Unable to locate (Get) the current URL, Exception: " + e.getMessage());
            return e.getMessage();
        }
    }

    public String waitForSpecificPage(String urlToWaitFor) {
        try {
            String url = mDriver.getCurrentUrl();
            this.wait.until(ExpectedConditions.urlMatches(urlToWaitFor));
            LOG.info("The current URL was: " + url + ", " + "navigated and waited for the following URL: "
                    + urlToWaitFor);
            return urlToWaitFor;
        } catch (Exception e) {
            LOG.error("Exception! waiting for the URL: " + urlToWaitFor + ",  Exception: " + e.getMessage());
            return e.getMessage();
        }
    }

    /**********************************************************************************
     **ALERT & POPUPS METHODS
     **********************************************************************************/
    public void closePopups(By locator) {
        try {
            List<WebElement> elements = this.wait.until(ExpectedConditions.presenceOfAllElementsLocatedBy(locator));
            for (WebElement element : elements) {
                if (element.isDisplayed()) {
                    element.click();
                    this.wait.until(ExpectedConditions.invisibilityOfAllElements(elements));
                    LOG.info("The popup has been closed Successfully!");
                }
            }
        } catch (Exception e) {
            LOG.error("Exception! - could not close the popup!, Exception: " + e.toString());
            throw (e);
        }
    }

    public boolean checkPopupIsVisible() {
        try {
            @SuppressWarnings("unused")
            Alert alert = wait.until(ExpectedConditions.alertIsPresent());
            LOG.info("A popup has been found!");
            return true;
        } catch (Exception e) {
            LOG.error("Error came while waiting for the alert popup to appear. " + e.getMessage());
        }
        return false;
    }

    /**********************************************************************************/

    public boolean isAlertPresent() {
        try {
            mDriver.switchTo().alert();
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public void closeAlertPopupBox() {
        try {
            Alert alert = this.wait.until(ExpectedConditions.alertIsPresent());
            alert.accept();
        } catch (UnhandledAlertException f) {
            Alert alert = mDriver.switchTo().alert();
            alert.accept();
        } catch (Exception e) {
            LOG.error("Unable to close the popup");
            Assert.fail("Unable to close the popup, Exception: " + e.getMessage());
        }
    }

    @Override
    protected void load() {

    }

    @Override
    protected void isLoaded() throws Error {

    }
}