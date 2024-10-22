<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="css/signup-style.css">
    <title>Login</title>
    <link href="webjars/font-awesome/6.5.2/css/all.min.css" rel="stylesheet">
    <link href="webjars/bootstrap/5.3.3/css/bootstrap.min.css" rel="stylesheet">
    <script src="webjars/jquery/3.7.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-maroon navbar-dark">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active text-black-50 fw-bold" aria-current="page" href="#">Option 1</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-black-50 fw-bold" href="#">Option 2</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-black-50 fw-bold" href="#">Option 3</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <section class="vh-100 gradient-custom">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                    <div class="card shadow-2-strong">
                        <div class="card-body p-5 text-center">
                            <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
                            <p class="text-black-50 mb-5">Please enter your login and password!</p>

                            <form action="loginAction.jsp" method="post">
                                <div data-mdb-input-init class="form-outline form-black mb-4">
                                    <input type="email" name="email" id="typeEmailX" class="form-control form-control-lg" placeholder="Enter Email" required />
                                    <label class="form-label" for="typeEmailX">Email or username</label>
                                </div>

                                <div data-mdb-input-init class="form-outline form-black mb-4">
                                    <input type="password" name="password" id="typePasswordX" class="form-control form-control-lg" placeholder="Enter Password" required />
                                    <label class="form-label" for="typePasswordX">Password</label>
                                </div>

                                <p class="small mb-5 pb-lg-2"><a class="text-black-50" href="#!">Forgot password?</a></p>

                                <button class="btn btn-custom btn-lg px-5" type="submit">Login</button>
                            </form>

                            <div>
                                <p class="mb-0">Don't have an account? <a href="signup.jsp" class="text-blue-50 fw-bold">Sign Up</a></p>
                            </div>

                            <div class='whysignLogin'>
                                <%
                                String msg = request.getParameter("msg");
                                if ("notexist".equals(msg)) {
                                %>
                                    <h1>Incorrect Username or Password</h1>
                                <%
                                }
                                %>
                                <% if ("invalid".equals(msg)) { %>
                                    <h1>Something Went Wrong! Try Again!</h1>
                                <% } %>

                                <h2>Online Shopping</h2>
                                <p>Welcome to the CIT-U online marketplace, a secure space for students to buy, sell, and trade tech products and services. Easily register with your university credentials, browse listings, and post items. Enjoy safe transactions and stay connected with notifications and feedback options. Join us to connect and collaborate with your peers!</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
