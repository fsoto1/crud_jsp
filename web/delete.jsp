<%-- 
    Document   : delete
    Created on : 03-sep-2017, 16:26:52
    Author     : Franco
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete</title>
    </head>
    <body>
        <% 
            String id = request.getParameter("id");            
        %>

      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/cliente"
         user = "root"  password = ""/>
         <sql:update dataSource = "${snapshot}" var = "result">
             DELETE FROM `usuario` WHERE `usuario`.`id` = <%=id%>
        </sql:update> 
        <h1>Datos Eliminados Correctamente</h1>
        <p><a href="index.html">Volver aqui</a></p>

   </body>
</html>
