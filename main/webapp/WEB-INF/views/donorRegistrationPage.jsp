<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Donor Registration</title>
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
          input[type=text], input[type=date] {
            width: 100%;
            padding: 15px;
            margin: 5px 0 22px 0;
            display: inline-block;
            border: none;
            background: #f1f1f1;
          }

          input[type=text]:focus, input[type=date]:focus {
            background-color: #ddd;
            outline: none;
          }

          select {
            width: 100%;
            padding: 10px;
            margin: 5px 0 22px 0;
            display: inline-block;
            border: none;
            background: #f1f1f1;
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
          .signin {
            background-color: #f1f1f1;
            text-align: center;
          }
</style>

</head>
<body>
<form:form action="donorRegistration" method="POST" modelAttribute="donorRegistrationDTO">
  <div class="container">
    <h1>Donor Registration</h1>
    <p>Please fill in this form to Register.</p>
    <hr>
    
    <label><b>Userame</b></label>
    <input type="text" placeholder="Enter username" name="username" id="username" required>

    <label><b>Full Name</b></label>
    <input type="text" placeholder="Enter Email" name="fullname" id="fullname" required>

    <label for="psw"><b>Gender</b></label>
    <input type="text" placeholder="Enter gender" name="gender" id="pgendersw" required>

    <label for="psw-repeat"><b>Date of birth</b></label>
    <input type="date" placeholder="Repeat Password" name="dob" id="dob" required>

    <label><b>Blood Group</b></label>
    <input type="text" placeholder="Enter bloodGroup" name="bloodGroup" id="bloodGroup" required>

    <label><b>Contact</b></label>
    <input type="text" placeholder="Enter contact" name="contact" id="contact" required>

    <label><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" id="email">

    <label><b>State</b></label>
    <input type="text" placeholder="Enter state" name="state" id="state" required>

    <label class="required"><b>District</b></label><br>
      <select name="District" id="district" required>
          <option value="select">Select District</option>
          <option value="ANGL">Anugul</option>
          <option value="BLGR">Balangir</option>
          <option value="BLS">Baleswar</option>
          <option value="BRG">Bargarh</option>
          <option value="BUD">Baudh</option>
          <option value="BHC">Bhadrak</option>
          <option value="CTC">Cuttak</option>
          <option value="DBG">Debagarh</option>
          <option value="DKL">Dhenkanal</option>
          <option value="GAJ">Gajapati</option>
          <option value="GAM">Ganjam</option>
          <option value="JSP">Jagatsinghapur</option>
          <option value="JJP">Jajpur</option>
          <option value="JSG">Jharsuguda</option>
          <option value="KLH">Kalahandi</option>
          <option value="KDM">Kandhamal</option>
          <option value="KDP">Kendrapara</option>
          <option value="KDJR">Kendujhar</option>
          <option value="KUR">Khorda</option>
          <option value="KRPU">Koraput</option>
          <option value="MKG">Malkangiri</option>
          <option value="MBR">Mayurbhanjh</option>
          <option value="NBRP">Nabarangapur</option>
          <option value="NYG">Nayagarh</option>
          <option value="NUP">Nuapada</option>
          <option value="RGDA">Rayagada</option>
          <option value="SBP">Sambalpur</option>
          <option value="SBRP">Subarnapur</option>
          <option value="SDRG">Sundargarh</option>
      </select>

    <label><b>City</b></label>
    <input type="text" placeholder="Enter city" name="city" id="city" required>

    <button type="submit" class="registerbtn">Register</button>
  </div>
  >
</form:form>
</body>
</html>