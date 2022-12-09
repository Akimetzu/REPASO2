
package model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 *
 * @author admin
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Categoria {
    private int idcategoria;
    private String nombre;
    private int estado;    
    
    public String toString(){
        return this.nombre;
    }
}
