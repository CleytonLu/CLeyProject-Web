<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserção de Dados</title>
    </head>
    <body>
        
        <form action="executa_inserir.jsp" method="post">
            <!--
            <label>Id:</label><br/>
            <input type="text" name="id"/><br/>
            -->
            
            <label>Nome:</label><br/>
            <input type="text" name="nome"/><br/>
            
            <label>Email:</label><br/>
            <input type="text" name="email"/><br/>
            
            <label>Senha:</label><br/>
            <input type="text" name="senha"/><br/>
            
            <label>Contato:</label><br/>
            <input type="text" name="contato"/><br/>
            
            <button type="submit">
                OK
            </button>                
            
        </form>
        
    </body>
</html>
