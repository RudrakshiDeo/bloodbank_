<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <form:form action="/bloodbank/editstocks" method="POST" modelAttribute="bloodstocks">
   Id :<input type="text" name="id" value="${per.id}" readonly >
   <br>
  <%--  Last Updated Date : <input type="text" name="lastupdatedate" value="${per.lastupdatedate}" readonly> --%>
   <br>
   State : <input type="text" name="state" value="${per.state}" readonly>
   <br>
   District : <input type="text" name="district" value="${per.district}" readonly>
   <br>
   Blood Center : <input type="text" name="bloodcentname" value="${per.bloodcentname}" >
   <br>
   A Positive : <input type="text" name="a_positive" value="${per.a_positive}">
   <br>
   A Negative : <input type="text" name="a_negative" value="${per.a_negative}">
   <br>
   B Positive : <input type="text" name="b_positive" value="${per.b_positive}">
   <br>
   B Negative : <input type="text" name="b_negative" value="${per.b_negative}">
   <br>
   AB Positive : <input type="text" name="ab_positive" value="${per.ab_positive}">
   <br>
   AB Negative : <input type="text" name="ab_negative" value="${per.ab_negative}">
   <br>
   O Positive : <input type="text" name="o_positive" value="${per.o_positive}">
   <br>
   O Negative : <input type="text" name="o_negative" value="${per.o_negative}">
   <br>
   <input type="submit" name="btn" value="Edit Person" >
 </form:form>
</body>
</html>