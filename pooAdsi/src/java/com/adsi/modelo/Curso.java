/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.adsi.modelo;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Ricardo
 */
public class Curso {
    private int id_cursos;
    private String nombreCurso;
    private String jornada;

    public Curso() {
    }

    public Curso(int id_cursos, String nombreCurso, String jornada) {
        this.id_cursos = id_cursos;
        this.nombreCurso = nombreCurso;
        this.jornada = jornada;
    }

    public int getId_cursos() {
        return id_cursos;
    }

    public void setId_cursos(int id_cursos) {
        this.id_cursos = id_cursos;
    }

    public String getNombreCurso() {
        return nombreCurso;
    }

    public void setNombreCurso(String nombreCurso) {
        this.nombreCurso = nombreCurso;
    }

    public String getJornada() {
        return jornada;
    }

    public void setJornada(String jornada) {
        this.jornada = jornada;
    }
    
       public static Curso load(ResultSet rs)throws SQLException{
        Curso curso = new Curso();
        
        curso.setId_cursos(rs.getInt(1));
        curso.setNombreCurso(rs.getString(2));
        curso.setJornada(rs.getString(3));
        
        return curso;
       }
       
}