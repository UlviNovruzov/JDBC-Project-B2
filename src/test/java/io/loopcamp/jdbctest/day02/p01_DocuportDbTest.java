package io.loopcamp.jdbctest.day02;

import io.loopcamp.utility.ConfigurationReader;
import io.loopcamp.utility.DB_Utility;
import org.junit.Assert;
import org.junit.Test;


import java.sql.*;

public class p01_DocuportDbTest {

    String url = ConfigurationReader.getProperty("docuport.db.url");
    String username = ConfigurationReader.getProperty("docuport.db.username");
    String password = ConfigurationReader.getProperty("docuport.db.password");



    @Test
    public void test01 () throws SQLException {
        DB_Utility.createConnection(url, username, password);
        DB_Utility.runQuery("SELECT * FROM document.users WHERE role_name = 'advisor'");

        String expectedNumber = DB_Utility.getRowCount() + ""; // 7
        String actualNumber = "7";
        Assert.assertEquals(expectedNumber, actualNumber);

        DB_Utility.destroy();

    }
}