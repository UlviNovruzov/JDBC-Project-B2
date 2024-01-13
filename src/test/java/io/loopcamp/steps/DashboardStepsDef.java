package io.loopcamp.steps;

import io.cucumber.java.en.*;
import io.loopcamp.pages.LoginPage;

import javax.security.auth.login.LoginContext;

public class DashboardStepsDef {

    LoginPage loginPage = new LoginPage();

    @Given("the {string} on the home page")
    public void the_on_the_home_page(String userType) {
        loginPage.login(userType);
    }

}
