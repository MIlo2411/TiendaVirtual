USE  TiendaVirtual;
-- INSERTAR
DELIMITER //
CREATE PROCEDURE procInsertCategory(IN v_nombre VARCHAR(45),
 IN v_descripcion VARCHAR(200))
BEGIN
    INSERT INTO tbl_categoria (cat_nombre, cat_descripcion)
    VALUES (v_nombre, v_descripcion);
END//
DELIMITER ;

-- ACTUALIZAR
DELIMITER //
CREATE PROCEDURE procUpdateCategory(IN v_id INT, 
IN v_nombre VARCHAR(45), IN v_descripcion VARCHAR(200))
BEGIN
    UPDATE tbl_categoria
    SET cat_nombre = v_nombre, cat_descripcion = v_descripcion
    WHERE cat_id = v_id;
END//
DELIMITER ;

-- MOSTRAR
DELIMITER //
CREATE PROCEDURE procShowCategories()
BEGIN
    SELECT * FROM tbl_categoria;
END//
DELIMITER ;

-- ELIMINAR
DELIMITER //
CREATE PROCEDURE procDeleteCategory(IN v_id INT)
BEGIN
    DELETE FROM tbl_categoria WHERE cat_id = v_id;
END//
DELIMITER ;

-- Selecciona todos los atributos de los proveedores DDL
DELIMITER //
CREATE PROCEDURE procShowCategoryDDL()
BEGIN
	select cat_id, cat_nombre
    from tbl_proveedor;
END//
DELIMITER ;
