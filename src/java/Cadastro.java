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
        
        PrintWriter out = response.getWriter();
        
        
        
        
        try{
            
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaweb", "root", "iesb");
            String insertStatement = "INSERT INTO pacientes (nome, cpf ,sexo,nasc,endereco)VALUES (?,?,?,?,?)";
            PreparedStatement prepStmt = con.prepareStatement(insertStatement);
            prepStmt.setString(1, nome);
            prepStmt.setString(2, cpf);
            prepStmt.setString(3, sexo);
            prepStmt.setString(4, nasc);
            prepStmt.setString(5, endereco);
            prepStmt.executeUpdate();
            prepStmt.close();
            HttpSession session = request.getSession(true);
            session.setAttribute("user", nome);
          
          
            
            response.sendRedirect("Prontuario");
            
            
            
            
        } catch(ClassNotFoundException e) {
      out.println("Couldn't load database driver: " + e.getMessage());
    }
    catch(SQLException e) {
      out.println("SQLException caught: " + e.getMessage());
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
