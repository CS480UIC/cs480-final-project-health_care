<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="">
    
    <title>body</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <h1>CRUD operations for Department </h1>
    <br>
	<a href="<c:url value='/jsps/Department/Department_create.jsp'/>" target="_parent">Create Department</a> |&nbsp; 
	<a href="<c:url value='/jsps/Department/Department_read.jsp'/>" target="_parent">Read Department</a> |&nbsp;
	<a href="<c:url value='/jsps/Department/Department_update.jsp'/>" target="_parent">Update Department</a> |&nbsp;	 
	<a href="<c:url value='/jsps/Department/Department_delete.jsp'/>" target="_parent">Delete Department</a>	
	    
  </body>
</html>
