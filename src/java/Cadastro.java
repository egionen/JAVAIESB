/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 14214290002
 */
@WebServlet(urlPatterns = {"/Cadastro"})
public class Cadastro extends HttpServlet {

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
        
        Connection con = null;
        
        String nome = request.getParameter("nome");
        String cpf = request.getParameter("cpf");
        String sexo = request.getParameter("sexo");
        String nasc = request.getParameter("nasc");
        String endereco = request.getParameter("endereco");
        
        try(PrintWriter out = response.getWriter()){
        
            out.println("<label>Nome : <input type='text' name='nome'/></label><br><br>");
            out.println("<label>CPF : <input type='text' name='cpf'/></label><br><br>");    
            out.println("<label>Sexo : </label>");    
            out.println("<label>Masculino <input type='radio' name='sexo' value='Masculino'/></label>");    
            out.println("<label>Feminino <input type='radio' name='sexo' value='Feminino'/></label><br><br>");    
            out.println("<label>Data de Nascimento : <input type='text' name='nasc'/></label><br><br>");    
            out.println("<label>Endereço : <input type='text' name='endereco'></label><br><br>");    
            out.println("<input type='submit' value='Cadastrar'/>");    
            out.println("<label>CPF : <input type='text' name='cpf'/></label><br><br>");    
            
        }
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
