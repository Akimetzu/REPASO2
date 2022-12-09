
package operaciones;

import java.util.List;
import java.util.Map;

/**
 *
 * @author admin
 */
public interface Operaciones<T> {
    int create(T t);
    int update(T t);
    int delete(int id);
    T read(int id);
    List<T> readAll();  
    //método para consultas de difentes tablas
    List<Map<String, Object>> readAll2();
}
