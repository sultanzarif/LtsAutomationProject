package step_definitions;

import io.cucumber.java.en.Then;
import page_objects.OrderConfirmationPage;
import utils.SharedDriver;

public class OrderConfirmationPageStep {

    private OrderConfirmationPage mOrderConfirmationPage;

    public OrderConfirmationPageStep(SharedDriver driver, OrderConfirmationPage orderConfirmationPage) {
        mOrderConfirmationPage = orderConfirmationPage;
    }

    @Then("^User should complete order successfully$")
    public void user_should_complete_order_successfully() throws InterruptedException {
        mOrderConfirmationPage.checkOrderConfirmation();
    }
}