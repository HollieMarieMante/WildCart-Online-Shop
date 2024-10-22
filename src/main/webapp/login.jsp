<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="loginAction.jsp" method="post">
     <input type="email" name="email" placeholder="Enter Email" required>
     <input type="password" name="password" placeholder="Enter Password" required>
     <input type="submit" value="login">
     </form>
      <h2><a href="signup.jsp">SignUp</a></h2>
       <h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>
  </div>
  <div class='whysignLogin'>
  <%
  String msg=request.getParameter("msg");
  if("notexist".equals(msg))
  {
	  %>
	    <h1>Incorrect Username or Password</h1>
	  <%
  }
  %>
  <%if("invalid".equals(msg))
  {
  	%>
  	<h1>Some thing Went Wrong! Try Again !</h1>
  	<%
  }
  %>

    <h2>Online Shopping</h2>
    <p>Welcome to the CIT-U online marketplace, a secure space for students to buy, sell, and trade tech products and services. Easily register with your university credentials, browse listings, and post items. Enjoy safe transactions and stay connected with notifications and feedback options. Join us to connect and collaborate with your peers!</p>
  </div>
</div>

</body>
</html>