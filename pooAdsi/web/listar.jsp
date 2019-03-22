<%-- 
    Document   : listar
    Created on : 22-mar-2019, 13:12:55
    Author     : Ricardo
--%>

<%@page import="com.adsi.modelo.Curso"%>
<%@page import="com.adsi.control.Controlador"%>
<%@page import="java.util.List"%>
<%@page import="com.adsi.modelo.Aprendiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
   
    <div class="container">    
        
        
        
        <h1><%
        String adsi = "ADSI 51";    
            
        Controlador repo = (Controlador) session.getAttribute("repo");
        
        %>  
            
            <%=adsi%></h1>
        
        <table class="table" style="color:green">
  <thead>
    <tr>
      <th scope="col">ID</th>  
      <th scope="col">Nombres</th>
      <th scope="col">Apellidos</th>
       <th scope="col">Edad</th>
        <th scope="col">Curso</th>
    </tr>
  </thead>
  <tbody>
   
  
 
        
        <%
         List<Aprendiz> lista = repo.findAllAprendices();   
            
          for (Aprendiz item : lista){
           %>   
           <tr>
               <td> <%=item.getId_aprendices() %> </td>
               
               <td> <%=item.getNombres() %> </td>
               
               <td> <%=item.getApellidos() %>  </td>
                
                <td> <%=item.getEdad() %> </td>
                
                <td> <%=item.getFk_curso()%> </td>
                
                <td> <%
                    List<Curso> lista2= repo.findCursoByIdCurso(item.getFk_curso());
                          for (Curso item2 : lista2){
                              %>
                                 <%= item2.getNombreCurso() + " (" + item2.getJornada()+")" %>
                              <%
                          }                    

                %> </td>
           </tr>     
           <%
               
               
          }
        
        %>
         </tbody>
  </table>
         
         <a href="index.jsp"> Regresar al Inicio</a>
         
           </div>      
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
