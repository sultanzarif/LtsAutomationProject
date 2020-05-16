package integration.testrail;

import com.codepine.api.testrail.TestRail;
import com.codepine.api.testrail.model.*;
import listener.TestListener;
import org.apache.log4j.Logger;
import utils.Configs;
import utils.PropertyManager;

import java.text.SimpleDateFormat;
import java.util.*;
import java.util.stream.Collectors;

@SuppressWarnings("JavaDoc")
public class TestRailClient {

    private static Logger LOG = Logger.getLogger(TestRailClient.class);

    public static String host = "https://ltswebdev.testrail.io";
    private static String username = "lmeliye@longtallsally.co.uk";
    private static String apikey = "DI39jx1KFJ3l3t73AjIu-AxjrcxRfP75EevejI8T5";
    private static int projectID = 1;
    private static int suiteID = 15;
    private static int planID = 604;
    private final String testRunDescription = "Run Description";
    private static TestRailClient mInstance = null;
    private TestRail testRail;
    private Project project;
    private Suite testSuite;
    private Plan testPlan;
    private Plan.Entry planEntry;
    private Run run;
    private String runName;
    private int testId = 0;
    private final List<ResultField> customResultFields;
    private Map<String, String> failedTests = new HashMap<>();
    private List<String> skippedTests = new ArrayList<>();
    private List<String> passedTests = new ArrayList<>();
    private List<Case> testRailTestCases;
    private final int serviceSectionId;
    private final List<CaseField> caseFields;

    private PropertyManager config = PropertyManager.getInstance();

    public TestRailClient() {
        this.testRail = TestRail.builder(host, username, apikey).build();
        customResultFields = testRail.resultFields().list().execute();
        caseFields = testRail.caseFields().list().execute();

        String timeStamp = new SimpleDateFormat("yyyy-MM-dd-HHmm").format(Calendar.getInstance().getTime());

        runName = "TestRun-" + timeStamp;
        // Set the project instance
        try {
            this.project = testRail.projects().get(projectID).execute();
        } catch (Exception exc) {
            System.out.println("Exception " + exc.getLocalizedMessage());
        }

        // Set the suite instance
        this.testSuite = testRail.suites().get(suiteID).execute();
        final String planName = "Java Web Automation";
        this.serviceSectionId = 1;
        setTestPlan(planName);
    }

    public static TestRailClient getInstance() {
        if (mInstance == null) {
            mInstance = new TestRailClient();
        }
        return mInstance;
    }

    /**
     * Logs a test result to testrail allowing to pass error message on fail
     *
     * @param testCaseId
     * @param result
     * @param errorMessage
     */
    public void addResultForPlan(String testCaseId, int result, String errorMessage) {

        String resultsInfo = "";

        if (!errorMessage.isEmpty()) {
            resultsInfo = resultsInfo + "\n\n\n\n" + "LAST URL\n" + errorMessage;
        }
        Result testResult = new Result().setStatusId(result).setComment(resultsInfo);
        int caseId = Integer.parseInt(testCaseId.replace("C", ""));
        setPlanEntry(caseId);
        if (run == null) {
            this.run = this.planEntry.getRuns().get(0);
        }

        if (getTestIdForTestCase(run.getId(), caseId) != 0) {
            testRail.results().add(this.testId, testResult, customResultFields).execute();
        }
    }

    public void sendResults() {
        String resultsInfo = "";

        Set<Result> allTests = new HashSet<>();
        Set<Result> failedResults = getFailedResults();
        Set<Result> skippedResults = getSkippedResults();
        Set<Result> passedResults = getPassedResults();

        allTests.addAll(failedResults);
        allTests.addAll(skippedResults);
        allTests.addAll(passedResults);
        this.planEntry = new Plan.Entry();
        this.planEntry.setName(this.runName);
        this.planEntry.setSuiteId(this.testSuite.getId());
        this.planEntry.setIncludeAll(false);
        this.planEntry.setCaseIds(allTests.stream().map(Result::getCaseId).collect(Collectors.toList()));
        this.planEntry = testRail.plans().addEntry(this.testPlan.getId(), this.planEntry).execute();
        this.run = planEntry.getRuns().get(0);

        if (!failedTests.isEmpty()) {
            LOG.info(failedResults.size() + " failed test results sent to Test Rail!");
            testRail.results().addForCases(run.getId(), new ArrayList<>(failedResults), customResultFields)
                    .execute();
        }
        if (!skippedTests.isEmpty()) {
            LOG.info(skippedResults.size() + " skipped test results sent to Test Rail!");
            testRail.results().addForCases(run.getId(), new ArrayList<>(skippedResults), customResultFields)
                    .execute();
        }
        if (!passedTests.isEmpty()) {
            LOG.info(passedResults.size() + " passed test results sent to Test Rail!");
            testRail.results().addForCases(run.getId(), new ArrayList<>(passedResults), customResultFields)
                    .execute();
        }
        LOG.info(allTests.size() + " all test results sent to Test Rail!");
    }

    public void addFail(final String methodName, final String errorMessage) {
        failedTests.put(methodName, errorMessage);
    }

    public void addSkip(final String methodName) {
        skippedTests.add(methodName);
    }

    public void addPass(final String methodName) {
        if (!failedTests.keySet().contains(methodName)) {
            passedTests.add(methodName);
        }
    }

    public int getFailCount() {
        return failedTests.size();
    }

    public int getSkipCount() {
        return skippedTests.size();
    }

    public int getPassCount() {
            return passedTests.size();
    }

