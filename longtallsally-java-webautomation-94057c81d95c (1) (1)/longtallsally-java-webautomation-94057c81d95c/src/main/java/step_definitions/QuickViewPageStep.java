package step_definitions;

import io.cucumber.java.en.And;
import page_objects.QuickviewPage;
import utils.SharedDriver;

public class QuickViewPageStep {

    private QuickviewPage mQuickviewPage;

    public QuickViewPageStep(SharedDriver driver, QuickviewPage quickviewPage) {
        mQuickviewPage = quickviewPage;
    }

    @And("User closes the quickview popup")
    public void user_closes_the_quickview_popup() {
        mQuickviewPage.closeQuickviewPopup();
    }
}