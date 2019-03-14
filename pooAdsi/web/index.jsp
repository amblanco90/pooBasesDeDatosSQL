<%-- 
    Document   : index
    Created on : 13-mar-2019, 16:11:13
    Author     : Ricardo
--%>

<%@page import="java.util.List"%>
<%@page import="com.adsi.modelo.Aprendiz"%>
<%@page import="com.adsi.control.Controlador"%>
<%@page import="com.adsi.control.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADSI POO</title>
    </head>
    <body>
        <%
          String adsi = "ADSI 51";
           
          Controlador  controlador = new Controlador();
          
          controlador.conectar();
          
          List<Aprendiz> lista = controlador.listarAprendices();
          
          
           

        %>
        
        
        <h1><%=adsi%></h1>
        
        <%
          for (Aprendiz item : lista){
           %>   
                <%=item.getDocumento() %> <br>
           <%
          }
        
        %>
        
        
    </body>
</html>
