<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%  
    request.getSession(false);
    if(session.getAttribute("user") == null || session.getAttribute("pass") == null){
    
        out.print("<script>if (confirm('Erro na Autenticação'))window.location = 'index.html'; else window.location = 'index.html'</script>");
    }
     
%>
<%
    
    
        Connection con      =   null;
        String nome         =   request.getParameter("nome");
        String cpf          =   request.getParameter("cpf");
        String sexo         =   request.getParameter("sexo");
        String nasc         =   request.getParameter("nasc");
        String endereco     =   request.getParameter("endereco");
        String hospital     =   request.getParameter("hospital");
        String medico       =   request.getParameter("medico");
        String setor        =   request.getParameter("setor");
        String data         =   request.getParameter("data");
        String diagnostico  =   request.getParameter("diagnostico");
        
        

            
        if(!(nome == null)){
           
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaweb", "root", "1122448816");
            String insertStatement = "INSERT INTO pacientes (nome, cpf ,sexo,nasc,endereco,hospital,medico,setor,data,diagnostico)VALUES (?,?,?,?,?,?,?,?,?,?)";
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
            response.sendRedirect("logado.jsp");
        
        }
            
            
      
    

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    
            <h1>Cadastro</h1>
            <form method='POST' action='cadastro.jsp'>
            <label>Nome : <input type='text' name='nome' required/></label><br><br>
            <label>CPF : <input type='text' name='cpf' placeholder="Somente Numeros" maxlength="11" required/></label><br><br>
            <label>Sexo : </label>
            <label>Masculino <input type='radio' name='sexo' value='Masculino'/></label> 
            <label>Feminino <input type='radio' name='sexo' value='Feminino'/></label><br><br>
            <label>Data de Nascimento : <input type='text' name='nasc' required/></label><br><br>
            <label>Endereço : <input type='text' name='endereco' required></label><br><br>   
            <label>Hospital : <input type='text' name='hospital' required/></label><br><br>
            <label>Medico : <input type='text' name='medico' required/></label><br><br>
            <label>Setor : <input type='text' name='setor' required/></label><br><br>
            <label>Data : <input type='text' name='data' required/></label><br><br>
            <label>Diagnostico : <input type='text' name='diagnostico'/></label><br><br>
            <input type='submit' value='Cadastrar'/>
            </form>
        
        
        
    </body>
    
</html>
