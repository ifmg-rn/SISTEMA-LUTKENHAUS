package br.com.loja.dal;
import java.sql.*;

public class ModuloConexao {

    // Método para estabelecer conexão com o BD
    public static Connection conector() {
        java.sql.Connection conexao = null;

        // Chamar o driver
        String driver = "com.mysql.cj.jdbc.Driver";

        // Armazenando infos do banco
        String url = "jdbc:mysql://localhost:3306/dblojaetec";
        String user = "root";
        String password = "";

        // Estabelecer a conexão com o DB
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, password);
            return conexao;
        } catch (Exception e) {
            return null;
        }
    }
}
