<%@ page import="project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>

<%
    // Get parameters from the request
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String mobileNumber = request.getParameter("mobileNumber");
    String password = request.getParameter("password");

    try {
        // Get connection from ConnectionProvider
        Connection con = ConnectionProvider.getCon();
        // Prepare the SQL statement
        PreparedStatement ps = con.prepareStatement("INSERT INTO users VALUES (?, ?, ?, ?)");
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, mobileNumber);
        ps.setString(4, password);
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
