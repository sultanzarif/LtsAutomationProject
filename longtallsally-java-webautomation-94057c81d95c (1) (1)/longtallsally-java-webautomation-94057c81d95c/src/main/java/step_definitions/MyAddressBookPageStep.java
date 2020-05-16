package step_definitions;

import io.cucumber.java.en.And;
import page_objects.MyAddressBookPage;
import utils.SharedDriver;

public class MyAddressBookPageStep {

    private MyAddressBookPage mMyAddressBookPage;

    public MyAddressBookPageStep(SharedDriver driver, MyAddressBookPage myAddressBookPage) {
        mMyAddressBookPage = myAddressBookPage;
    }

    @And("^User adds address details on my account page based on locale \"([^\"]*)\"$")
    public void user_adds_address_details_on_my_account_page_based_on_locale(String locale) throws Throwable {
        mMyAddressBookPage.addAddress(locale);
    }
}