package page_objects;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;
import org.testng.Assert;
import utils.Configs;
import utils.DriverFactory;
import utils.PropertyManager;

import java.util.*;

public class ProductListPage extends BasePage<ProductListPage> {

    private static Logger LOG = Logger.getLogger(ProductListPage.class);
    //region 'Elements'
    private final String KEY_WISHLIST_TEXT = "#header-link-wishlist > span > span";
    private final String KEY_PRODUCT_PRICE = ".actual";
    private final String KEY_PRODUCT_IMAGE = "#productGrid-link-img-product-3";
    private final String KEY_ADD_WISHLIST_ICON = ".glyphicon-heart-empty";
    private final String KEY_ADD_WISHLIST_ICON_0 = "#productGrid-link-add-to-wishlist-0";
    private final String KEY_DRESS_SIZE_FILTER = "#productRefinementComponent-link-facet-header-0";
    private final String KEY_LEG_LENGTH_FILTER = "#productRefinementComponent-link-facet-header-1";
    private final String KEY_SHOE_SIZE_FILTER = "#productRefinementComponent-link-facet-header-2";
    private final String KEY_DEPARTMENT_FILTER = "#productRefinementComponent-link-facet-header-3";
    private final String KEY_SEASON_FILTER = "#productRefinementComponent-link-facet-header-4";
    private final String KEY_SUB_DEPARTMENT_FILTER = "#productRefinementComponent-link-facet-header-5";
    private final String KEY_COLOR_FILTER = "#productRefinementComponent-link-facet-header-6";
    private final String KEY_PRICE_FILTER = "#productRefinementComponent-link-facet-header-7";
    private final String KEY_BRAND_FILTER = "#productRefinementComponent-link-facet-header-8";
    private final String KEY_BOOT_LENGTH_FILTER = "#productRefinementComponent-link-facet-header-9";
    private final String KEY_HEEL_FILTER = "#productRefinementComponent-link-facet-header-10";
    private final String KEY_LEG_SHAPE_FILTER = "#productRefinementComponent-link-facet-header-11";
    private final String KEY_LENGTH_FILTER = "#productRefinementComponent-link-facet-header-12";
    private final String KEY_MAJORITY_FIBRE_FILTER = "#productRefinementComponent-link-facet-header-13";
    private final String KEY_RISE_FILTER = "#productRefinementComponent-link-facet-header-14";
    private final String KEY_SLEEVE_LENGTH_FILTER = "#productRefinementComponent-link-facet-header-15";
    private final String KEY_DRESS_FIRST_FILTER_ITEM =
            "#multiCollapseFacet-0 > div > div.nonTopValues-facets-container > div:nth-child(1) > label > span.checkmark";
    private final String KEY_LEG_LENGTH_FIRST_FILTER_ITEM =
            "#multiCollapseFacet-1 > div > div.nonTopValues-facets-container > div > label > span.checkmark";
    private final String KEY_SHOE_SIZE_FIRST_FILTER_ITEM =
            "#multiCollapseFacet-2 > div > div.nonTopValues-facets-container > div:nth-child(1) > label > span.checkmark";
    private final String KEY_DEPARTMENT_FIRST_FILTER_ITEM =
            "#multiCollapseFacet-3 > div > div.nonTopValues-facets-container > div:nth-child(1) > label > span.checkmark";
    private final String KEY_SEASON_FIRST_FILTER_ITEM =
            "#multiCollapseFacet-4 > div > div.nonTopValues-facets-container > div:nth-child(1) > label > span.checkmark";
    private final String KEY_SUB_DEPARTMENT_FIRST_FILTER_ITEM =
            "#multiCollapseFacet-5 > div > div.nonTopValues-facets-container > div:nth-child(1) > label > span.checkmark";
    private final String KEY_COLOR_FIRST_FILTER_ITEM =
            "#multiCollapseFacet-6 > div > div.nonTopValues-facets-container > div:nth-child(1) > label > span.checkmark";
    private final String KEY_PRICE_FIRST_FILTER_ITEM =
            "#multiCollapseFacet-7 > div > div.nonTopValues-facets-container > div:nth-child(1) > label > span.checkmark";
    private final String KEY_BRAND_FIRST_FILTER_ITEM =
            "#multiCollapseFacet-8 > div > div.nonTopValues-facets-container > div:nth-child(1) > label > span.checkmark";
    private final String KEY_BOOT_LENGTH_FIRST_FILTER_ITEM =
            "#multiCollapseFacet-9 > div > div.nonTopValues-facets-container > div:nth-child(1) > label > span.checkmark";
    private final String KEY_HEEL_FIRST_FILTER_ITEM =
            "#multiCollapseFacet-10 > div > div.nonTopValues-facets-container > div:nth-child(1) > label > span.checkmark";
    private final String KEY_LEG_SHAPE_FIRST_FILTER_ITEM =
            "#multiCollapseFacet-11 > div > div.nonTopValues-facets-container > div:nth-child(1) > label > span.checkmark";
    private final String KEY_LENGTH_FIRST_FILTER_ITEM =
            "#multiCollapseFacet-12 > div > div.nonTopValues-facets-container > div:nth-child(1) > label > span.checkmark";
    private final String KEY_MAJORITY_FIBRE_FIRST_FILTER_ITEM =
            "#multiCollapseFacet-13 > div > div.nonTopValues-facets-container > div:nth-child(1) > label > span.checkmark";
    private final String KEY_RISE_FIRST_FILTER_ITEM =
            "#multiCollapseFacet-14 > div > div.nonTopValues-facets-container > div:nth-child(1) > label > span.checkmark";
    private final String KEY_SLEEVE_LENGTH_FIRST_FILTER_ITEM =
            "#multiCollapseFacet-0 > div > div.nonTopValues-facets-container > div:nth-child(16) > label > span.checkmark";
    private final String KEY_DRESS_FIRST_FILTER_ITEM_DE =
            "#multiCollapseFacet-0 > div > div.nonTopValues-facets-container > div:nth-child(1) > label";
    private final String KEY_LEG_LENGTH_FIRST_FILTER_ITEM_DE =
            "#multiCollapseFacet-1 > div > div.nonTopValues-facets-container > div > label";
    private final String KEY_SHOE_SIZE_FIRST_FILTER_ITEM_DE =
            "#multiCollapseFacet-2 > div > div.nonTopValues-facets-container > div:nth-child(1) > label";
    private final String KEY_DEPARTMENT_FIRST_FILTER_ITEM_DE =
            "#multiCollapseFacet-3 > div > div.nonTopValues-facets-container > div:nth-child(1) > label";
    private final String KEY_SEASON_FIRST_FILTER_ITEM_DE =
            "#multiCollapseFacet-4 > div > div.nonTopValues-facets-container > div:nth-child(1) > label > span.checkbox-text";
    private final String KEY_SUB_DEPARTMENT_FIRST_FILTER_ITEM_DE =
            "#multiCollapseFacet-5 > div > div.nonTopValues-facets-container > div:nth-child(1) > label > span.checkbox-text";
    private final String KEY_COLOR_FIRST_FILTER_ITEM_DE =
            "#multiCollapseFacet-6 > div > div.nonTopValues-facets-container > div:nth-child(1) > label > span.checkbox-text";
    private final String KEY_PRICE_FIRST_FILTER_ITEM_DE =
            "#multiCollapseFacet-7 > div > div.nonTopValues-facets-container > div:nth-child(1) > label > span.checkbox-text";
    private final String KEY_BRAND_FIRST_FILTER_ITEM_DE =
            "#multiCollapseFacet-7 > div > div.nonTopValues-facets-container > div:nth-child(1) > label > span.checkbox-text";
    private final String KEY_BOOT_LENGTH_FIRST_FILTER_ITEM_DE =
            "#multiCollapseFacet-8 > div > div.nonTopValues-facets-container > div > label > span.checkbox-text";
    private final String KEY_HEEL_FIRST_FILTER_ITEM_DE =
            "#multiCollapseFacet-10 > div > div.nonTopValues-facets-container > div:nth-child(1) > label > span.checkbox-text";
    private final String KEY_LEG_SHAPE_FIRST_FILTER_ITEM_DE =
            "#multiCollapseFacet-11 > div > div.nonTopValues-facets-container > div:nth-child(1) > label > span.checkbox-text";
    private final String KEY_LENGTH_FIRST_FILTER_ITEM_DE =
            "#multiCollapseFacet-12 > div > div.nonTopValues-facets-container > div:nth-child(1) > label > span.checkbox-text";
    private final String KEY_MAJORITY_FIBRE_FIRST_FILTER_ITEM_DE =
            "#multiCollapseFacet-13 > div > div.nonTopValues-facets-container > div:nth-child(1) > label > span.checkbox-text";
    private final String KEY_RISE_FIRST_FILTER_ITEM_DE =
            "#multiCollapseFacet-14 > div > div.nonTopValues-facets-container > div:nth-child(1) > label > span.checkbox-text";
    private final String KEY_SLEEVE_LENGTH_FIRST_FILTER_ITEM_DE =
            "#multiCollapseFacet-15 > div > div.nonTopValues-facets-container > div:nth-child(1) > label > span.checkbox-text";
    private final String KEY_CLEAR_FILTER = "#productRefinementComponent-link-clear-all-facets-desktop";
    private final String KEY_SORT_BY_DROPDOWN = "#dropdownMenuLinkSorting";
    private final String KEY_SORT_BY_PRICE_ASC = "a[data-sortingcode=\"price-asc\"]";
    private final String KEY_SORT_BY_PRICE_DESC = "a[data-sortingcode=\"price-desc\"]";
    private final String KEY_SPECIFIC_PRODUCT = "#productGrid-link-quickview-modal-0";
    private final String KEY_QUICKVIEW_LINK = ".open-quickView-link";
    private final String KEY_PLUS_COLOR = ".more-options-available";
    private final String KEY_PRODUCT_FROM_SEARCH_PAGE = "#listingPage-main-content-container > div > div.col-lg-10 > div:nth-child(5) > div > div > div > div.productcard-info.text-center";
    //endregion

