<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>top</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	body {
		background: #00E6FF; 
	}
	a {
		text-transform:none;
		text-decoration:none;
	} 
	a:hover {
		text-decoration:underline;
	}
</style>
  </head>
  
  <body>
<h1 style="text-align: center;">Health Care</h1>
<div style="font-size: 10pt;">
	<c:choose>
		<c:when test="${empty sessionScope.session_user }">
			<a href="<c:url value='/jsps/user/login.jsp'/>" target="_parent">Login</a> |&nbsp; 
			<a href="<c:url value='/jsps/user/regist.jsp'/>" target="_parent">Register</a> |&nbsp; 
			
			
		</c:when>
		<c:otherwise>
			Hello：${sessionScope.session_user.username };
			<a href="<c:url value='/UserServletLogout'/>" target="_parent">Logout</a>
			<br>
			<a href="<c:url value='/jsps/Doctor/Doctor_menu.jsp'/>" target="body">Doctor</a> |&nbsp;&nbsp;
			<a href="<c:url value='/jsps/Patient/Patient_menu.jsp'/>" target="body">Patient</a> |&nbsp;&nbsp;
			<a href="<c:url value='/jsps/Prescription/Prescription_menu.jsp'/>" target="body">Prescription</a> |&nbsp;&nbsp;
			<a href="<c:url value='/jsps/Bill/Bill_menu.jsp'/>" target="body">Bill</a> |&nbsp;&nbsp;
			<a href="<c:url value='/jsps/Department/Department_menu.jsp'/>" target="body">Department</a> |&nbsp;&nbsp;
			<a href="<c:url value='/jsps/Payment/Payment_menu.jsp'/>" target="body">Payment</a> |&nbsp;&nbsp;
			<a href="<c:url value='/jsps/Insurance/Insurance_menu.jsp'/>" target="body">Insurance</a> |&nbsp;&nbsp;
			<a href="<c:url value='/jsps/Room/Room_menu.jsp'/>" target="body">Room</a> |&nbsp;&nbsp;
			
		</c:otherwise>
	</c:choose>

</div>
  </body>
</html>

