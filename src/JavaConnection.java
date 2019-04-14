import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
public class JavaConnection {
    public static Connection ConnectDB() throws ClassNotFoundException{
        try{
            Class.forName("com.mysql.jdbc.Driver");  
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","");
            return conn;
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null,"Connection Failed");
            Logger.getLogger(JavaConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
        
    }
}
