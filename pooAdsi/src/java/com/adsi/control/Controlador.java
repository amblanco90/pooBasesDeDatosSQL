/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.adsi.control;

import com.adsi.modelo.Aprendiz;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;




public class Controlador extends Conexion {
    
public LinkedList listarAprendices( ) throws SQLException {
        if (!hayConexion()) {
            throw new SQLException(" No existe conexion abierta ");
        }
        
        
        PreparedStatement pst = null;
        ResultSet rst = null;
        LinkedList lista = new LinkedList();
        try {
            String query;
            query = "select * from aprendices where fk_curso=1";    //Definir la consulta
            pst = con.prepareStatement(query);                      //Prepararla
            rst = pst.executeQuery();                               //Ejecutarla 
            
            while (rst.next()) {
                lista.add(Aprendiz.load(rst));     //Recorre el RS y llena una lista
            }
            System.out.println("El Query " + query );
            
        }  finally {
            if (pst != null) {
                pst.close();
                pst = null;
            }
            if (rst != null) {
                rst.close();
                rst = null;
            }
        }
        return lista;                            //Retorna la lista llena
    }

        
   
    
}
