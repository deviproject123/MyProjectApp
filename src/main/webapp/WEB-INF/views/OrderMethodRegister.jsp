<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<H3>WELCOME TO ORDER METHOD REGISTER PAGE</H3>
<form:form action="save" method="post" modelAttribute="orderMethod">
<pre>
OrderMode:
<form:radiobutton path="orderMode" value="Sale"/>Sale
<form:radiobutton path="orderMode" value="Purchase"/>Purchase
Order Code:
<form:input path="orderCode" />
Order Type:
<form:select path="orderType">
<form:option value="">--SELECT--</form:option>
<form:option value="FIFO">FIFO</form:option>
<form:option value="LIFO">LIFO</form:option>
<form:option value="FCFO">FCFO</form:option>
<form:option value="FEFO">FEFO</form:option>
</form:select>

<%-- Order Accept:
<form:checkbox path="orderAcpt" value="Multi-Model" />Multi-Model
<form:checkbox path="orderAcpt" value="Accept Return" />Accept Return

 --%>
 Description:
<form:textarea path="description" />
<input type="submit" value="Create" />
</pre>
</form:form>
	${message}
</body>
</html>