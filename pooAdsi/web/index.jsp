<%-- 
    Document   : index
    Created on : 13-mar-2019, 16:11:13
    Author     : Ricardo
--%>

<%@page import="com.adsi.modelo.Curso"%>
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
        <style>


        </style>
    </head>
    <body>
        <%

            Controlador controlador = new Controlador();

            controlador.conectar();

            session.setAttribute("repo", controlador);


        %>

        Crear<br>
        <a href="listar.jsp">Listar Aprendices</a><br>
        Borrar<br>
        Actualizar<br>

        <div class="container">

            <form action="agregar_aprendiz.jsp" method="GET">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label >Documento</label>
                        <input type="text" class="form-control" name="documento" placeholder="...Digite su Documento...">
                    </div>
                    <div class="form-group col-md-6">
                        <label >Nombre Completo </label>
                        <input type="text" class="form-control" name="nombres" placeholder="...Nombres...">
                    </div>

                    <div class="form-group col-md-6">
                        <label >Apellidos</label>
                        <input type="text" class="form-control" name="apellidos" placeholder="...Digite sus Apellidos...">
                    </div>
                    <div class="form-group col-md-6">
                        <label >Edad </label>
                        <input type="number" class="form-control" name="edad" placeholder="...edad...">
                    </div>

                    <div class="form-group col-md-6">
                        <label >Sexo</label>
                        <select name="sexo" required="true" >
                            <option value="M">Masculino</option>
                            <option value="F">Femenino</option>
                            
                        </select>

                    </div>
                    <div class="form-group col-md-6">
                        <label >Curso </label>
                        <input type="text" class="form-control" name="fk_curso" value="1" readonly="true" >
                    </div>



                </div>
                <button type="submit" class="btn btn-primary">Agregar Aprendiz</button>
            </form>



        </div>    



        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>   


    </body>
</html>
