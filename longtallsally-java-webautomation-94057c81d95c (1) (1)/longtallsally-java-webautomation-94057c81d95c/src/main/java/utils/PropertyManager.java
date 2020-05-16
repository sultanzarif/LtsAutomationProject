package utils;

import org.openqa.selenium.PageLoadStrategy;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.firefox.FirefoxOptions;

import java.io.IOException;
import java.io.InputStream;
import java.util.*;

@SuppressWarnings("Duplicates")
public class PropertyManager {

    private static PropertyManager propertyManager;
    Properties props;

    private PropertyManager() {
        readConfigFile();
    }

    public static synchronized PropertyManager getInstance() {
        if (propertyManager == null) {
            propertyManager = new PropertyManager();
        }
        return propertyManager;
    }

    public String getString(String key) {
        return props.getProperty(key);
    }

    public boolean getBoolean(String key) {
        return Boolean.valueOf(props.getProperty(key));
    }

    public int getInt(String key) {
        return Integer.parseInt(props.getProperty(key));
    }

    public List<String> getList(String key) {
        return Arrays.asList(props.getProperty(key).split(","));
    }

    private void readConfigFile() {
        InputStream input;
        try {
            input = ReadConfigFile.class.getClassLoader().getResourceAsStream(Configs.CONFIG_PROPERTIES_DIRECTORY);
            props = new Properties();
            if (input != null) {
                props.load(input);
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public ChromeOptions getChromeOptions() {
        ChromeOptions options = new ChromeOptions();
        options.setPageLoadStrategy(PageLoadStrategy.NONE);
        if (getBoolean(Configs.ENV_HEADLESS)) {
            options.addArguments("--headless", "--disable-gpu");
            options.setPageLoadStrategy(PageLoadStrategy.NONE);
        }
        options.addArguments(getWindowSize());
        Map<String, Object> prefs = new HashMap<>();
        prefs.put("profile.default_content_setting_values.notifications", 2);
        options.setExperimentalOption("prefs", prefs);

        return options;
    }

    public FirefoxOptions getFirefoxOptions() {
        FirefoxOptions options = new FirefoxOptions();
        options.setHeadless(getBoolean(Configs.ENV_HEADLESS));
        options.addArguments(getWindowSize());

        return options;
    }

    private String getWindowSize() {
        switch (getString(Configs.ENV_DEVICE)) {
            case Configs.DEVICE_DESKTOP:
            default:
                return "--window-size=1920,1200";
            case Configs.DEVICE_MOBILE_PORTRAIT:
                return "--window-size=375,667";
            case Configs.DEVICE_MOBILE_LANDSCAPE:
                return "--window-size=667,375";
            case Configs.DEVICE_TABLET_PORTRAIT:
                return "--window-size=768,1024";
            case Configs.DEVICE_TABLET_LANDSCAPE:
                return "--window-size=1024,768";
        }
    }

    public String getReportConfigPath() {
        String reportConfigPath = getString("reportConfigPath");
        if (reportConfigPath != null) {
            return reportConfigPath;
        } else {
            throw new RuntimeException(
                    "Report Config Path not specified in the Configuration.properties file for the Key:reportConfigPath");
        }
    }

    public String getServer() {
        switch (getString(Configs.ENV_SERVER)) {
            case "qa":
            default:
                return "https://qa.longtallsally.com";
            case "preprod":
                return "https://preprod.longtallsally.com";
            case "dev":
                return "https://dev.longtallsally.com:9002/";
        }
    }

    public Boolean getMailSend() {
        return getBoolean(Configs.ENV_MAIL);
    }

    public Boolean isMobile() {
        return getString(Configs.ENV_DEVICE).equals(Configs.DEVICE_MOBILE_PORTRAIT);
    }
}