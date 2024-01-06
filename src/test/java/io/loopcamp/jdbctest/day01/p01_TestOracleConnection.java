package io.loopcamp.jdbctest.day01;

import java.sql.*;

public class p01_TestOracleConnection {
    public static void main(String[] args) throws SQLException {

        // Connection String - needed to make connection
        String dbUrl = "jdbc:oracle:thin:@54.166.130.182:1521:XE";
        String dbUsername = "hr";
        String dbPassword = "hr";

        /*
        3 steps to make connection

        1. Connection
        2. Statement
        3. ResultSet

        These are coming from java.sql package
         */

        // DriverManager is a class, and has getConnection() method which is used to get CONNECTION
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // We created Statement reference from Connection to execute the Query
        Statement stmnt = conn.createStatement();

        // Using stmnt reference to execute the query and store the result into rs
        ResultSet rs = stmnt.executeQuery("SELECT * FROM REGIONS");

        rs.next();
        System.out.println("rs.getString(\"REGION_ID\") = " + rs.getString("REGION_ID"));
        System.out.println("rs.getInt(\"REGION_ID\") = " + rs.getInt("REGION_ID"));
        System.out.println("rs.getString(\"REGION_NAME\") = " + rs.getString("REGION_NAME"));

        rs.next();
        System.out.println("rs.getString(\"REGION_ID\") = " + rs.getString("REGION_ID"));
        System.out.println("rs.getInt(\"REGION_ID\") = " + rs.getInt("REGION_ID"));

        System.out.println("rs.getString(\"REGION_NAME\") = " + rs.getString("REGION_NAME"));
        System.out.println("rs.getString(\"REGION_NAME\") = " + rs.getString(2));

        System.out.println();
        while (rs.next()) {
            System.out.println("Each region ID: " + rs.getString(1)); // or you can type "REGION_ID"
            System.out.println("Each region name: " + rs.getString(2));
        }

        // This will give us exception saying the rows have been finished
        //System.out.println(rs.getString("REGION_NAME"));

        // Q. How to go back to the first row?
        rs.first();
        System.out.println(rs.getString("REGION_NAME"));
        // for that we need to add some parameters
        // we will see it in a new file

    }
}
