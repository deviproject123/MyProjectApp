<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>WELCOME TO SHIPMENT TYPE DATA PAGE</h3>
<a href="excel">Excel Export</a>|<a href="pdf">PDF Export</a>
<c:choose>
<c:when test="${!empty list}">
<table border="1">
<tr>
<th>ID</th>
<th>MODE</th>
<th>CODE</th>
<th>ENABLE</th>
<th>GRADE</th>
<th>NOTE</th>
<th>OPERATIONS </th>

</tr>
<!-- for(ShipmentType ob:list){} -->
<c:forEach items="${list}" var="ob">

<tr>
<td>${ob.shipId}</td>
<td>${ob.shipMode}</td>
<td>${ob.shipCode}</td>
<td>${ob.enbShip}</td>
<td>${ob.shipGrad}</td>
<td>${ob.shipDesc}</td>
<td>
<a href="delete?sid=${ob.shipId}">DELETE</a>
</td>
<td>
<a href="edit?sid=${ob.shipId}">EDIT</a>
</td>
<td>
<a href="view?sid=${ob.shipId}">VIEW</a>
</td>
</tr>
<!--  <td>
<th colspan="3" >OPERATIONS</th>
</td> -->
</c:forEach>
</table>
</c:when>
<c:otherwise>
 <h4>>NO DATA FOUND!!</h4>
</c:otherwise>
</c:choose>
</body>
</html>