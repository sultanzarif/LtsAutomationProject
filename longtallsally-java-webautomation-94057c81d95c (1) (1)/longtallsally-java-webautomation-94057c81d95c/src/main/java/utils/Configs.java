package utils;

public interface Configs {

    String MAIL_SMTP_PORT = "mailSmtpPort";
    String MAIL_SMTP_HOST = "mailSmtpHost";
    String MAIL_USERNAME = "mailUsername";
    String MAIL_PASSWORD = "mailPassword";
    String MAIL_FROM_EMAIL_ID = "mailFromEmailID";
    String MAIL_TO_EMAIL_ID = "mailToEmailID";
    String MAIL_SUBJECT = "mailSubject";
    String MAIL_HEADER = "mailHeader";
    String MAIL_FOOTER = "mailFooter";
    String MAIL_BODY = "mailBody";

    String ENV_BROWSER = "browser";
    String ENV_DEVICE = "device";
    String ENV_HEADLESS = "isHeadless";
    String ENV_SERVER = "server";
    String ENV_REPORT = "sendReport";
    String ENV_SCREENSHOT = "screenshot";
    String ENV_MAIL = "sendMail";

    String CONFIG_PROPERTIES_DIRECTORY = "config.properties";
    String DEVICE_DESKTOP = "desktop";
    String DEVICE_MOBILE_PORTRAIT = "mobile-portrait";
    String DEVICE_MOBILE_LANDSCAPE = "mobile-landscape";
    String DEVICE_TABLET_PORTRAIT = "tablet-portrait";
    String DEVICE_TABLET_LANDSCAPE = "tablet-landscape";
}