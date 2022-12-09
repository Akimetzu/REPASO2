
package test;

import com.google.gson.Gson;
import config.Conexion;
import dao.CategoriaDao;
import dao.ProductoDao;
import model.Categoria;
import model.Producto;

/**
 *
 * @author admin
 */
public class Test {
static CategoriaDao dao = new CategoriaDao();
static ProductoDao daoprod = new ProductoDao();
static Gson gson = new Gson();
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        //conexion();
        //listar();
        //listar2();
        //crear();
        //editar();
        //eliminar();
        //crear1();
        listar3();
    }
    static void conexion(){
        if(Conexion.getConexion()!=null){
            System.out.println("SI");
        }else{
            System.out.println("NO");
        }
    }
    static void listar(){
        System.out.println(dao.readAll());
    }
    static void listar2(){
        System.out.println(dao.read(1));
    }
    static void crear(){
        System.out.println(dao.create(new Categoria(0,"Detergentes",1)));
    }
    static void editar(){
        System.out.println(dao.update(new Categoria(2,"Carnes",1)));
    }
    static void eliminar(){
        System.out.println(dao.delete(7));
    }
    static void crear1(){
        System.out.println(daoprod.create(new Producto(0, "aaa",2,2,1)));
    }
    static void listar3(){
        System.out.println(daoprod.readAll2());
    }
}
