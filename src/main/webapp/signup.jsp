<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div class= 'parentdiv'>
<div class="containerleft">
<div id='container'>
<div class='card'>
  <img src="https://scontent.xx.fbcdn.net/v/t1.15752-9/462543914_526547027011053_4455533803007213101_n.png?_nc_cat=103&ccb=1-7&_nc_sid=0024fc&_nc_eui2=AeEMEozY9OYtaMUEtVOYt6H4GRarN3yyVxcZFqs3fLJXF3-T4mXiUlKZGrZ797e9NYcYRmol_6IadIN5l02fCK2j&_nc_ohc=i-5PEH4WNYsQ7kNvgEchrMX&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&_nc_gid=A1HgwAg9c2lzf6zgefBalWU&oh=03_Q7cD1QEfDAvZn9BGiCcaknT8nLyKPJpcz4Mpo-OPrZ7GOrhafQ&oe=6741B17A" width=200rem height= auto>
     <form class= 'form' name="signUpForm" action="signupAction.jsp" method="post" onsubmit="return validateForm()">
          <input type="name" name="name" placeholder="Enter Name" required>
          <input type="email" name="email" placeholder="Enter Email" required>
          <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
          <input type="password" name="newPassword" placeholder="Enter password" required>
		  <input type="submit" value="Register">  
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
</div>
<div id='containerright'>
        <img src="https://scontent.xx.fbcdn.net/v/t1.15752-9/462548641_539055005393664_3359231332920766764_n.png?_nc_cat=109&ccb=1-7&_nc_sid=0024fc&_nc_eui2=AeEUmdU61XU9QYW4GJlhHE5cyd2IaUqsiF7J3YhpSqyIXkrbzTBJMGnF_xmagXNfeucT2JxwJGnMqAyk0ucoEQJE&_nc_ohc=ujncTxgUWpoQ7kNvgFwQcLW&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&_nc_gid=AdapWCDJriKya5vNJax_PF6&oh=03_Q7cD1QG5q1GKePXx5i0ilaWUrdNNu2NR-z5PUB_q_U8ffB2ojQ&oe=6741CBDC" alt="JK" />
    </div>
    </div>
</body>
</html>