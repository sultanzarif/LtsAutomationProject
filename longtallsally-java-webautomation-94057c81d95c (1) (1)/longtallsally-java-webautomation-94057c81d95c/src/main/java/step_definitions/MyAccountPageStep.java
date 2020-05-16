package step_definitions;

import io.cucumber.java.en.And;
import page_objects.MyAccountPage;
import utils.SharedDriver;

public class MyAccountPageStep {

    private MyAccountPage mMyAccountPage;

    public MyAccountPageStep(SharedDriver driver, MyAccountPage myAccountPage) {
        mMyAccountPage = myAccountPage;
    }

    @And("^User clicks my details page$")
    public void user_clicks_my_details_page() {
        mMyAccountPage.clickMyDetailsLink();
    }

    @And("^User clicks my payment details page$")
    public void user_clicks_my_payment_details_page() {
        mMyAccountPage.clickMyPaymentDetails();
    }

    @And("^User clicks My Address Book link$")
    public void user_clicks_my_address_book_link() {
        mMyAccountPage.clickMyAddressBookLink();
    }
}