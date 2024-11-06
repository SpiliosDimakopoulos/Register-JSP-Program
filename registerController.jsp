<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Register Student</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/bootstrap-theme.min.css">
  <link href="css/theme_8220035.css" rel="stylesheet">
</head>
<body>

  <nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
        <a class="navbar-brand" href="#">8220035</a>
      </div>
      <div id="navbar" class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
          <li><a href="index.jsp">Home</a></li>
          <li class="active"><a href="register.jsp">Register</a></li>
          <li><a href="about.jsp">About</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <main class="container theme-showcase" role="main">
    <section class="jumbotron text-center">
      <h1>1η ατομική άσκηση</h1>
    </section>

    <% 
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirm = request.getParameter("confirm");
        String agree = request.getParameter("check");

        ArrayList<String> errors = new ArrayList<String>();

        if (name == null || name.length() < 3) {
            errors.add("Name must have at least 3 characters.");
        }
        if (surname == null || surname.length() < 3) {
            errors.add("Surname must have at least 3 characters.");
        }
        if (username == null || username.length() < 5) {
            errors.add("Username must have at least 5 characters.");
        }
        if (password == null || password.length() < 6) {
            errors.add("Password must have at least 6 characters.");
        }
        if (confirm == null || !confirm.equals(password)) {
            errors.add("Password and confirm must match.");
        }
        if (agree == null) {
            errors.add("You must agree to the terms and conditions.");
        }

        if (errors.isEmpty()) {
    %>
    <section class="container">
      <h1>Registration almost done!</h1>
      <p>Note: A verification link has been sent to the email: <%= email %></p>
      <ul class="list-unstyled">
        <li><strong>Name:</strong> <%= name %></li>
        <li><strong>Surname:</strong> <%= surname %></li>
        <li><strong>Username:</strong> <%= username %></li>
        <li><strong>Email:</strong> <%= email %></li>
      </ul>
    </section>
    <% 
        } else { 
    %>
    <section class="container">
      <div class="alert alert-danger" role="alert">
        <h1>Registration form has errors</h1>
        <ol>
          <% for (String error : errors) { %>
              <li><%= error %></li>
          <% } %>
        </ol>
      </div>
      <p><a href="register_ex1_8220035.jsp" class="btn btn-primary">Back to the form</a></p>
    </section>
    <% 
        } 
    %>
  </main>

  <footer class="navbar-inverse">
    <div class="container">
      <p class="text-center">&copy; Copyright 2024 by ismgroup19</p>
    </div>
  </footer>

  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</body>
</html>
