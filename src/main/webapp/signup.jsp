<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    <form action="signupAction.jsp" method="post">
    <input type="text" name="name" placeholder="Enter Name" required>
    <input type="email" name="email" placeholder="Enter Email" required>
    <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
    <select name="securityQuestion" required>
    <option value="What is the name of your elementary school?">What is the name of your elementary school?</option>
    <option value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>
    <option value="What is the name of your first pet?">What is the name of your first pet?</option>
    </select>
    <input type="text" name="answer" placeholder="Enter Answer" required>
    <input type="password" name="password" placeholder="Enter Password" required>
    <input type="submit" value="signup">
    </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
  <%
  String msg=request.getParameter("msg");
  if("valid".equals(msg)){
	  %>
	  <h1>Successfully Registered !</h1>
	  <%} %>
<%
if("invalid".equals(msg)){
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