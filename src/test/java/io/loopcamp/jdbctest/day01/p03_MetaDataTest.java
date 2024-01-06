package io.loopcamp.jdbctest.day01;

import java.sql.*;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class p03_MetaDataTest {
    public static void main(String[] args) throws SQLException {

        String dbUrl = "jdbc:oracle:thin:@54.166.130.182:1521:XE";
        String dbUsername = "hr";
        String dbPassword = "hr";

        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        Statement stmnt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        ResultSet rs = stmnt.executeQuery("SELECT * FROM EMPLOYEES");

        /**
         * Database Meta Data - will give us information about the database
         * We use conn reference to make DatabaseMetaData reference
         */

        DatabaseMetaData dbMetaData = conn.getMetaData();
        System.out.println("Database Username: " + dbMetaData.getUserName());
        System.out.println("Database Product Name: " + dbMetaData.getDatabaseProductName());
        System.out.println("Database Product Version: " + dbMetaData.getDatabaseProductVersion());

        System.out.println();
        /**
         * Result Set Meta Data - will help us with the upperside of the table (structure)
         * We use rs reference to make ResultSetMetaData reference --> by using the .getMetaData() method
         */

        ResultSetMetaData rsmd = rs.getMetaData();

        // how many columns do we have?
        System.out.println("total columns: " + rsmd.getColumnCount());

        // how can I get 1st column name
        System.out.println("First column name: " + rsmd.getColumnName(1));

        // this will return the size of the characters that can be put
        System.out.println("Column display size: " + rsmd.getColumnDisplaySize(1));

        System.out.println();
        // how can I print all the column names
        for (int i = 1; i <= rsmd.getColumnCount() ; i++) {
            System.out.println("Column name: " + rsmd.getColumnName(i));
        }

        //
        System.out.println("\n====================================================================\n");
        //Since now, we know how to jump through the rows and through the columns, can we print all data dynamically?


        List<Map <String, Object>> list = new ArrayList<>();

        // With while loop we loop through the rows, with fori loop we loop through columns
        while (rs.next()) {

            Map <String, Object> eachPerson = new LinkedHashMap <>();

            for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                // System.out.println(rsmd.getColumnName(i) + "\t\t\t\t\t" + rs.getString(i));
                eachPerson.put(rsmd.getColumnName(i), rs.getString(i));
            }
            // System.out.println(eachPerson);
            list.add (eachPerson);
            // System.out.println();

        }
        //System.out.println(list);
        for (int i = 0; i < list.size(); i++) {
            System.out.println("Each person info: " + list.get(i));
        }

        System.out.println();
        // get me 1st person's info
        System.out.println("1st person's info: " + list.get(0));

        // get me last person's info
        System.out.println("Last person's info: " + list.get(list.size()-1));

        // get me the 10th person's phone number
        System.out.println("10th person's phone number: " + list.get(9).get("PHONE_NUMBER"));


    }
}
