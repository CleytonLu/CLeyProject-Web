package Dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
    
    public Connection getConexao(){
        try{
            
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost:3307/Cadastro","root","280121");
} catch(Exception erro){ 
    throw new RuntimeException("Erro 1:  "+ erro);
}

   }
}
