package utils;

import org.apache.log4j.Logger;
import org.openqa.selenium.support.PageFactory;

public class CommonFunctions {

    private static Logger LOG = Logger.getLogger(CommonFunctions.class);

    public CommonFunctions() {
        PageFactory.initElements(DriverFactory.getDriver(), this);
    }

    public static boolean isEqual(String str1, String str2) {
        if (str1 == null) {
            return str2 == null;
        } else {
            return str1.equalsIgnoreCase(str2);
        }
    }

    public static String getStringOrDefault(String str, String defaultStr) {

        return str == null ? defaultStr : str;
    }

    public static String getUniqueEmail() {
        return "ltstest" + "_" + System.currentTimeMillis() + "@lts.co.uk";
    }

//        public static void scrollPage() throws InterruptedException {
//            Thread.sleep(1000);
//            JavascriptExecutor js = (JavascriptExecutor) mDriver;
//            js.executeScript("window.scrollBy(0,500)");
//            Thread.sleep(1000);
//            LOG.info("Page is scrolled!");
//        }

    public static boolean isMobile() {
        if (PropertyManager.getInstance().getString(Configs.ENV_DEVICE).equals("mobile-portrait")) {
            return true;
        } else {
            return false;
        }
    }
}