<%@ page import="project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>

<%
    // Get parameters from the request
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String mobileNumber = request.getParameter("mobileNumber");
    String securityQuestion = request.getParameter("securityQuestion");
    String answer = request.getParameter("answer");
    String password = request.getParameter("password");
    String address = "";
    String city = "";
    String state = "";
    String country = "";

    try {
        // Get connection from ConnectionProvider
        Connection con = ConnectionProvider.getCon();
        // Prepare the SQL statement
        PreparedStatement ps = con.prepareStatement("INSERT INTO users VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, mobileNumber);
        ps.setString(4, securityQuestion);
        ps.setString(5, answer);
        ps.setString(6, password);
        ps.setString(7, address);
        ps.setString(8, city);
        ps.setString(9, state);
        ps.setString(10, country);
        // Execute the statement
        ps.executeUpdate();
        // Redirect to signup.jsp with a success message
        response.sendRedirect("signup.jsp?msg=valid");
    } catch (Exception e) {
        // Log the error and redirect to signup.jsp with an error message
        e.printStackTrace();
        response.sendRedirect("signup.jsp?msg=invalid");
    }
%>
