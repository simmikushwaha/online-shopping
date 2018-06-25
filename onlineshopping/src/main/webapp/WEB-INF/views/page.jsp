<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:set var="contextRoot"  value="${pageContext.request.contextPath}" />
<spring:url var="css" value="/resources/css/" />
<spring:url var="js" value="/resources/css/js" />
<spring:url var="images" value="/resources/images/" />



<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online Shopping - ${title}</title>
	<script>
	
	window.menu= '${title}';
	
	</script>

    <!-- Bootstrap Core CSS -->
    <link href="${css}/bootstrap.min.css" rel="stylesheet">
    
    
        <!-- Bootstrap Core CSS -->
    <link href="${css}/bootstrap-theme.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${css}/shop-homepage.css" rel="stylesheet">




    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

${{title}}
   <div class="wrapper">

   <%@include file="./shared/navbar.jsp" %>
   
   <div class="content">
   
   <!-- loading home content -->
   <c:if test="${ userclickHome==true}">
   <c:out value="hey there you all are welcome"></c:out>
   <%@include file="home.jsp" %>
   </c:if>
   
   <!-- loading about content -->
    <c:if test="${ userclickAbout==true}">
    <%@include file="about.jsp" %>
   </c:if>
   
    <!-- loading about content -->
    <c:if test="${ userclickcontact==true}">
    <%@include file="contact.jsp" %>
   </c:if>
   
   </div>
   
   <%@include file="./shared/footer.jsp" %>
    <!-- jQuery -->
    <script src="${js}/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${js}/bootstrap.min.js"></script>
    
     <script src="${js}/myapp.js"></script>


</div>

</body>

</html>


