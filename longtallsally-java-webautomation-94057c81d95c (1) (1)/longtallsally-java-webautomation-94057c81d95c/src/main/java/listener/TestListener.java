package listener;

import com.aventstack.extentreports.gherkin.model.Feature;
import gherkin.pickles.Pickle;
import gherkin.pickles.PickleStep;
import gherkin.pickles.PickleTag;
import integration.testrail.TestRailClient;
import io.cucumber.testng.PickleEventWrapper;
import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.testng.ITestContext;
import org.testng.ITestListener;
import org.testng.ITestResult;
import utils.Configs;
import utils.DriverFactory;
import utils.ExtentReports.ExtentReportUtil;
import utils.MailSender;
import utils.PropertyManager;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class TestListener implements ITestListener {

    private static Logger LOG = Logger.getLogger(TestListener.class);
    private ExtentReportUtil extentReportUtil = new ExtentReportUtil();
    private TestRailClient testRail;
    private PropertyManager config = PropertyManager.getInstance();
    private List<ITestResult> testResultList;



    public static String getCaseId(ITestResult result) {
        Pickle scenario = getScenario(result);
        String scenarioName = getScenarioName(scenario);
        return getCaseId(scenario);
    }

    public static String getCaseId(Pickle pickle) {
        if (pickle != null) {
            for (PickleTag tag : pickle.getTags()) {
                if (tag.getName().startsWith("@c")) {
                    return tag.getName().substring(2);
                }
            }
        }
        return "";
    }

    @Override
    public void onTestStart(ITestResult result) {
        Pickle scenario = getScenario(result);
        String scenarioName = getScenarioName(scenario);
        String caseId = getCaseId(scenario);
        LOG.info("-------------------------------------------------------------------------");
        LOG.info("The name of the testcase Started is : " + caseId + " - " + scenarioName);
        extentReportUtil.test = extentReportUtil.extent.createTest(Feature.class, scenarioName);
        extentReportUtil.testNode = extentReportUtil.test.createNode(scenarioName);
    }

    @Override
    public void onTestSuccess(ITestResult result) {
        String caseId = getCaseId(result);
        LOG.info("The name of the testcase Succeed is :" + result.getName() + " and the case id is: " + caseId);
        testRail.addPass(getFullTestName(result));
        testResultList.add(result);
        addStepsToReport(result, true);
    }

    @Override
    public void onTestFailure(ITestResult result) {
        String caseId = getCaseId(result);
        LOG.info("The name of the testcase Failed is :" + result.getName() + " and the case id is: " + caseId);
        testRail.addFail(getFullTestName(result), result.getThrowable().getMessage());
        testResultList.add(result);
        addStepsToReport(result, false);

        Pickle scenario = getScenario(result);
        takeScreenshots(getCaseId(scenario));
    }

    @Override
    public void onTestSkipped(ITestResult result) {
        String caseId = getCaseId(result);
        LOG.info("The name of the testcase Skipped is :" + result.getName() + " and the case id is: " + caseId);
        testRail.addSkip(getFullTestName(result));
    }

    @Override
    public void onTestFailedButWithinSuccessPercentage(ITestResult result) {
        LOG.info("The name of the testcase Failed But Succeed is :" + result.getName());
    }

    @Override
    public void onStart(ITestContext context) {
        LOG.info("The name of the testcase Started is :" + context.getName());
        LOG.info("The test is start on :" + context.getStartDate());
        extentReportUtil.extentReport();
        testResultList = new ArrayList<>();
        if (testRail == null) {
            testRail = TestRailClient.getInstance();
        }
    }

    @Override
    public void onFinish(ITestContext context) {
        LOG.info("The name of the testcase Finished is :" + context.getName());
        LOG.info("The test is finish on :" + context.getEndDate());
        try {
            extentReportUtil.flushReport();
        } catch (IOException e) {
            e.printStackTrace();
        }
        String caseId;
        int passedCount = testRail.getPassCount();
        int failCount = testRail.getFailCount();

        if (config.getBoolean(Configs.ENV_REPORT)) {
            testRail.sendResults();
        }

        if (config.getBoolean(Configs.ENV_MAIL)) {
            String mailBody = "\n Total Tests Cases = " + testResultList.size() + "\n Passed Cases = " + passedCount
                    + "\n Failed Cases = " + failCount + "\n";
            MailSender mailSender = new MailSender();
            mailSender.sendMail(mailBody, "");
        }
    }

    private String takeScreenshots(String caseId) {
        if (!config.getBoolean(Configs.ENV_SCREENSHOT)) {
            return "";
        }

        try {
            final File screenshot = ((TakesScreenshot) DriverFactory.getDriver()).getScreenshotAs(OutputType.FILE);
            String screenshotName = "ScreenShot_" + caseId + "_" + new SimpleDateFormat("yyyy-MM-dd-HHmm").format(
                    Calendar.getInstance().getTime());
            File destinationPath = new File(System.getProperty("user.dir") + "/output/" + screenshotName + ".png");
            FileUtils.copyFile(screenshot, destinationPath);

        } catch (IOException ioe) {
            LOG.error(ioe.getMessage());
        } catch (ClassCastException cce) {
            cce.printStackTrace();
        }
        return "";
    }

    private static Pickle getScenario(ITestResult iTestResult) {
        Object[] params = iTestResult.getParameters();
        if (params != null && params.length > 0) {
            PickleEventWrapper param1 = (PickleEventWrapper) params[0];
            return param1.getPickleEvent().pickle;
        }
        return null;
    }

    private static String getScenarioName(Pickle pickle) {
        if (pickle == null) {
            return "";
        }
        return pickle.getName();
    }

    private void addStepsToReport(ITestResult result, Boolean finalStatus) {
        Pickle pickle = getScenario(result);
        if (pickle == null) {
            return;
        }

        List<PickleStep> stepList = pickle.getSteps();
        for (int i = 0; i < stepList.size(); i++) {
            PickleStep step = stepList.get(i);
            if (finalStatus || (i < stepList.size() - 1)) {
                extentReportUtil.test.pass(step.getText());
            } else if (i == stepList.size() - 1) {
                extentReportUtil.test.fail(result.getThrowable());
            } else {
                extentReportUtil.test.skip(step.getText());
            }
        }
    }

    private String getFullTestName(ITestResult testResult) {
        String caseID = getCaseId(((PickleEventWrapper) testResult.getParameters()[0]).getPickleEvent().pickle);
        return caseID;
    }
}