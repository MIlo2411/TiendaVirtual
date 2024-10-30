USE TiendaVirtual;

-- INSERTAR
DELIMITER //
CREATE PROCEDURE procInsertProduct(IN v_nombre VARCHAR(45),
 IN v_descripcion VARCHAR(200), IN v_precio DOUBLE,
 IN v_stock INT, IN v_imagen TEXT, IN v_proveedor_id INT, IN v_categoria_id INT)
BEGIN
    INSERT INTO tbl_productos (pro_nombre, pro_descripcion, 
    pro_precio, pro_stock, pro_imagen, 
    tbl_proveedores_prov_id, tbl_categoria_cat_id)
    VALUES (v_nombre, v_descripcion, v_precio, v_stock, 
    v_imagen, v_proveedor_id, v_categoria_id);
END//
DELIMITER ;

-- ACTUALIZAR

DELIMITER //
CREATE PROCEDURE procUpdateProduct(IN v_id INT,
 IN v_nombre VARCHAR(45), IN v_descripcion VARCHAR(200),
 IN v_precio DOUBLE, IN v_stock INT, IN v_imagen TEXT)
BEGIN
    UPDATE tbl_productos
    SET pro_nombre = v_nombre, pro_descripcion = v_descripcion,
    pro_precio = v_precio, pro_stock = v_stock, pro_imagen = v_imagen
    WHERE pro_id = v_id;
END//
DELIMITER ;

-- MOSTRAR

DELIMITER //
CREATE PROCEDURE procShowProducts()
BEGIN
    SELECT * FROM tbl_productos;
END//
DELIMITER ;

-- ELIMINAR

DELIMITER //
CREATE PROCEDURE procDeleteProduct(IN v_id INT)
BEGIN
    DELETE FROM tbl_productos WHERE pro_id = v_id;
END//
DELIMITER ;
-- Selecciona todos los atributos de los proveedores
DELIMITER //
CREATE PROCEDURE procShowProductsDDL()
BEGIN
	select pro_id, pro_nombre, pro_descripcion, pro_precio, pro_stock
    from tbl_productos;
END//
DELIMITER ;

