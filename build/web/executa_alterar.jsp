<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Model.InsertDados" %>
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
                InsertDados pro = new InsertDados();
                ProdutoDao prd = new ProdutoDao();
                if(request.getParameter("nome").equals("") || request.getParameter("email").equals("")
                        || request.getParameter("senha").equals("") || request.getParameter("conato").equals("")){
                    response.sendRedirect("index.jsp");
                }else{
                    pro.setNome(request.getParameter("nome"));
                    pro.setEmail(request.getParameter("email"));
                    pro.setNome(request.getParameter("seha"));
                    pro.setContato(request.getParameter("contato"));
                    pro.setId(Integer.parseInt(request.getParameter("id")));
                    prd.alterar(pro);
                    response.sendRedirect("index.jps");
                }
                
            }catch(Exception erro){
                throw new RuntimeException("Erro 8: " +erro);
            }
        %>
    </body>
</html>
