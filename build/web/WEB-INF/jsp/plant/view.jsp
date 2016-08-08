<%-- 
    Document   : delete
    Created on : Jul 13, 2016, 11:02:22 AM
    Author     : Me
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Page</title>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.0/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
    </head>
    <body>
        <p class="pull-right" style="margin-right: 20px;">Date: <input type="text" id="datepicker"></p>
    </body>
</html>
<h1 style="margin-left: 280px;">See Plant Information</h1>
<c:forEach var="p"  items="${plants}">
    
    <br/>
    <br/>
    <a href="#"><legend style="margin-left: 400px;">${p.plantName}</legend></a>
</c:forEach>
<%@include file="../footer.jsp" %>
