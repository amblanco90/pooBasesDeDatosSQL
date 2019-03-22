/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.adsi.control;

import com.adsi.modelo.Aprendiz;
import com.adsi.modelo.Curso;
import java.io.IOException;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;




public class Controlador extends Conexion {
    
public LinkedList findAllAprendices( ) throws SQLException {
        if (!hayConexion()) {
            throw new SQLException(" No existe conexion abierta ");
        }
        
        
        PreparedStatement pst = null;
        ResultSet rst = null;
        LinkedList lista = new LinkedList();
        try {
            String query;
            query = "select * from aprendices order by id_aprendices desc ";    //Definir la consulta
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


public LinkedList findAprendicesCurso(int p_curso ) throws SQLException {
        if (!hayConexion()) {
            throw new SQLException(" No existe conexion abierta ");
        }
        
        
        PreparedStatement pst = null;
        ResultSet rst = null;
        LinkedList lista = new LinkedList();
        try {
            String query;
            query = "select * from aprendices where fk_curso = ?  ";    //Definir la consulta
            pst = con.prepareStatement(query);                      //Prepararla
            pst.setInt(1, p_curso);
            
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

public LinkedList findCursoByIdCurso(int p_curso ) throws SQLException {
        if (!hayConexion()) {
            throw new SQLException(" No existe conexion abierta ");
        }
        
        
        PreparedStatement pst = null;
        ResultSet rst = null;
        LinkedList lista = new LinkedList();
        try {
            String query;
            query = "select * from cursos where id_cursos = ? ";    //Definir la consulta
            pst = con.prepareStatement(query);                      //Prepararla
            pst.setInt(1, p_curso);
            
            rst = pst.executeQuery();                               //Ejecutarla 
            
            
            while (rst.next()) {
                lista.add(Curso.load(rst));     //Recorre el RS y llena una lista
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
 //Select * from  ;
  
public LinkedList findAprendicesCursoEdad(int p_curso,int edad ) throws SQLException {
        if (!hayConexion()) {
            throw new SQLException(" No existe conexion abierta ");
        }
        
        
        PreparedStatement pst = null;
        ResultSet rst = null;
        LinkedList lista = new LinkedList();
        try {
            String query;
            query = "Select * from aprendices a where a.fk_curso = ? and edad> ? ";    //Definir la consulta
            pst = con.prepareStatement(query);                      //Prepararla
            pst.setInt(1, p_curso);
            pst.setInt(2, edad);
            
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
   
public void adicionarAprendiz(Aprendiz aprendiz) throws SQLException, IOException {
        if (!hayConexion()) {
            throw new SQLException("SIN CONEXION");
        }
        PreparedStatement pst = null;
        ResultSet rst = null;
        try {
            pst = con.prepareStatement("INSERT INTO `aprendices` "
                    + "(`documento`, `nombres`, `apellidos`, `edad`, `sexo`, `fk_curso`) "
                    + " VALUES (?, ?, ?, ?, ?, ?);  ");
                    pst.setString(1, aprendiz.getDocumento());
                    pst.setString(2, aprendiz.getNombres());
                    pst.setString(3, aprendiz.getApellidos());
                    pst.setInt(4, aprendiz.getEdad());
                    pst.setString(5, aprendiz.getSexo());
                    pst.setInt(6, aprendiz.getFk_curso());
           
            pst.execute();

        }catch(Exception Ex){
            System.out.println("Error en AdicionarDato : \n"+Ex);
        } finally {
            if (pst != null) {
                pst.close();
            }
            if (rst != null) {
                rst.close();
            }
        }
    }


}
