package utils.ExtentReports;

import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.ExtentTest;
import com.aventstack.extentreports.reporter.ExtentHtmlReporter;
import com.aventstack.extentreports.reporter.configuration.Theme;
import listener.TestListener;
import org.apache.log4j.Logger;
import org.openqa.selenium.WebDriver;
import utils.DriverFactory;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class ExtentReportUtil {

    private static Logger LOG = Logger.getLogger(ExtentReportUtil.class);

    public static String REPORT_FILE = "test-automation-report.html";
    public static String REPORT_ZIP_FILE = "output/test-automation.zip";
    public static String REPORT_PATH = "output/" + REPORT_FILE;

    public WebDriver driver;
    public ExtentReports extent;
    public ExtentTest testNode;
    public ExtentTest test;

    public void extentReport() {
        //First is to create Extent Reports
        extent = new ExtentReports();

        ExtentHtmlReporter htmlReporter = new ExtentHtmlReporter(REPORT_PATH);
        htmlReporter.config().setTheme(Theme.STANDARD);
        htmlReporter.config().setDocumentTitle("LTS Test Automation Report");
        htmlReporter.config().setEncoding("utf-8");
        htmlReporter.config().setReportName("Daily Report created at " + new SimpleDateFormat("yyyy-MM-dd HHmm")
                .format(Calendar.getInstance().getTime()));
        driver = DriverFactory.getDriver();
        extent.attachReporter(htmlReporter);
    }

    public void zipFile() throws IOException {
        FileOutputStream fout = new FileOutputStream(REPORT_ZIP_FILE);
        ZipOutputStream zout = new ZipOutputStream(fout);

        writeToZipFile(REPORT_PATH, zout);
        zout.close();
        fout.close();
    }

    public static void writeToZipFile(String path, ZipOutputStream zipStream) throws IOException {
        LOG.info("Writing file : '" + path + "' to zip file");

        File aFile = new File(path);
        FileInputStream fis = new FileInputStream(aFile);
        ZipEntry zipEntry = new ZipEntry(path);
        zipStream.putNextEntry(zipEntry);

        byte[] bytes = new byte[1024];
        int length;
        while ((length = fis.read(bytes)) >= 0) {
            zipStream.write(bytes, 0, length);
        }
        zipStream.closeEntry();
        fis.close();
    }

    public void flushReport() throws IOException {
        extent.flush();
        zipFile();
    }
}