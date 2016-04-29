<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  
    request.getSession(false);
    if(session.getAttribute("user") == null || session.getAttribute("pass") == null){
    
        out.print("<script>if (confirm('Erro na Autenticação'))window.location = 'index.html'; else window.location = 'index.html'</script>");
    }
     
%>

<html>
    
    <h4>Listar</h4>
    <a href="logado.jsp">Inicio</a>
    <a href="cadastro.jsp">Cadastro</a>
<%
    Connection con = null;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaweb", "root", "1122448816");
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT * FROM pacientes");
    while (rs.next()) {

        out.println("<pre>");
        out.println("<hr/>");
        out.println("<meta charset='UTF-8'>");
        out.println("<form method='POST' action='gestao.jsp'>");
        out.println("<input type='hidden' name='id' value='" + rs.getString("id") + "'>");
        out.println("Nome : " + rs.getString("nome") + "<input type='hidden' name='nome' value='" + rs.getString("nome") + "'>");
        out.println("CPF : " + rs.getString("cpf") + "<input type='hidden' name='cpf' value='" + rs.getString("cpf") + "'>");
        out.println("Sexo : " + rs.getString("sexo") + "<input type='hidden' name='sexo' value='" + rs.getString("sexo") + "'>");
        out.println("Data de Nascimento : " + rs.getString("nasc") + "<input type='hidden' name='nasc' value='" + rs.getString("nasc") + "'>");
        out.println("Endereço : " + rs.getString("endereco") + "<input type='hidden' name='endereco' value='" + rs.getString("endereco") + "'>");
        out.println("Hospital : " + rs.getString("hospital") + "<input type='hidden' name='hospital' value='" + rs.getString("hospital") + "'>");
        out.println("Setor : " + rs.getString("setor") + "<input type='hidden' name='setotr' value='" + rs.getString("setor") + "'>");
        out.println("Médico : " + rs.getString("medico") + "<input type='hidden' name='medico' value='" + rs.getString("medico") + "'>");
        out.println("Data : " + rs.getString("data") + "<input type='hidden' name='data' value='" + rs.getString("data") + "'>");
        out.println("Diagnóstico : " + rs.getString("diagnostico") + "<input type='hidden' name='diagnostico' value='" + rs.getString("diagnostico") + "'>");
        out.println("<input name='Penis' type='submit' value='Imprime'/>");
        out.println("<input name='Penis' type='submit' value='Editar'/>");
        out.println("<input name='Penis' type='submit' value='Excluir'/>");
        out.println("</form");
        out.println("<hr/>");

    }
%>
</html>