    List<WebElement> productList = null;
    List<WebElement> colorList = null;
    private PropertyManager config = PropertyManager.getInstance();

    public ProductListPage() {
        PageFactory.initElements(DriverFactory.getDriver(), this);
        mDriver = DriverFactory.getDriver();
    }

    public void selectRandomProduct(String quickViewPdp) {
        if (quickViewPdp.equals("pdp")) {
            myWaitsForVisibilityOfElementLocated(KEY_PRODUCT_PRICE);
            productList = mDriver.findElements(By.cssSelector(KEY_PRODUCT_PRICE));
        } else if (quickViewPdp.equals("quickview") || quickViewPdp.equals("wishlistQuickview")) {
            myWaitsForVisibilityOfElementLocated(KEY_QUICKVIEW_LINK);
            productList = mDriver.findElements(By.cssSelector(KEY_QUICKVIEW_LINK));
        }

        if (productList == null || productList.isEmpty()) {
            Assert.fail("Product List couldn't fetched!");
        }

        Random r = new Random();
        int randomIndex;
        WebElement randomProduct;
        boolean isSelected = false;
        int limit = 60;
        while (!isSelected) {
            randomIndex = r.nextInt(productList.size() - 1);
            randomProduct = productList.get(randomIndex);
            List<String> ignoredProducts = Arrays.asList("klproduct", "GiftCard", "EmailVoucher");
            LOG.info("Product Info : " + randomProduct.getAttribute("outerHTML").replaceAll(" ", ""));
            boolean ignored = false;
            for (String ignoredProduct : ignoredProducts) {
                ignored = ignored || (randomProduct.getAttribute("outerHTML").replaceAll(" ", "").toUpperCase()
                                                   .contains(ignoredProduct.toUpperCase()));
            }
            if (!ignored || limit == 1) {
                isSelected = true;
                randomProduct.click();
                break;
            }
            limit--;
        }

        LOG.info("Product is selected randomly!");
    }

