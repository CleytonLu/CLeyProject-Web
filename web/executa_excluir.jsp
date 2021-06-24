<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Dao.ProdutoDao" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
                ProdutoDao prd = new ProdutoDao();
                prd.excluir(Integer.parseInt(request.getParameter("id")));
            }catch(Exception erro){
                throw new RuntimeException("Erro 9: " +erro);
            }
        %>
    </body>
</html>
