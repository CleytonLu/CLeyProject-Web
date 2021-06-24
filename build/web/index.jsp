<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Model.InsertDados" %>
<%@page import="Dao.ProdutoDao" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tela Inicia</title>
    </head>
    <body>
        
        <form action="index.jsp" method="post">
            <label>Nome</label><br/>            
            <input type="text" name="nome" /><br/>
            
            <button type="submit">OK</button>
        </form>
        
 <%
     try{
         out.print("<table border='1'>");
         out.print("<tr>");
         out.print("<th>Id</th><th>Nome</th><th>Email</th><th>Senha</th><th>Editar</th><th>Excluir</th>");
         out.print("</tr>");
         ProdutoDao prd = new ProdutoDao();
         if(request.getParameter("nome")== "" || request.getParameter("nome")== null){
             ArrayList<InsertDados> lista = prd.listarTodos();
             for(int num =0;num < lista.size(); num++){
                 out.print("<tr>");
                 
                 out.print("<td>"+lista.get(num).getId()+"</td>");
                 out.print("<td>"+lista.get(num).getNome()+"</td>");
                 out.print("<td>"+lista.get(num).getEmail()+"</td>");
                 out.print("<td>"+lista.get(num).getSenha()+"</td>");
                 out.print("<td>"+lista.get(num).getContato()+"</td>");
                 out.print("<td><a href='alterar.jsp?id="+lista.get(num).getId()+"&nome="+lista.get(num).getNome()+
                 "&email="+lista.get(num).getEmail()+"&senha="+lista.get(num).getSenha()+"&conato="+lista.get(num).getContato()+")>Editar</a></td>");
                  out.print("<td><a href='excluir.jsp?id="+lista.get(num).getId()+"&nome="+lista.get(num).getNome()+
                 "&email="+lista.get(num).getEmail()+")>Excluir</a></td>");
                 
                 out.print("</tr>");
             }}else{  ArrayList<InsertDados> lista = prd.listarTodosDescricao(request.getParameter("nome"));
             for(int num =0;num < lista.size(); num++){
                 out.print("<tr>");
                 
                 out.print("<td>"+lista.get(num).getId()+"</td>");
                 out.print("<td>"+lista.get(num).getNome()+"</td>");
                 out.print("<td>"+lista.get(num).getEmail()+"</td>");
                 out.print("<td>"+lista.get(num).getSenha()+"</td>");
                 out.print("<td>"+lista.get(num).getContato()+"</td>");
                 out.print("<td><a href='alterar.jsp?id="+lista.get(num).getId()+"&nome="+lista.get(num).getNome()+
                 "&email="+lista.get(num).getEmail()+"&senha="+lista.get(num).getSenha()+"&conato="+lista.get(num).getContato()+")>Editar</a></td>");
                  out.print("<td><a href='excluir.jsp?id="+lista.get(num).getId()+"&nome="+lista.get(num).getNome()+
                 "&email="+lista.get(num).getEmail()+")>Excluir</a></td>");
                 
                 out.print("</tr>");}}               
         out.print("</tabe>");                
     }catch(Exception erro){
         throw new RuntimeException("Erro 10: "+erro);
     }
 %>
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
        
        <a href="inserir.jsp">NOVO CADASTRO</a>
        
    </body>
</html>