    public void selectFirstProduct(String quickViewPdp) throws InterruptedException {
        if (quickViewPdp.equals("quickview")) {
            Thread.sleep(2000);
            myWaitsForVisibilityOfElementLocated(KEY_SPECIFIC_PRODUCT);
            clickExecuteScriptString(KEY_SPECIFIC_PRODUCT);
        }
    }

    public void addToWishlistRandomly() throws InterruptedException {
        myWaitsForVisibilityOfElementLocated(KEY_ADD_WISHLIST_ICON);
        List<WebElement> allProducts = mDriver.findElements(By.cssSelector(KEY_ADD_WISHLIST_ICON));
        Random rand = new Random();
        int randomProduct = rand.nextInt(allProducts.size());
        if(randomProduct > 0) {
            allProducts.get(randomProduct).click();
            Thread.sleep(2000);
            LOG.info("Product is sent to wishlist randomly!");
        } else {
            LOG.info("Product is not selected!");
        }
    }

    public void addFirstProductToWishlist() {
        myWaitsForElementToBeClickable(KEY_ADD_WISHLIST_ICON_0);
        clickExecuteScriptString(KEY_ADD_WISHLIST_ICON_0);
        LOG.info("The first product is sent to wishlist!");
    }

    public void checkHeartIconNumber() {
        myWaitsForVisibilityOfElementLocated(KEY_WISHLIST_TEXT);
        WebElement wishlistElementText = mDriver.findElement(By.cssSelector(KEY_WISHLIST_TEXT));
        LOG.info("The wishlist icon number is : " + wishlistElementText.getText());
        if (wishlistElementText.getText().equals("1")) {
            LOG.info("The heart icon number is shown as 1!");
        } else {
            Assert.fail("The icon number is empty!");
        }
    }

