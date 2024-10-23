
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="forgotPasswordAction.jsp" method="post">
          <input type="email" name="email" placeholder="Enter Email" required>
          <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
          <input type="password" name="newPassword" placeholder="Enter you new password to set" required>
		  <input type="submit" value="Save">  
     </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
  <%
  String msg=request.getParameter("msg");
  if("done".equals(msg))
  {
	  %>
	  	<h1>Password Changed Successfully!</h1>
	  <%
  }
  %>
<%
if("invalid".equals(msg))
{
	  %>
	  	<h1>Something Went Wrong! Try Again !</h1>
	  <%
}
%>

  </div>
</div>
</body>
</html>