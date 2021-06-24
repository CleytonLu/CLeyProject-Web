package Dao;

import Model.InsertDados;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ProdutoDao {
    
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<InsertDados> lista = new ArrayList<>();
    
    public ProdutoDao(){
        conn = new ConnectionFactory().getConexao();
    }
    
    public void inserir(InsertDados dados){
        String sql = "INSERT INTO dado(nome, email, senha, contato) VALUES(?,?,?,?)";
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, dados.getNome());
            stmt.setString(2, dados.getEmail());
            stmt.setDouble(3, dados.getSenha());
            stmt.setString(4, dados.getContato());
            stmt.execute();
            stmt.close();
        }catch(Exception erro){
          throw new RuntimeException("Erro 2: "+ erro);  
        }
    }
    
       public void alterar(InsertDados dados){
        String sql = "UPDATE dados SET WHERE id=?, nome = ?, email=?, senha= ?, contato=?";
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, dados.getNome());
            stmt.setString(2, dados.getEmail());
            stmt.setDouble(3, dados.getSenha());
            stmt.setString(4, dados.getContato());
            stmt.setInt(5, dados.getId());
            stmt.execute();
            stmt.close();
            
        }catch(Exception erro){
          throw new RuntimeException("Erro 3: "+ erro);  
        }
    }
       
          public void excluir(int delete){
        String sql = "DELETE from dados WHERE id = " +delete;
        try{
            st = conn.createStatement();
            st.execute(sql);
            st.close();
        }catch(Exception erro){
          throw new RuntimeException("Erro 4: "+ erro);  
        }
    }
          public ArrayList<InsertDados> listarTodos(){
              String sql = "SELECT * FROM dados";
              try{
                  st = conn.createStatement();
                  rs = st.executeQuery(sql);
                  while(rs.next()){
                      InsertDados dados = new InsertDados();
                      dados.setNome(rs.getString("nome"));
                      dados.setEmail(rs.getString("email"));
                      dados.setSenha(rs.getDouble("senha"));
                      dados.setContato(rs.getString("contato"));
                      lista.add(dados);
                  }
              }catch(Exception erro){
                  throw new RuntimeException("Erro 5: " +erro);
              }
              return lista;
          }
          
             public ArrayList<InsertDados> listarTodosDescricao(String desc){
              String sql = "SELECT * FROM dados WHERE nome LIKE  '%"+desc+"%' ";
              try{
                  st = conn.createStatement();
                  rs = st.executeQuery(sql);
                  while(rs.next()){
                      InsertDados dados = new InsertDados();
                      dados.setNome(rs.getString("nome"));
                      dados.setEmail(rs.getString("email"));
                      dados.setSenha(rs.getDouble("senha"));
                      dados.setContato(rs.getString("contato"));
                      lista.add(dados);
                  }
              }catch(Exception erro){
                  throw new RuntimeException("Erro 6: " +erro);
              }
              return lista;
          }
          
}