    public void clickPlusColor() {
        myWaitsForVisibilityOfElementLocated(KEY_PLUS_COLOR);
        colorList = mDriver.findElements(By.cssSelector(KEY_PLUS_COLOR));
        Random r = new Random();
        int randomIndex = 0;
        while (randomIndex == 0) {
            randomIndex = r.nextInt(colorList.size() - 1);
        }
        WebElement randomPlusColor = colorList.get(randomIndex);
        randomPlusColor.click();
        LOG.info("+Color is selected randomly!");
    }

    public void selectSpecificProduct(String locale) {
        int threshold;
        if (config.getString(Configs.ENV_SERVER).equals("preprod")) {
            threshold = CommonPage.getBagThresholdForPreprod(locale);
        } else {
            threshold = CommonPage.getBagThresholdForQA(locale);
        }
        myWaitsForVisibilityOfElementLocated(KEY_PRODUCT_PRICE);
        ArrayList elements = (ArrayList) mDriver.findElements(By.cssSelector(KEY_PRODUCT_PRICE));
        for (int i = 1; i < elements.size(); i++) {
            WebElement element = (WebElement) elements.get(i);
            if (element.findElement(By.xpath("./../..")).getAttribute("outerHTML").contains("KL product")) {
                continue;
            }
            String price;
            // API Manager can be used here -->
            // String currency = APIManager.getInstance().getLocaleCurrency(locale);
            if (locale.equals("ca")) {
                if (config.getString(Configs.ENV_SERVER).equals("preprod")) {
                    price = element.getText().replace("CA$", "");
                } else {
                    // price = element.getText().replace(currency, "");
                    price = element.getText().replaceAll(CommonPage.getCurrency(locale), "");
                }
            } else {
                // price = element.getText().replace(currency, "");
                price = element.getText().replaceAll(CommonPage.getCurrency(locale), "");
            }
            String updatedPrice = price.replace(",", ".");
            try {
                Double priceD = Double.parseDouble(updatedPrice);
                if (priceD < threshold) {
                    element.click();
                    return;
                }
            } catch (Exception e) {
                LOG.info("Product element is not clicked!");
            }
        }
        Assert.fail("Failed to select product");
    }

    public void clickProductImage() {
        myWaitsForVisibilityOfElementLocated(KEY_PRODUCT_IMAGE);
        mDriver.findElement(By.cssSelector(KEY_PRODUCT_IMAGE)).click();
        LOG.info("Product image is clicked!");
    }

