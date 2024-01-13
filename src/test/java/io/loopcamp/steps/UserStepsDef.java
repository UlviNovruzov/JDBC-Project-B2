package io.loopcamp.steps;

import io.cucumber.java.en.*;
import io.loopcamp.pages.BasePage;
import io.loopcamp.pages.UsersPage;
import io.loopcamp.utility.BrowserUtil;
import io.loopcamp.utility.DB_Utility;
import org.junit.Assert;

public class UserStepsDef {

    UsersPage usersPage = new UsersPage();
    int expCount;

    @Given("the user navigates to {string} page")
    public void the_user_navigates_to_page(String moduleName) {
        usersPage.navigateModule(moduleName);
    }


    @When("the user gets total user count")
    public void the_user_gets_total_user_count() {
        usersPage.searchButton.click();
        usersPage.allRadioButton.click();
        usersPage.updateSearchButton.click();
        BrowserUtil.waitFor(10);
        expCount = usersPage.getResultCount();
    }

    @Then("verify user count information match in DB")
    public void verify_user_count_information_match_in_db() {
        DB_Utility.runQuery("SELECT COUNT (*) from document.users");
        String actualCountStr = DB_Utility.getCellValue(1, 1); // 895
        int actualCount = Integer.parseInt(actualCountStr);
        Assert.assertEquals(expCount, actualCount);

    }

}