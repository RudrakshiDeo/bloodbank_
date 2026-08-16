<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Sign Up form</h1>



<form:form action="admin-process" method="POST" modelAttribute="bloodstocks">

    State             : <input type="text" name="state" path="state" />
    <br>            
    District          : <input type="text" name="district" path="district" />
    <br>
    Blood Center Name : <input type="text" name="bloodcentname" path="bloodcentname" />
    <br>
    A Positive Blood  : <input type="text" name="a_positive" path="usea_positivername" />
    <br>
    A Negative Blood  : <input type="text" name="a_negative" path="a_negative" />
    <br>
    B Positive Blood  : <input type="text" name="b_positive" path="b_positive" />
    <br>
    B Negative Blood  : <input type="text" name="b_negative" path="b_negative" />
    <br>
    AB Positive Blood : <input type="text" name="ab_positive" path="ab_positive" />
    <br>
    AB Negative Blood : <input type="text" name="ab_negative" path="ab_negative" />
    <br>
    O Positive Blood  : <input type="text" name="o_positive" path="o_positive" />
    <br>
    O Negative Blood  : <input type="text" name="o_negative" path="o_negative" />
    <br>
    Submit : <input type="submit" value="signup">

</form:form>        
</body>
</html>