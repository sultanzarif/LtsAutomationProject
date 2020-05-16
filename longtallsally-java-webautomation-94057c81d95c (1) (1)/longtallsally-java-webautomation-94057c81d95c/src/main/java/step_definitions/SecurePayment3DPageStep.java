package step_definitions;

import io.cucumber.java.en.And;
import page_objects.SecurePayment3DPage;
import utils.SharedDriver;

public class SecurePayment3DPageStep {

    private SecurePayment3DPage mSecurePayment3DPage;

    public SecurePayment3DPageStep(SharedDriver driver, SecurePayment3DPage securePayment3DPage) {
        mSecurePayment3DPage = securePayment3DPage;
    }

    @And("User enters username and password on the 3ds form \"([^\"]*)\"")
    public void user_enters_username_and_password_on_the_3ds_form(String paymentType) {
        mSecurePayment3DPage.submit3DsForm(paymentType);
    }
}