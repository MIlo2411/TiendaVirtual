-- Selecciona todos los atributos de los proveedores
DELIMITER //
CREATE PROCEDURE procShowProductsDDL()
BEGIN
	select pro_id, pro_nombre, pro_descripcion, pro_precio, pro_stock
    from tbl_productos;
END//
DELIMITER ;