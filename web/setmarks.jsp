
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/ejproj"
                           user="root"
                           password="Sanju123"></sql:setDataSource>
        <sql:query var="userscore">
            select marks from login where email='${email}'  
        </sql:query>
        <c:set var="uscore" value="${param.uscore}"/>
      
     <c:forEach  var="user" items="${userscore.rows}">
 
      
 <c:set var="newscore" value="${uscore + user.score}"/>
       <sql:update>
          Update login set marks='${newscore}' where email='${email}'
      </sql:update>
        <c:redirect url="examscreen.jsp"></c:redirect>    
      </c:forEach>
      
    </body>
</html>