    public void selectFilterMenu(String filterMenu) {
        String filterMenuItem;
        switch (filterMenu) {
            case "dressSize":
            default:
                filterMenuItem = KEY_DRESS_SIZE_FILTER;
                break;
            case "legLength":
                filterMenuItem = KEY_LEG_LENGTH_FILTER;
                break;
            case "shoeSize":
                filterMenuItem = KEY_SHOE_SIZE_FILTER;
                break;
            case "department":
                filterMenuItem = KEY_DEPARTMENT_FILTER;
                break;
            case "season":
                filterMenuItem = KEY_SEASON_FILTER;
                break;
            case "subDepartment":
                filterMenuItem = KEY_SUB_DEPARTMENT_FILTER;
                break;
            case "color":
                filterMenuItem = KEY_COLOR_FILTER;
                break;
            case "price":
                filterMenuItem = KEY_PRICE_FILTER;
                break;
            case "brand":
                filterMenuItem = KEY_BRAND_FILTER;
                break;
            case "bootLength":
                filterMenuItem = KEY_BOOT_LENGTH_FILTER;
                break;
            case "heel":
                filterMenuItem = KEY_HEEL_FILTER;
                break;
            case "legShape":
                filterMenuItem = KEY_LEG_SHAPE_FILTER;
                break;
            case "length":
                filterMenuItem = KEY_LENGTH_FILTER;
                break;
            case "majorityFibre":
                filterMenuItem = KEY_MAJORITY_FIBRE_FILTER;
                break;
            case "rise":
                filterMenuItem = KEY_RISE_FILTER;
                break;
            case "sleeveLength":
                filterMenuItem = KEY_SLEEVE_LENGTH_FILTER;
                break;
        }
        myWaitsForElementToBeClickable(filterMenuItem);
        clickExecuteScriptString(filterMenuItem);
        LOG.info("Filter Menu is selected successfully!");
    }

    public void selectFilter(String filter, String locale) throws InterruptedException {
        Thread.sleep(1000);
        String filterItem;
        if (locale.equals("de") || locale.equals("de-en")) {
            switch (filter) {
                case "8":
                default:
                    filterItem = KEY_DRESS_FIRST_FILTER_ITEM_DE;
                    break;
                case "34":
                    filterItem = KEY_LEG_LENGTH_FIRST_FILTER_ITEM_DE;
                    break;
                case "7":
                    filterItem = KEY_SHOE_SIZE_FIRST_FILTER_ITEM_DE;
                    break;
                case "accessories":
                    filterItem = KEY_DEPARTMENT_FIRST_FILTER_ITEM_DE;
                    break;
                case "current":
                    filterItem = KEY_SEASON_FIRST_FILTER_ITEM_DE;
                    break;
                case "boot":
                    filterItem = KEY_SUB_DEPARTMENT_FIRST_FILTER_ITEM_DE;
                    break;
                case "beige":
                    filterItem = KEY_COLOR_FIRST_FILTER_ITEM_DE;
                    break;
                case "£0-25":
                    filterItem = KEY_PRICE_FIRST_FILTER_ITEM_DE;
                    break;
                case "blowfish":
                    filterItem = KEY_BRAND_FIRST_FILTER_ITEM_DE;
                    break;
                case "ankle":
                    filterItem = KEY_BOOT_LENGTH_FIRST_FILTER_ITEM_DE;
                    break;
                case "flats":
                    filterItem = KEY_HEEL_FIRST_FILTER_ITEM_DE;
                    break;
                case "bootCut":
                    filterItem = KEY_LEG_SHAPE_FIRST_FILTER_ITEM_DE;
                    break;
                case "maxi":
                    filterItem = KEY_LENGTH_FIRST_FILTER_ITEM_DE;
                    break;
                case "cotton":
                    filterItem = KEY_MAJORITY_FIBRE_FIRST_FILTER_ITEM_DE;
                    break;
                case "high":
                    filterItem = KEY_RISE_FIRST_FILTER_ITEM_DE;
                    break;
                case "longSleeve":
                    filterItem = KEY_SLEEVE_LENGTH_FIRST_FILTER_ITEM_DE;
                    break;
            }
        } else {
            switch (filter) {
                case "8":
                default:
                    filterItem = KEY_DRESS_FIRST_FILTER_ITEM;
                    break;
                case "34":
                    filterItem = KEY_LEG_LENGTH_FIRST_FILTER_ITEM;
                    break;
                case "7":
                    filterItem = KEY_SHOE_SIZE_FIRST_FILTER_ITEM;
                    break;
                case "accessories":
                    filterItem = KEY_DEPARTMENT_FIRST_FILTER_ITEM;
                    break;
                case "current":
                    filterItem = KEY_SEASON_FIRST_FILTER_ITEM;
                    break;
                case "boot":
                    filterItem = KEY_SUB_DEPARTMENT_FIRST_FILTER_ITEM;
                    break;
                case "beige":
                    filterItem = KEY_COLOR_FIRST_FILTER_ITEM;
                    break;
                case "£0-25":
                    filterItem = KEY_PRICE_FIRST_FILTER_ITEM;
                    break;
                case "blowfish":
                    filterItem = KEY_BRAND_FIRST_FILTER_ITEM;
                    break;
                case "ankle":
                    filterItem = KEY_BOOT_LENGTH_FIRST_FILTER_ITEM;
                    break;
                case "flats":
                    filterItem = KEY_HEEL_FIRST_FILTER_ITEM;
                    break;
                case "bootCut":
                    filterItem = KEY_LEG_SHAPE_FIRST_FILTER_ITEM;
                    break;
                case "maxi":
                    filterItem = KEY_LENGTH_FIRST_FILTER_ITEM;
                    break;
                case "cotton":
                    filterItem = KEY_MAJORITY_FIBRE_FIRST_FILTER_ITEM;
                    break;
                case "high":
                    filterItem = KEY_RISE_FIRST_FILTER_ITEM;
                    break;
                case "longSleeve":
                    filterItem = KEY_SLEEVE_LENGTH_FIRST_FILTER_ITEM;
                    break;
            }
        }
        //        mDriver.findElement(By.cssSelector(filterItem)).sendKeys(Keys.ENTER);
        waitAndClickElement(mDriver.findElement(By.cssSelector(filterItem)));
        LOG.info("Filter is selected successfully!");
    }

