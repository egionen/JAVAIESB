<%@page import="javax.jms.Session"%>
<%  
    request.getSession(false);
    if(session.getAttribute("user") == null || session.getAttribute("pass") == null){
    
        out.print("<script>if (confirm('Erro na Autenticação'))window.location = 'index.html'; else window.location = 'index.html'</script>");
    }
     
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <h1>Ferramentas</h1>
        <a href="listar.jsp">Listar</a><br>
        <a href="cadastro.jsp">Cadastro</a>
    </body>
</html>
