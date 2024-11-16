<%@ page import="project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%@ include file="header.jsp" %>
<%@ include file="footer.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home</title>
  
  <!-- Bootstrap and FontAwesome -->
  <link rel="stylesheet" href="css/home-style.css" type="text/css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

  <style>
    body {
      font-family: "Open Sans", sans-serif;
      background-color: darkred !important;
      color: white;
    }

    .alert {
      color: yellow;
      text-align: center;
    }

    .card {
      margin: 15px 0;
    }

    .card .btn-primary {
      background-color: #007bff;
      border: none;
      cursor: pointer;
    }

    .card .btn-primary:hover {
      background-color: #0056b3;
    }

    .container {
      margin-top: 20px;
    }
  </style>
</head>
<body>
  <div style="color: white; text-align: center; font-size: 30px;">
    Home <i class="fa fa-institution"></i>
  </div>

  <%-- Display alert messages --%>
  <%
  String msg = request.getParameter("msg");
  if ("added".equals(msg)) {
  %>
    <h3 class="alert">Product added successfully!</h3>
  <%
  } else if ("exist".equals(msg)) {
  %>
    <h3 class="alert">Product already exists in your cart! Quantity increased!</h3>
  <%
  } else if ("invalid".equals(msg)) {
  %>
    <h3 class="alert">Something went wrong!</h3>
  <%
  }
  %>

  <div class="container">
    <div class="row">
      <% 
      // Fetching data from the database
      try {
        Connection con = ConnectionProvider.getCon();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("SELECT * FROM product WHERE active='Yes'");
        
        // Generate a Bootstrap card for each product
        while (rs.next()) {
          String id = rs.getString(1);
          String name = rs.getString(2);
          String category = rs.getString(3);
          String price = rs.getString(4);
      %>
          <div class="col-md-4">
            <div class="card text-dark">
              <div class="card-body">
                <h5 class="card-title">Name: <%= name %></h5>
                <p class="card-text"><strong>ID:</strong> <%= id %></p>
                <p class="card-text"><strong>Category:</strong> <%= category %></p>
                <p class="card-text"><strong>Price:</strong> ₱<%= price %></p>
                <a href="addToCartAction.jsp?id=<%= id %>" class="btn btn-primary">
                  Add to Cart <i class='fas fa-cart-plus'></i>
                </a>
              </div>
            </div>
          </div>
      <%
        }
      } catch (Exception e) {
        e.printStackTrace();
      }
      %>
    </div>
  </div>

  <!-- Footer -->
  <footer class="footer bg-light text-dark text-center py-3">
    All Right Reserved @ WildCart
  </footer>

  <!-- Bootstrap JS (Optional for Interactivity) -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.4.4/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
