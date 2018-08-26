/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alejandro
 */
@WebServlet(name = "QuizServlet", urlPatterns = {"/QuizServlet"})
public class QuizServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        request.setCharacterEncoding("UTF-8");
        Usuario usuario = new Usuario();
        
        //RESPUESTAS
        String Respuesta1 = request.getParameter("Pregunta1");
        String Respuesta2 = request.getParameter("Pregunta2");
        String Respuesta3 = request.getParameter("Pregunta3");
        String Respuesta4 = request.getParameter("Pregunta4");
        String Respuesta5 = request.getParameter("Pregunta5");
        String Respuesta6 = request.getParameter("Pregunta6");
        String Respuesta7 = request.getParameter("Pregunta7");
        String Respuesta8 = request.getParameter("Pregunta8");
        String Respuesta9 = request.getParameter("Pregunta9");
        String Respuesta10 = request.getParameter("Pregunta10");
        
        String [] arrayRespuestas = {Respuesta1,Respuesta2,Respuesta3,Respuesta4,Respuesta5,
            Respuesta6,Respuesta7,Respuesta8,Respuesta9,Respuesta10};
        
        usuario.calcularPuntuacion(arrayRespuestas);
        usuario.guardarRespuestas(arrayRespuestas);
        usuario.obtenerNota();
        usuario.enviarDatos();
        
        request.setAttribute("datos", usuario.llamarDatos());
        RequestDispatcher rd = request.getRequestDispatcher("RankJSP.jsp");
        rd.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
