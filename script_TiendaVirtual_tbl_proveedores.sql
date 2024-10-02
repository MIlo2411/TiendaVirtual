USE  TiendaVirtual;

-- INSERTAR
DELIMITER //
CREATE PROCEDURE procInsertSupplier(IN v_nombre VARCHAR(45),
 IN v_contacto VARCHAR(45), IN v_telefono INT, IN v_direccion TEXT)
BEGIN
    INSERT INTO tbl_proveedores (prov_nombre, prov_contacto,
    prov_telefono, prov_direccion)
    VALUES (v_nombre, v_contacto, v_telefono, v_direccion);
END//
DELIMITER ;

-- ACTUALIZAR
DELIMITER //
CREATE PROCEDURE procUpdateSupplier(IN v_id INT, IN v_nombre VARCHAR(45),
 IN v_contacto VARCHAR(45), IN v_telefono INT, IN v_direccion TEXT)
BEGIN
    UPDATE tbl_proveedores
    SET prov_nombre = v_nombre, prov_contacto = v_contacto,
    prov_telefono = v_telefono, prov_direccion = v_direccion
    WHERE prov_id = v_id;
END//
DELIMITER ;

-- MOSTRAR 
DELIMITER //
CREATE PROCEDURE procShowSuppliers()
BEGIN
    SELECT * FROM tbl_proveedores;
END//
DELIMITER ;

-- ELIMINAR

DELIMITER //
CREATE PROCEDURE procDeleteSupplier(IN v_id INT)
BEGIN
    DELETE FROM tbl_proveedores WHERE prov_id = v_id;
END//
DELIMITER ;




