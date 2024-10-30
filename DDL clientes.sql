-- Selecciona todos los atributos de los proveedores
DELIMITER //
CREATE PROCEDURE procShowClientsDDL()
BEGIN
	select cli_id, concat(cli_nombre,' ',cli_apellido) as nombre_completo
    from tbl_clientes;
END//
DELIMITER ;