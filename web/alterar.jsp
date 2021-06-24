<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form action="executa_alterar.jsp" method="post">
            
            <label>Id:</label><br/>
            <input type="text" name="id" value="<%=request.getParameter("id")%>"/><br/>
            
            
            <label>Nome:</label><br/>
            <input type="text" name="nome" value="<%=request.getParameter("nome")%>"/><br/>
            
            <label>Email:</label><br/>
            <input type="text" name="email" value="<%=request.getParameter("email")%>"/><br/>
            
            <label>Senha:</label><br/>
            <input type="text" name="senha" value="<%=request.getParameter("senha")%>"/><br/>
            
            <label>Contato:</label><br/>
            <input type="text" name="contato" value="<%=request.getParameter("contato")%>"/><br/>
            
            <button type="submit">
                OK
            </button>                
            
        </form>
        
    </body>
</html>
