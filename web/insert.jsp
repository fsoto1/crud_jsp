<%-- 
    Document   : insert
    Created on : 03-sep-2017, 16:27:10
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
        <title>Insert</title>
    </head>
    <body>
        <% 
            String nombre = request.getParameter("nombre");
            String ape_pat = request.getParameter("ape_pat");
            String ape_mat = request.getParameter("ape_mat");
            String celular = request.getParameter("cel");
            String email = request.getParameter("email");
            String user = request.getParameter("user");
            String pass = request.getParameter("pass");
            
        %>

      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/cliente"
         user = "root"  password = ""/>
         <sql:update dataSource = "${snapshot}" var = "result">
             INSERT INTO `usuario` (`id`, `nombre`, `apellido_pat`, `apellido_mat`, `celular`, `email`, `user`, `pass`) 
             VALUES (NULL, '<%=nombre%>', '<%=ape_pat%>', '<%=ape_mat%>', '<%=celular%>', '<%=email%>', '<%=user%>', '<%=pass%>')
        </sql:update> 
        <h1>Datos Guardados correctamente</h1>
        <p><a href="index.html">Volver aqui</a></p>

   </body>
</html>
