
package dao;

import config.Conexion;
import java.util.List;
import model.Producto;
import operaciones.Operaciones;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author admin
 */
public class ProductoDao implements Operaciones<Producto>{
    private PreparedStatement ps;
    private ResultSet rs;
    private Connection cx;
    @Override
    public int create(Producto t) {
        String SQL = "insert into productos (nombre, precio, cantidad, idcategoria) values(?,?,?,?)";
        int x = 0;
        try {
            cx = Conexion.getConexion();
            ps = cx.prepareStatement(SQL);
            ps.setString(1, t.getNombre());
            ps.setDouble(2, t.getPrecio());
            ps.setInt(3, t.getCantidad());
            ps.setInt(4, t.getIdcantegoria());
            x = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: "+e);
        }
        return x;
    }

    @Override
    public int update(Producto t) {
        //update categorias set nombre=? where idcategoria=?
        String SQL = "update productos  set nombre=?, precio=?, cantidad=?, idcategoria=? where idproducto=?";
        int x = 0;
        try {
            cx = Conexion.getConexion();
            ps = cx.prepareStatement(SQL);
            ps.setString(1, t.getNombre());
            ps.setDouble(2, t.getPrecio());
            ps.setInt(3, t.getCantidad());
            ps.setInt(4, t.getIdcantegoria());
            ps.setInt(5, t.getIdproducto());
            x = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: "+e);
        }
        return x;
    }

    @Override
    public int delete(int id) {
        //update categorias set nombre=? where idcategoria=?
        String SQL = "delete from productos where idproducto=?";
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
    public Producto read(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<Producto> readAll() {
        String SQL = "select *from productos";
        List<Producto> lista = new ArrayList<>();        
        try {
            cx = Conexion.getConexion();
            ps = cx.prepareStatement(SQL);
            rs = ps.executeQuery();
            while(rs.next()){
                 Producto p = new Producto();
                
            }
        } catch (SQLException e) {
            System.out.println("Error: "+e);
        }
        return lista;
    }

    @Override
    public List<Map<String, Object>> readAll2() {
        String SQL = "SELECT c.idcategoria, c.nombre as categoria, p.idproducto, p.nombre as producto, p.precio, p.cantidad FROM productos as p " +
                     "inner join categorias as c on p.idcategoria = c.idcategoria";
        List<Map<String, Object>> lista = new ArrayList<>();        
        try {
            cx = Conexion.getConexion();
            ps = cx.prepareStatement(SQL);
            rs = ps.executeQuery();
            while(rs.next()){
                Map<String, Object> map = new HashMap();
                map.put("idcategoria", rs.getInt("idcategoria"));
                map.put("categoria", rs.getString("categoria"));
                map.put("idproducto", rs.getInt("idproducto"));
                map.put("producto", rs.getString("producto"));
                map.put("precio", rs.getDouble("precio"));
                map.put("cantidad", rs.getInt("cantidad"));
                lista.add(map);
            }
        } catch (SQLException e) {
            System.out.println("Error: "+e);
        }
        return lista;
    }
    
}
