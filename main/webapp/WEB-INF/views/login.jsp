<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
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

/* Set a grey background color and center the text of the "sign in" section */
.signup {
  background-color: #f1f1f1;
  text-align: center;
}
</style>
</head>
<!-- write some condition to display error message -->


<body>
<h1>${param.error}</h1>
<c:if test="${param.error != null}">
	Invalid login or password
</c:if>
	<div class="container">
		<h1>Login Page</h1>
		<p>Please fill in this form.</p>
    	<hr>
		<%-- <form:form action="login-process" method="POST"> --%>
		<form:form action="login-process" method="POST">
			Username : <input type="text" name="username" placeholder="Enter Username">
			<br>
		    Password : <input type="password" name="password" placeholder="Enter Password">
		    <br>
		    
		    <button type="submit" class="registerbtn">Login</button>
		    
		    <div class="container signup">
		    <p>To create an account? <a href="/bloodbank/signup">Sign up</a>.</p>
		    </div>
		</form:form>
	</div>
	
</body>
</html>