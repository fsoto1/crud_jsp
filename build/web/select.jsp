<%-- 
    Document   : crud
    Created on : 03-sep-2017, 13:52:50
    Author     : Franco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>
    <body>
      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/cliente"
         user = "root"  password = ""/>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from usuario;
      </sql:query>
 
         <table class="table table-inverse table-striped table-hover table-bordered table-sm table-responsive">
         <tr>
            <th scope="row">ID</th>
            <th>Nombre</th>
            <th>Apellido P</th>
            <th>Apellido M</th>
            <th>Celular</th>
            <th>Email</th>
            <th>User</th>
            <th>Pass</th>
            
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.id}"/></td>
               <td><c:out value = "${row.nombre}"/></td>
               <td><c:out value = "${row.apellido_pat}"/></td>
               <td><c:out value = "${row.apellido_mat}"/></td>
               <td><c:out value = "${row.celular}"/></td>
               <td><c:out value = "${row.email}"/></td>
               <td><c:out value = "${row.user}"/></td>
               <td><c:out value = "${row.pass}"/></td>
            </tr>
         </c:forEach>
      </table>
 
   </body>
</html>
