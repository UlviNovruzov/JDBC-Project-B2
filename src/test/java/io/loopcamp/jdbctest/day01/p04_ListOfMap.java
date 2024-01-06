package io.loopcamp.jdbctest.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class p04_ListOfMap {

    // right now these are instance variables, because they're directly in the class declaration
    String dbUrl = "jdbc:oracle:thin:@54.166.130.182:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void test() {

        Map<String, Object> row1MapExpected = new HashMap<>();
        row1MapExpected.put("FIRST_NAME", "Steven");
        row1MapExpected.put("LAST_NAME", "King");
        row1MapExpected.put("SALARY", 24000);
        System.out.println("row1MapExpected = " + row1MapExpected);


        Map<String, Object> row2MapExpected = new HashMap<>();
        row2MapExpected.put("FIRST_NAME", "Neena");
        row2MapExpected.put("LAST_NAME", "Yang");
        row2MapExpected.put("SALARY", 17000);
        System.out.println("row2MapExpected = " + row2MapExpected);

        System.out.println();
        // After making Maps to store our data, we can store all maps into a List
        List <Map <String, Object>> expectedList = new ArrayList<>();
        expectedList.add(row1MapExpected);
        expectedList.add(row2MapExpected);
        System.out.println(expectedList);

    }
    @Test
    public void test2() throws SQLException {

        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        Statement stmnt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        ResultSet rs = stmnt.executeQuery("SELECT * FROM EMPLOYEES");
        ResultSetMetaData rsmd = rs.getMetaData();

        rs.next();
        Map <String, Object> row1MapActual = new HashMap<>();
        // first name, last name, salary
        row1MapActual.put(rsmd.getColumnName(2), rs.getString(rsmd.getColumnName(2)));
        // row1MapActual.put(rsmd.getColumnName(2), rs.getString(2)); you can also use the index number instead
        row1MapActual.put(rsmd.getColumnName(3), rs.getString(rsmd.getColumnName(3)));
        row1MapActual.put(rsmd.getColumnName(8), rs.getString("SALARY"));

        System.out.println(row1MapActual);

        rs.next();
        Map <String, Object> row2MapActual = new HashMap<>();
        // first name, last name, salary
        row2MapActual.put(rsmd.getColumnName(2), rs.getString(rsmd.getColumnName(2)));
        // row1MapActual.put(rsmd.getColumnName(2), rs.getString(2)); you can also use the index number instead
        row2MapActual.put(rsmd.getColumnName(3), rs.getString(rsmd.getColumnName(3)));
        row2MapActual.put(rsmd.getColumnName(8), rs.getString("SALARY"));

        System.out.println(row2MapActual);

        rs.close();
        stmnt.close();
        conn.close();

    }

}
