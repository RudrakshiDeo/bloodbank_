<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="2">
<c:forEach var="p" items="${plist}">
<tr>
<td>${p.id}</td>
<td>${p.state}</td>
<td>${p.district}</td>
<td>${p.bloodcentname}</td>
<td>${p.lastupdatedate}</td>
<td>${p.a_positive}</td>
<td>${p.a_negative}</td>
<td>${p.b_positive}</td>
<td>${p.b_negative}</td>
<td>${p.ab_positive}</td>
<td>${p.ab_negative}</td>
<td>${p.o_positive}</td>
<td>${p.o_negative}</td>
<td><a href="edit/${p.id}">Edit</a>/<a href="delete/${p.id}">Delete</a> </td>
</tr>
</c:forEach>
</table>
<a href="/bloodbank/admin">Add Blood Stocks</a>
</body>
</html>