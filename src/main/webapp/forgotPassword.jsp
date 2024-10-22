<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="" method="post">
          <input type="email" name="email" placeholder="Enter Email" required>
          <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
          <select name="securityQuestion">
          	<option value="What is the name of your elementary school?">What is the name of your elementary school?</option>
    		<option value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>
    		<option value="What is the name of your first pet?">What is the name of your first pet?</option>
          </select>
          <input type="text" name="answer" placeholder="Enter Answer" required>
          <input type="password" name="newPassword" placeholder="Enter you new password to set" required>
		  <input type="submit" value="Save">  
     </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
   
<h1>Password Changed Successfully!</h1>

<h1>Some thing Went Wrong! Try Again !</h1>


  </div>
</div>
</body>
</html>