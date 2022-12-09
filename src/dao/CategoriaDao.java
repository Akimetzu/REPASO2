
package dao;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import model.Categoria;
import operaciones.Operaciones;

/**
 *
 * @author admin
 */
public class CategoriaDao implements Operaciones<Categoria>{
    private PreparedStatement ps;
    private ResultSet rs;
    private Connection cx;
    @Override
    public int create(Categoria t) {
        String SQL = "insert into categorias (nombre, estado) values(?,1)";
        int x = 0;
        try {
            cx = Conexion.getConexion();
            ps = cx.prepareStatement(SQL);
            ps.setString(1, t.getNombre());
            x = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: "+e);
        }
        return x;
    }

    @Override
    public int update(Categoria t) {
        String SQL = "update categorias set nombre=? where idcategoria=?";
        int x = 0;
        try {
            cx = Conexion.getConexion();
            ps = cx.prepareStatement(SQL);
            ps.setString(1, t.getNombre());
            ps.setInt(2, t.getIdcategoria());
            x = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: "+e);
        }
        return x;        
    }

    @Override
    public int delete(int id) {
        String SQL = "delete from categorias where idcategoria=?";
        int x = 0;
        try {
            cx = Conexion.getConexion();
            ps = cx.prepareStatement(SQL);
            ps.setInt(1, id);
            x = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: "+e);
        }
        return x;  
    }

    @Override
    public Categoria read(int id) {
        String SQL = "select *from categorias where idcategoria=?";
        Categoria cat = new Categoria();
        try {
            cx = Conexion.getConexion();
            ps = cx.prepareStatement(SQL);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                cat.setIdcategoria(rs.getInt("idcategoria"));
                cat.setNombre(rs.getString("nombre"));
                cat.setEstado(rs.getInt("estado"));            
            }
        } catch (SQLException e) {
            System.out.println("Error: "+e);
        }
        return cat;
    }

    @Override
    public List<Categoria> readAll() {
        String SQL = "select *from categorias";
        List<Categoria> lista = new ArrayList<>();        
        try {
            cx = Conexion.getConexion();
            ps = cx.prepareStatement(SQL);
            rs = ps.executeQuery();
            while(rs.next()){
                lista.add(new Categoria(rs.getInt(1),rs.getString(2),rs.getInt(3)));
            }
        } catch (SQLException e) {
            System.out.println("Error: "+e);
        }
        return lista;
    }

    @Override
    public List<Map<String, Object>> readAll2() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
