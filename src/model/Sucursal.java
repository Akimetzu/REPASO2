
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
public class Sucursal {
    private int idsucursal;
    private String nombre;
    private String direccion;
    private int estado;
}
