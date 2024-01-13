package io.loopcamp.pages;

import io.loopcamp.utility.ConfigurationReader;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class LoginPage extends BasePage {

    @FindBy (xpath = "//input[@id='input-14']")
    public WebElement emailBox;

    @FindBy (xpath = "//input[@id='input-15']")
    public WebElement passwordBox;

    @FindBy (xpath = "//button[@type='submit']")
    public WebElement loginButton;

    public void login (String userType) {

        String lowerCase = userType.toLowerCase();
        String username = ConfigurationReader.getProperty(lowerCase + "_username");
        String password = ConfigurationReader.getProperty(lowerCase + "_password");

        emailBox.sendKeys(username);
        passwordBox.sendKeys(password);
        loginButton.click();
    }

}
