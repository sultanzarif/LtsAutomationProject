package utils;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeOptions;

import java.util.ArrayList;
import java.util.List;

public class DriverFactory {

    private static PropertyManager propertyManager;

    private static ThreadLocal<WebDriver> drivers = new ThreadLocal<>();

    // To quit the drivers and browsers at the end only.
    private static List<WebDriver> storedDrivers = new ArrayList<>();

    static {
        Runtime.getRuntime().addShutdownHook(new Thread() {
            public void run() {
                storedDrivers.forEach(WebDriver::quit);
            }
        });
    }

    public DriverFactory() {
        propertyManager = PropertyManager.getInstance();
    }

    public static WebDriver getDriver() {
        return drivers.get();
    }

    public static void addDriver(WebDriver driver) {
        storedDrivers.add(driver);
        drivers.set(driver);
    }

    public static void removeDriver() {
        storedDrivers.remove(drivers.get());
        drivers.get().quit();
        drivers.remove();
    }

    public static String getUrl() {
        return PropertyManager.getInstance().getServer();
    }

    public static ChromeOptions getChromeOptions() {
        return PropertyManager.getInstance().getChromeOptions();
    }
}