<%-- 
    Document   : index
    Created on : Jul 13, 2016, 9:19:54 AM
    Author     : Me
--%>
<%@include file="../header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="SITE_URL" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
    <body>
        
        
  <div class="container">
  <h2>Admin</h2>
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Login Goes Here</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Login</h4>
        </div>
        <div class="modal-body">
         <form>
            <div>
                
            <label>User Name</label>
            <input type="text" name="username" placeholder="Enter User Name"/>
            </div>
            <div>
            <label>Password</label>
            <input type="password" name="password" placeholder="Enter Password"/>
            </div>
            <input type="hidden" 
			name="${_csrf.parameterName}"
			value="${_csrf.token}" />
            <button>Login</button>
        </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
</div>

        
        
        
        
        
    </body>
</html>
<%@include file="../footer.jsp" %>