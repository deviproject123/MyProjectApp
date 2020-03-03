<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>WELCOME TO SHIPMENT TYPE REGISTER PAGE</h3>
	<form:form action="save" method="post" modelAttribute="shipmentType">
	<pre>
Shipment Mode:
<form:select path="shipMode">
<form:option value="">--SELECT--</form:option>
<form:option value="Air">Air</form:option>
<form:option value="Truck">Truck</form:option>
<form:option value="Ship">Ship</form:option>
<form:option value="Train">Train</form:option>
</form:select>
Shipment Code:
<form:input path="shipCode"/>
Enable Shipment:
<form:select path="enbShip">
<form:option value="">--SELECT--></form:option>
<form:option value="YES">YES</form:option>
<form:option value="NO">NO</form:option>
</form:select>
Shipment Grad:
<form:radiobutton path="shipGrad" value="A"/>A
<form:radiobutton path="shipGrad" value="B"/>B
<form:radiobutton path="shipGrad" value="C"/>C
Description:
<form:textarea path="shipDesc"/>
<input type="submit" value="CREATE">
</pre>
</form:form>
${message}
</body>
</html>