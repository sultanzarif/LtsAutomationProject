package utils;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class SharedDriver {

    public SharedDriver() {
        if (DriverFactory.getDriver() == null) {
            WebDriverManager.chromedriver().setup(); //.version("80.0.3987.106")
            WebDriver driver = new ChromeDriver(DriverFactory.getChromeOptions());

            driver.manage().window().maximize();
            DriverFactory.addDriver(driver);
        }
    }
}