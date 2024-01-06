package io.loopcamp.jdbctest.day01;

import java.sql.*;

public class p02_FlexibleNavigation {
    public static void main(String[] args) throws SQLException {

        String dbUrl = "jdbc:oracle:thin:@54.166.130.182:1521:XE";
        String dbUsername = "hr";
        String dbPassword = "hr";

        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        Statement stmnt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        // ResultSet.TYPE_SCROLL_INSENSITIVE - This will help us to be able to scroll the cursor dynamically or to be able to jump directly to the certain rows
        // ResultSet.CONCUR_READ_ONLY - With this, we are saying that do not want to change anything in database, it makes the object reference immutable (cannot change)

        ResultSet rs = stmnt.executeQuery("SELECT * FROM EMPLOYEES");

        rs.next();

        System.out.println("FIRST_NAME for 1st row: " + rs.getString("FIRST_NAME"));
        System.out.println("PHONE NUMBER for 1st row: " + rs.getString(5));

        // get me all the salary info for each row

        while (rs.next()) {
            System.out.println("Salary for each row: " + rs.getDouble("SALARY"));
        }

        // this will give us an exception as no rows are left
        // System.out.println("FIRST_NAME for 1st row: " + rs.getString("FIRST_NAME"));

        System.out.println();
        // This will help us to jump to the first row
        rs.first();
        System.out.println("FIRST_NAME for 1st row: " + rs.getString("FIRST_NAME"));

        // How to jump to the 9th row and print the last name?
        System.out.println();
        rs.absolute(9);
        System.out.println("LAST_NAME for row 9 is: " + rs.getString("LAST_NAME"));

        System.out.println();
        // Get first name, last name and salary for the row no. 12
        rs.absolute(12);
        System.out.println("Row 12 info: ");
        System.out.println("\tFIRST NAME: " + rs.getString("FIRST_NAME"));
        System.out.println("\tLAST NAME: " + rs.getString("LAST_NAME"));
        System.out.println("\tSALARY $: " + rs.getString("SALARY"));

        System.out.println();
        // Get FN, LN and SALARY for last row
        rs.last();
        System.out.println("Last row info: ");
        System.out.println("\tFIRST NAME: " + rs.getString("FIRST_NAME"));
        System.out.println("\tLAST NAME: " + rs.getString("LAST_NAME"));
        System.out.println("\tSALARY $: " + rs.getString("SALARY"));

        System.out.println();
        // the same info for the person before the last
        rs.previous();
        System.out.println("Before the last row info: ");
        System.out.println("\tFIRST NAME: " + rs.getString("FIRST_NAME"));
        System.out.println("\tLAST NAME: " + rs.getString("LAST_NAME"));
        System.out.println("\tSALARY $: " + rs.getString("SALARY"));

        System.out.println();
        // get me all phone numbers
        rs.beforeFirst();

        while (rs.next()) {
            System.out.println("rs.getString(\"PHONE_NUMBER\") = " + rs.getString("PHONE_NUMBER"));
        }
    }
}
