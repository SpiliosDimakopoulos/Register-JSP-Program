<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Registration Form</title>
        <!-- Bootstrap core CSS -->      
        
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/theme_8220035.css">
      </head>

    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
              <div class="navbar-header">
                <a class="navbar-brand" href="#">8220035</a>
              </div>
              <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                  <li><a href="index_ex1_8220035.jsp">Home</a></li>
                  <li class="active"><a href="register_ex1_8220035.jsp">Register</a></li>
                  <li><a href="about_ex1_8220035.jsp">About</a></li>
                </ul>
              </div>
            </div>
        </nav>

        <div class="container theme-showcase" role="main">
            <div class="jumbotron">
              <h1>1η ατομική άσκηση</h1>
        </div>
        
        <div class="page-header">
            <h1>Registration Form</h1>
        </div>

        <div class="alert alert-warning" style="text-align: center;">
            <strong>Please fill in the following form to create an account.</strong>
        </div>

        <form action="registerController_ex1_8220035.jsp" method="post" class="form-horizontal">
          <div class="form-group">
            <label for="name" class="col-sm-2 control-label main-label">Name </label>
            <div class="col-sm-6">
              <input type="text" name="name" id="name" class="form-control" placeholder="your name">
            </div>
          </div>

          <div class="form-group">
            <label for="surname" class="col-sm-2 control-label main-label">Surname </label>
            <div class="col-sm-6">
              <input type="text" name="surname" id="surname" class="form-control" placeholder="your surname">
            </div>
          </div>

          <div class="form-group">
            <label for="email" class="col-sm-2 control-label main-label">Email </label>
            <div class="col-sm-6">
              <input type="email" name="email" id="email" class="form-control" placeholder="your email">
            </div>
          </div>

          <div class="form-group">
            <label for="username" class="col-sm-2 control-label main-label">Username </label>
            <div class="col-sm-6">
              <input type="text" name="username" id="username" class="form-control" placeholder="your username">
            </div>
          </div>
          
          <div class="form-group">
            <label for="password" class="col-sm-2 control-label main-label">Password </label>
            <div class="col-sm-6">
              <input type="password" name="password" id="password" class="form-control" placeholder="your password">
            </div>
          </div>

          <div class="form-group">
            <label for="confirm" class="col-sm-2 control-label main-label">Confirm </label>
            <div class="col-sm-6">
              <input type="password" name="confirm" id="confirm" class="form-control" placeholder="confirm your password">
            </div>
          </div>
    
            <div class="form-group">
              <div class="col-sm-5 control-label main-label">
                <div class="checkbox">
                  <label style="color: rgb(24, 83, 135);">
                    <input type="checkbox" name="check"> <strong> I agree to the terms and conditions </strong>
                  </label>
                </div>
              </div>
            </div>
    
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-success btn-lg">Submit</button>
            <button type="button" class="btn btn-danger btn-lg">Cancel</button>
              </div>
            </div>
        </form>
      </div>
      <footer class="navbar-inverse">
        <div class="container">
          <p class="text-center">&copy; Copyright 2024 by ismgroup19</p>
        </div>
      </footer>
      <script src="js/jquery.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
    </body>
    </html>
