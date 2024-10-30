-- Selecciona todos los atributos de los proveedores
DELIMITER //
CREATE PROCEDURE procShowCarritoDDL()
BEGIN
	select car_id, car_cantidad
    from tbl_carrito;
END//
DELIMITER ;