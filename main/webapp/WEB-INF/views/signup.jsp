<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign up Page</title>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: crimson;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #ff1648;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}
</style>
</head>
<body>
	<div class="container">
	<h1>Sign Up form</h1>
	<p>Please fill in this form to create an account.</p>
    	<hr>
		<form:form action="signup-process" method="POST" modelAttribute="signupdto">
			Username : <input type="text" name="username" placeholder="Enter Username" path="username" />
			<br>
		    Password : <input type="password" name="password" placeholder="Enter Password" path="password" />
		    <br>
		    
		    <button type="submit" class="registerbtn">Sign up</button>
		 </form:form>
	    </div>
</body>
</html>