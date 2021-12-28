
package modeloBD;
import java.sql.*;
import javax.swing.JOptionPane;
/**
 *
 * @author JONY
 */
public class loginDAO {
    conexion con = new conexion();
    Connection conn;
    public String validaus(String nom,String clv){
        String usua,pass = null;
        usua = nom;
        pass = clv;
        //System.out.println("Valores: "+ usua +"-"+ pass);
        con.cargar_parameto_conex(nom,clv);
        String rpta = null;
            try {
                conn = con.conectar_bd();
                if (conn != null) {
                    con.ps = con.conectar_bd().prepareStatement("SELECT verif_exist_usuario('"+nom+"','"+clv+"')as verifica");
                    con.rs = con.ps.executeQuery();
                    con.rs.next();
                    rpta = con.rs.getString("verifica");
                    //con.closeConnection(); 
                } else{
                    JOptionPane.showMessageDialog(null,"USUARIO O CONTRASEÑA INCORRECTOS","Mensaje del sistema",JOptionPane.ERROR_MESSAGE);
                }
            } catch (Exception e) {
                JOptionPane.showMessageDialog(null,"USUARIO O CONTRASEÑA INCORRECTOS","Mensaje del sistema",JOptionPane.WARNING_MESSAGE);
        } 
        return rpta;
    }
    public String grupo_usuario(String nom){
        String rpta=null;
        try {
            conn=con.conectar_bd();
            if (conn != null) {
                con.ps = con.conectar_bd().prepareStatement("SELECT retorna_usuario_grupo('"+nom+"')as grupo");
                con.rs=con.ps.executeQuery();
                con.rs.next();
                rpta=con.rs.getString("grupo");
                //con.closeConnection();
            }
         }catch(SQLException e){
             //System.out.println("Error :"+e);
             JOptionPane.showMessageDialog(null,"No se pudo retornar el grupo del usuario","Mensaje del sistema",JOptionPane.WARNING_MESSAGE);
      }
        return rpta;
    }
    public String retorna_sucursal_us(String nom){
        String rpta = null;
        try {
            conn=con.conectar_bd();
            if (conn != null) {
                con.ps = con.conectar_bd().prepareStatement("SELECT fn_sucursal_user('"+nom+"')as cod_sucursal");
                con.rs = con.ps.executeQuery();
                con.rs.next();
                rpta = con.rs.getString("cod_sucursal");
                //con.closeConnection();
            }
         }catch(SQLException e){
             //System.out.println("Error :"+e);
             JOptionPane.showMessageDialog(null,"No se pudo retornar la sucursal del usuario","Mensaje del sistema",JOptionPane.WARNING_MESSAGE);
      }
        return rpta;
    }
}
