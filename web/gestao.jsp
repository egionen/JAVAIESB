<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%
    Connection con = null;
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaweb", "root", "1122448816");
    Statement stmt = con.createStatement();

    String re = request.getParameter("Penis");

    if (re.equals("Excluir")) {
        String insertStatement = "DELETE FROM pacientes WHERE id =" + request.getParameter("id");
        PreparedStatement prepStmt = con.prepareStatement(insertStatement);
        prepStmt.executeUpdate();
        prepStmt.close();
        response.sendRedirect("listar.jsp");
    }
    if(re.equals("Imprime")){
    
         response.setHeader("Content-Type", "attachment; filename=\"Impressao.doc\"");
        response.setHeader("Content-Enconding","UTF-8");
        response.setContentType("application/msword");
        String nome =   request.getParameter("nome");
        String cpf  =   request.getParameter("cpf");
        String sexo  =   request.getParameter("sexo");
        String nasc  =   request.getParameter("nasc");
        String endereco  =   request.getParameter("endereco");
        String hospital  =   request.getParameter("hospital");
        String setor =   request.getParameter("setor");
        String medico  =   request.getParameter("medico");
        String data  =   request.getParameter("data");
        String diagnostico  =   request.getParameter("diagnostico");
        
            out.println("<html>");
            out.println("<meta charset='utf-7'>");
            out.println("<h3>Prontuario</h3>");
            out.println("Nome : "+nome+"<br/><br/>");
            out.println("CPF : "+cpf+"<br/><br/>");
            out.println("Sexo : "+sexo+"<br/><br/>");
            out.println("Data de Nascimento : "+nasc+"<br/><br/>");
            out.println("Endereço : "+endereco+"<br/><br/>");
            out.println("Hospital : "+hospital+"<br/><br/>");
            out.println("Setor : "+setor+"<br/><br/>");
            out.println("Médico : "+medico+"<br/><br/>");
            out.println("Data : "+data+"<br/><br/>");
            out.println("Diagnóstico : "+diagnostico);
            out.println("</html>");
        
    }
    if(re.equals("Editar")){
        
        out.println("<pre>");
        out.println("<hr/>");
        out.println("<meta charset='UTF-8'>");
        out.println("<form method='POST' action='gestao.jsp'>");
        out.println("<label>Nome : <input type='text' name='nome' value='" + request.getParameter("nome") + "'></label>");
        out.println("<label>CPF : <input type='text' name='cpf' value='" + request.getParameter("cpf") + "'></label>");
        out.println("<label>Sexo : <input type='text' name='sexo' value='" + request.getParameter("sexo") + "'></label>");
        out.println("<label>Data de Nascimento : <input type='text' name='nasc' value='" + request.getParameter("nasc") + "'></label>");
        out.println("<label>Endereco : <input type='text' name='endereco' value='" + request.getParameter("endereco") + "'></label>");
        out.println("<label>Hospital : <input type='text' name='hospital' value='" + request.getParameter("hospital") + "'></label>");
        out.println("<label>Setor : <input type='text' name='setor' value='" + request.getParameter("setor") + "'></label>");
        out.println("<label>Medico : <input type='text' name='medico' value='" + request.getParameter("medico") + "'></label>");
        out.println("<label>Data : <input type='text' name='data' value='" + request.getParameter("data") + "'></label>");
        out.println("<label>Diagnostico : <input type='text' name='diagnostico' value='" + request.getParameter("diagnostico") + "'></label>");
        out.println("<input name='Penis' type='submit' value='Aplicar'/>");
        out.println("</form");
        out.println("<hr/>");
        
    }
    if(re.equals("Aplicar")){
        
        String nome =   request.getParameter("nome");
        String cpf  =   request.getParameter("cpf");
        String sexo  =   request.getParameter("sexo");
        String nasc  =   request.getParameter("nasc");
        String endereco  =   request.getParameter("endereco");
        String hospital  =   request.getParameter("hospital");
        String setor =   request.getParameter("setor");
        String medico  =   request.getParameter("medico");
        String data  =   request.getParameter("data");
        String diagnostico  =   request.getParameter("diagnostico");
            
        
            String insertStatement = "UPDATE pacientes SET nome = ?,cpf = ? ,sexo = ?,nasc  = ?,endereco  = ?,hospital  = ?,medico  = ?,setor  = ?,data  = ?,diagnostico  = ? WHERE id ="+request.getParameter("id");
            PreparedStatement prepStmt = con.prepareStatement(insertStatement);
            prepStmt.setString(1, nome);
            prepStmt.setString(2, cpf);
            prepStmt.setString(3, sexo);
            prepStmt.setString(4, nasc);
            prepStmt.setString(5, endereco);
            prepStmt.setString(6, hospital);
            prepStmt.setString(7, medico);
            prepStmt.setString(8, setor);
            prepStmt.setString(9, data);
            prepStmt.setString(10, diagnostico);
            prepStmt.executeUpdate();
            prepStmt.close();
            response.sendRedirect("listar.jsp");
    
    
    }


%>

