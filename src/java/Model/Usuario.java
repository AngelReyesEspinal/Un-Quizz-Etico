package Model;

import DAO.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Usuario 
{
    //ATRIBUTOS
    private static String nombreActual;
    private String nombre;
    private int puntuacion;
    private String nota;
    static String [] listaRespuestas = new String [10];
    static String [] listaRespuestasQueEran = {"Someter materiales usados o desperdicios a un proceso de transformación o aprovechamiento para que puedan ser nuevamente utilizados.",
        "Introducción de sustancias u otros elementos físicos en un medio que provocan que éste sea inseguro o no apto para su uso.",
        "Verde, amarillo, azul y gris.",
        "Amarillo.",
        "Todo aquello que nos rodea.",
        "Subida de la temperatura de la atmósfera que se produce como resultado de la concentración en la atmósfera de gases, principalmente dióxido de carbono.",
        "Papel, plástico y vidrio.",
        "Verde.",
        "Es un producto obtenido a partir de diferentes materiales de origen orgánico.",
        "Azul."};

    public static String[] getListaRespuestasQueEran() {
        return listaRespuestasQueEran;
    }

    public static void setListaRespuestasQueEran(String[] listaRespuestasQueEran) {
        Usuario.listaRespuestasQueEran = listaRespuestasQueEran;
    }
    
    public static String[] getListaRespuestas() {
        return listaRespuestas;
    }

    public static void setListaRespuestas(String[] listaRespuestas) {
        Usuario.listaRespuestas = listaRespuestas;
    }

    public static String getNombreActual() {
        return nombreActual;
    }

    public static void setNombreActual(String nombreActual) {
        Usuario.nombreActual = nombreActual;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getPuntuacion() {
        return puntuacion;
    }

    public void setPuntuacion(int puntuacion) {
        this.puntuacion = puntuacion;
    }

    public String getNota() {
        return nota;
    }

    public void setNota(String nota) {
        this.nota = nota;
    }
    
    //METODOS
    
    public void calcularPuntuacion(String [] arrayRespuestas)
    {
        for(int i =0; i < arrayRespuestas.length;i++)
        {
            if(arrayRespuestas[i].equals("true"))
            {
                this.puntuacion += 10;
            }
        }
    }
        
    public void guardarRespuestas(String [] arrayRespuestas)
    {
        for(int i = 0 ; i < arrayRespuestas.length ; i++)
        {
            if(arrayRespuestas[i].equals("true"))
            {
                listaRespuestas[i] = "Respondiste bien";
            }else{
                listaRespuestas[i] = "Respondiste mal";
            }
        }
    }
    
    public void obtenerNota()
    {
        if(this.puntuacion == 100){
            this.nota = "¡Excelente, el medio ambiente esta a salvo en tus manos!";
        }else if (this.puntuacion >= 70 && this.puntuacion != 100){
            this.nota = "¡Muy bien, sabes lo suficiente";
        }else if(this.puntuacion < 70){
            this.nota = "Debes preocuparte un poco más por la naturaleza y los metodos para conservarla";
        }
    }
    
    //BASE DE DATOS
    Conexion conexion = new Conexion();
    
    public void enviarDatos() 
    {
        try 
        {   
            Connection cn = conexion.conectar();
            PreparedStatement pst = cn.prepareStatement("INSERT INTO usuarios (nombre, puntuacion, nota) VALUES (?, ?, ?)");
            pst.setString(1, this.nombreActual);
            pst.setInt(2, this.puntuacion);
            pst.setString(3, this.nota);
            pst.executeUpdate();
        } catch (Exception e) {
            System.out.println("El problema es: " + e);
        }
    }
    
    public ArrayList <Usuario> llamarDatos()
    {
        ArrayList <Usuario> lista = new ArrayList();
        try 
        {
            Connection cn = conexion.conectar();
            String sql = "SELECT nombre, puntuacion, nota FROM usuarios";
            PreparedStatement pst = cn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery(sql);
                
            while(rs.next())
            {
              Usuario usuario = new Usuario();
              usuario.setNombre(rs.getString("nombre"));
              usuario.setPuntuacion(rs.getInt("puntuacion"));
              usuario.setNota(rs.getString("nota"));
              lista.add(usuario);
            }
        } 
        catch (SQLException ex) 
        {
            System.out.println("Excepcion " + ex);
        }
        return lista;   
    }   
}
