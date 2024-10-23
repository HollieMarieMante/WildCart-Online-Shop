<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/signup-style.css">
    <title>Signup</title>
    <script>
        // Function to validate if passwords match
        function validateForm() {
            var password = document.forms["signupForm"]["password"].value;
            var confirmPassword = document.forms["signupForm"]["confirmPassword"].value;
            
            if (password !== confirmPassword) {
                alert("Passwords do not match. Please try again.");
                return false; // Prevent form submission
            }
            return true; // Allow form submission
        }
    </script>
</head>
<body>
    <div id='container'>
        <div class='signup'>
            <form name="signupForm" action="signupAction.jsp" method="post" onsubmit="return validateForm()">
                <input type="text" name="name" placeholder="Enter Name" required>
                <input type="email" name="email" placeholder="Enter Email" required>
                <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
                <input type="password" name="password" placeholder="Enter Password" required>
                <input type="password" name="confirmPassword" placeholder="Confirm Password" required>
                <input type="submit" value="Signup">
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
                <h1>Something Went Wrong! Try Again!</h1>
                <%
            }
            %>
            <h2>Online Shopping</h2>
            <p>Welcome to the CIT-U online marketplace, a secure space for students to buy, sell, and trade tech products and services. Easily register with your university credentials, browse listings, and post items. Enjoy safe transactions and stay connected with notifications and feedback options. Join us to connect and collaborate with your peers!</p>
        </div>
    </div>
</body>
</html>
