<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    String userName = request.getParameter("userName");
    String password = request.getParameter("password");

    // Defensive: handle missing inputs
    if (userName == null || password == null || userName.trim().isEmpty() || password.trim().isEmpty()) {
        out.println("⚠️ Please enter both username and password. <a href='index.jsp'>Try again</a>");
        return;
    }

    // Database connection parameters
    String jdbcURL = "jdbc:mysql://java-rds-db.czoe4g4os1wp.us-east-2.rds.amazonaws.com:3306/jwt?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
    String dbUser = "admin";
    String dbPass = "admin123";

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");  // ✅ MySQL 8+ driver
        Connection con = DriverManager.getConnection(jdbcURL, dbUser, dbPass);

        // ✅ Use PreparedStatement to prevent SQL injection
        String sql = "SELECT * FROM USER WHERE userName = ? AND password = ?";
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setString(1, userName);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();

        if (rs.next()) {
            session.setAttribute("userName", userName);
            response.sendRedirect("success.jsp");
        } else {
            out.println("❌ Invalid username or password. <a href='index.jsp'>Try again</a>");
        }

        rs.close();
        pst.close();
        con.close();
    } catch (ClassNotFoundException e) {
        out.println("❗ Database driver not found: " + e.getMessage());
    } catch (SQLException e) {
        out.println("❗ Database error: " + e.getMessage());
    } catch (Exception e) {
        out.println("❗ Unexpected error: " + e.getMessage());
    }
%>

