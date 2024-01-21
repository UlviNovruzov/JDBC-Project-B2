package io.loopcamp.steps;

import io.cucumber.java.en.*;
import io.loopcamp.utility.DB_Utility;

public class HomeTask_StepDefs {

    @When("Execute query to get all IDs from users")
    public void execute_query_to_get_all_i_ds_from_users() {
        DB_Utility.runQuery("SELECT * FROM identity.users");

    }
    @Then("verify all users has unique ID")
    public void verify_all_users_has_unique_id() {

    }

    @When("Execute query to get all columns")
    public void execute_query_to_get_all_columns() {

    }
    @Then("verify the below columns are listed in result")
    public void verify_the_below_columns_are_listed_in_result(io.cucumber.datatable.DataTable dataTable) {

    }


}
