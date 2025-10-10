<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    String userName = request.getParameter("userName");
    String password = request.getParameter("password");
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String email = request.getParameter("email");

    // Basic validation
    if (userName == null || password == null || firstName == null || lastName == null || email == null ||
        userName.trim().isEmpty() || password.trim().isEmpty()) {
        out.println("⚠️ Please fill in all required fields. <a href='register.jsp'>Go back</a>");
        return;
    }

    // Database credentials and connection
    String jdbcURL = "jdbc:mysql://java-rds-db.czoe4g4os1wp.us-east-2.rds.amazonaws.com:3306/jwt?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
    String dbUser = "admin";
    String dbPass = "admin123";

    try {
        Class.forName("com.mysql.cj.jdbc.Driver"); // ✅ MySQL 8 driver
        Connection con = DriverManager.getConnection(jdbcURL, dbUser, dbPass);

        // ✅ Use PreparedStatement to prevent SQL injection
        String sql = "INSERT INTO USER (first_name, last_name, email, username, password, regdate) VALUES (?, ?, ?, ?, ?, CURDATE())";
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setString(1, firstName);
        pst.setString(2, lastName);
        pst.setString(3, email);
        pst.setString(4, userName);
        pst.setString(5, password);

        int i = pst.executeUpdate();

        if (i > 0) {
            response.sendRedirect("welcome.jsp");
        } else {
            out.println("❌ Registration failed. <a href='register.jsp'>Try again</a>");
        }

        pst.close();
        con.close();
    } catch (ClassNotFoundException e) {
        out.println("❗ JDBC Driver not found: " + e.getMessage());
    } catch (SQLException e) {
        out.println("❗ Database error: " + e.getMessage());
    } catch (Exception e) {
        out.println("❗ Unexpected error: " + e.getMessage());
    }
%>

