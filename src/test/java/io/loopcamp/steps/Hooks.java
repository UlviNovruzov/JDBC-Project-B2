package io.loopcamp.steps;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import io.loopcamp.utility.ConfigurationReader;
import io.loopcamp.utility.DB_Utility;
import io.loopcamp.utility.Driver;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

import java.util.concurrent.TimeUnit;

public class Hooks {


    @Before("@ui")
    public void setUp() {
        Driver.getDriver();
        Driver.getDriver().manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        Driver.getDriver().manage().window().maximize();
        Driver.getDriver().get(ConfigurationReader.getProperty("docuport.ui.url"));
    }


    @After("@ui")
    public void tearDown (Scenario scenario){
        if(scenario.isFailed()){
            final byte[] screenshot = ((TakesScreenshot) Driver.getDriver()).getScreenshotAs(OutputType.BYTES);
            scenario.attach(screenshot,"image/png", scenario.getName());
        }
        Driver.closeDriver();
    }


    @Before("@db")
    public void SetUpDb(){
        String url = ConfigurationReader.getProperty("docuport.db.url");
        String username = ConfigurationReader.getProperty("docuport.db.username");
        String password = ConfigurationReader.getProperty("docuport.db.password");

        DB_Utility.createConnection(url, username, password);
    }

    @After("@db")
    public void tearDownDb() {
        DB_Utility.destroy();
    }

}