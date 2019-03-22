<%-- 
    Document   : agregar_aprendiz
    Created on : 22-mar-2019, 13:44:16
    Author     : Ricardo
--%>

<%@page import="com.adsi.control.Controlador"%>
<%@page import="com.adsi.modelo.Aprendiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Aprendiz</title>
        
        
    </head>
    <body>
        <%
         Controlador repo = (Controlador) session.getAttribute("repo");
         
         String documento;
         String nombres;
         String apellidos;
         int edad;
         String sexo;
         int fk_curso;
        
        documento = request.getParameter("documento");
        nombres = request.getParameter("nombres");
        apellidos = request.getParameter("apellidos");
        sexo = request.getParameter("sexo");
        edad =  Integer.parseInt( request.getParameter("edad") ) ;
        fk_curso = Integer.parseInt( request.getParameter("fk_curso") ) ;
         
        Aprendiz nuevoAprendiz = new Aprendiz();
        
        nuevoAprendiz.setDocumento(documento);
        nuevoAprendiz.setNombres(nombres);
        nuevoAprendiz.setApellidos(apellidos);
        nuevoAprendiz.setSexo(sexo);
        nuevoAprendiz.setEdad(edad);
        nuevoAprendiz.setFk_curso(fk_curso);
        
        repo.adicionarAprendiz(nuevoAprendiz);


        %>
        
        
        <h1><%=documento%></h1> <br>
        <h1><%=nombres%></h1> <br>
        <h1><%=apellidos%></h1> <br>
        <h1><%=sexo%></h1> <br>
        <h1><%=edad%></h1> <br>
        <h1><%=fk_curso%></h1> <br>
        
        <a href="listar.jsp"> Ver Listado Nuevo</a>
       
        
    </body>
</html>