    public void clearFiltersButtonVisible(Boolean buttonVisible) {
        if (buttonVisible) {
            myWaitsForElementToBeClickable(KEY_CLEAR_FILTER);
            LOG.info("The clear filter button is appear!");
        } else {
            LOG.info("The clear filter button is not appear!");
        }
    }

    public void clearFiltersButtonClick() {
        myWaitsForElementToBeClickable(KEY_CLEAR_FILTER);
        clickExecuteScriptString(KEY_CLEAR_FILTER);
        LOG.info("The clear filter button is appear!");
    }

    public void selectSortBy(String sortBy) throws InterruptedException {
        String sortByItem;
        switch (sortBy) {
            case "priceAsc":
            default:
                sortByItem = KEY_SORT_BY_PRICE_ASC;
                break;
            case "priceDesc":
                sortByItem = KEY_SORT_BY_PRICE_DESC;
                break;
        }
        myWaitsForElementToBeClickable(KEY_SORT_BY_DROPDOWN);
        clickExecuteScriptString(KEY_SORT_BY_DROPDOWN);

        myWaitsForElementToBeClickable(sortByItem);
        clickExecuteScriptString(sortByItem);
        Thread.sleep(500);
        LOG.info("Sort by is clicked with :" + sortBy);
    }

    public void productListCheckAfterSorting(String sortBy, String locale) {
        int count = 0;
        ArrayList productList = (ArrayList) mDriver.findElements(By.cssSelector(KEY_PRODUCT_PRICE));
        Iterator<WebElement> itr = productList.iterator();
        while (itr.hasNext() && count <= 4) {
            String firstProduct = itr.next().getText().replaceAll(CommonPage.getCurrency(locale), "");
            String mFirstProduct = firstProduct.replaceAll(",", ".");
            double firstProductDb = Double.parseDouble(mFirstProduct);
            if (!itr.hasNext()) {
                continue;
            }
            String nextProduct = itr.next().getText().replaceAll(CommonPage.getCurrency(locale), "");
            String mNextProduct = nextProduct.replaceAll(",", ".");
            double nextProductDb = Double.parseDouble(mNextProduct);
            if (sortBy.equals("priceAsc")) {
                if (nextProductDb >= firstProductDb) {
                    LOG.info((count + 1) + ". Product price without currency is: " + firstProductDb);
                    LOG.info("First product smaller than next product!");
                } else {
                    Assert.fail("Product ascending is not working correctly!");
                }
            } else if (sortBy.equals("priceDesc")) {
                if (nextProductDb <= firstProductDb) {
                    LOG.info((count + 1) + ". Product price without currency is: " + firstProductDb);
                    LOG.info("First product bigger than next product!");
                } else {
                    Assert.fail("Product descending is not working correctly!");
                }
            }
            count++;
        }
    }

    public void selectProductFromSearchPage() {
        myWaitsForVisibilityOfElementLocated(KEY_PRODUCT_FROM_SEARCH_PAGE);
        mDriver.findElement(By.cssSelector(KEY_PRODUCT_FROM_SEARCH_PAGE)).click();
    }
}