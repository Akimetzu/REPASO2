
package model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 *
 * @author admin
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Producto {
    private int idproducto;
    private String nombre;
    private double precio;
    private int cantidad;
    private int idcantegoria;
}
