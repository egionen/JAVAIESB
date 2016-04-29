
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
