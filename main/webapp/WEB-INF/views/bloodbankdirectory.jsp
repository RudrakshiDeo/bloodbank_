<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="2" height="300px" width="400px">
<tr>
    <th>Name</th>
    <th>Phone No.</th>
    <th>Email Id</th>
    <th>Category</th>
    <th>Address</th>
    <th>Type</th>
</tr>
<c:forEach var="addBloodbankdto" items="${directoryList}">
<tr>
<td>${addBloodbankdto.bbank}</td>
<td>${addBloodbankdto.address1}</td>
<td>${addBloodbankdto.email}</td>
<td>${addBloodbankdto.category}</td>
<td>${addBloodbankdto.contact}</td>
<td>${addBloodbankdto.pinCode}</td>

</tr>
</c:forEach>
</table>
</body>
</html>