    /**
     * Matches test with TestRail test case using <p>testCaseTitle</p>. If can't find one, will create new.
     *
     * @param testCaseTitle used to find matching test case
     * @return TestCaseID of found/created testCase
     */
    private Integer getCaseIdForTest(String testCaseTitle) {
        return Integer.parseInt(testCaseTitle);
    }


    private List<Case> getAllTestCasesFromTestRail() {
        if (testRailTestCases == null) {
            testRailTestCases = testRail.cases().list(projectID, suiteID, caseFields).execute();
        }
        for(Case caseNode : testRailTestCases) {
            System.out.println("CaseID: " + caseNode.getId() + " ---- " +caseNode.getTitle());
        }
        return testRailTestCases;
    }

    /**
     * This method maps each failed test to Test Rail Result. Results contain cause of failure, so it is available in TestRun report.
     *
     * @return Set of Failed Test Results
     */
    private Set<Result> getFailedResults() {
        return failedTests.entrySet().stream().map(s -> new Result().setCaseId(getCaseIdForTest(s.getKey())).setComment(s.getValue()).setStatusId(Status.FAILED.getValue())).collect(Collectors.toSet());
    }

    /**
     * This method maps each skipped test to Test Rail Result.
     *
     * @return Set of Skipped Test Results
     */
    private Set<Result> getSkippedResults() {
        return skippedTests.stream().map(s -> new Result().setCaseId(getCaseIdForTest(s)).setStatusId(Status.SKIPPED.getValue())).collect(Collectors.toSet());
    }

    /**
     * This method maps each passed test to Test Rail Result.
     *
     * @return Set of Passed Test Results
     */
    private Set<Result> getPassedResults() {
        return passedTests.stream().map(s -> new Result().setCaseId(getCaseIdForTest(s)).setStatusId(Status.PASS.getValue())).collect(Collectors.toSet());
    }

    // Plans

    // Get the test id for the test case
    // A test is a copy of a test case that has been
    // associated with a run, by run id.
    private int getTestIdForTestCase(int runId, int caseId) {
        int testId = 0;
        List<Test> tests = testRail.tests().list(runId).execute();

        for (Test test : tests) {
            if (test.getCaseId() == caseId) {
                testId = test.getId();
                break;
            }
        }
        this.testId = testId;

        return testId;
    }

    // A plan entry is a container for a set of runs
    // Until interaction with configs is fixed, we
    // work as if 1 entry = 1 run
    private void setPlanEntry(Integer testCaseId) {
        if (this.testPlan == null) {
            return;
        }
        // At this point, there may have been duplicate plans created

        List<Plan.Entry> entries = testRail.plans().get(this.testPlan.getId()).execute().getEntries();
        for (Plan.Entry entry : entries) {
            if (entry.getName().equals(this.runName)) {
                this.planEntry = entry;
                this.run = this.planEntry.getRuns().get(0);

                List<Integer> caseIds = getTestCaseIdsForRun(this.run.getId());
                if (!caseIds.contains(testCaseId)) {
                    caseIds.add(testCaseId);

                    this.planEntry.setCaseIds(caseIds);
                    this.planEntry = testRail.plans().updateEntry(this.testPlan.getId(), this.planEntry).execute();
                }
                return;
            }
        }
        createNewPlanEntry(testCaseId);
    }

    //     Create a new plan entry in the current plan. This equates
    //     to a test run
    private void createNewPlanEntry(Integer testCaseId) {
        List<Integer> caseIds = new ArrayList<>();
        caseIds.add(testCaseId);
        this.planEntry = new Plan.Entry();
        this.planEntry.setName(this.runName);
        this.planEntry.setSuiteId(this.testSuite.getId());
        this.planEntry.setIncludeAll(false);
        this.planEntry.setCaseIds(caseIds);
        this.planEntry = testRail.plans().addEntry(this.testPlan.getId(), this.planEntry).execute();
    }

    // A test is a copy of a test case that has been
    // associated with a run, by run id. Get the tests
    // for this run, and then get the corresponding test cases
    private List<Integer> getTestCaseIdsForRun(int runId) {
        List<Integer> caseIds = new ArrayList<>();
        List<Test> tests = testRail.tests().list(runId).execute();

        for (Test test : tests) {
            caseIds.add(test.getCaseId());
        }
        return caseIds;
    }

    // A TestPlan will hold a collection of entries and runs for a given
    // test execution cycle. This method sets the testplan, either
    // by retrieving one matching the name, or by creating a new one
    private void setTestPlan(String planName) {

        // strip UTC from build timestamp that gets passed into the plan name
        planName = planName.replace(" UTC", "");

        // replace underscores - only used for jenkins and reads better without
        planName = planName.replace("_", " - ");

        // this may be a test rerun so check if the plan already exists
        if (findAndStorePlan(planName)) {
            return;
        }
    }

    // check for the existence of a testplan. If it exists, set the local
    // plan instance to be this very one
    private boolean findAndStorePlan(String planName) {

        //  ToDo      checkForLockFile();

        List<Plan> testPlans = testRail.plans().list(this.project.getId()).execute();

        for (Plan plan : testPlans) {
            if (plan.getName().equals(planName)) {
                this.testPlan = plan;
                return true;
            }
        }
        return false;
    }

    /**
     * Statuses available in Test Rail, we use only three, rest is here just for reference.
     */
    private enum Status {
        PASS(1),
        BLOCKED(2),
        RETEST(4),
        FAILED(5),
        ERROR(6),
        SKIPPED(7),
        IGNORED(8),
        QA_REVIEW(9),
        IN_PROGRESS(10);

        private final int value;

        Status(final int value) {
            this.value = value;
        }

        public int getValue() {
            return value;
        }
    }
}