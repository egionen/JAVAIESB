<%
    request.getSession(true);
    String user = request.getParameter("user");
    String pass = request.getParameter("pass");
    if (user.equals("admin") && pass.equals("admin")) {
        session.setAttribute("user", user);
        session.setAttribute("pass", pass);
        response.sendRedirect("logado.jsp");
    } else {
        out.print("<script>if (confirm('Erro na Autenticação'))window.location = 'index.html'; else window.location = 'index.html'</script>");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

