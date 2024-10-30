-- Selecciona todos los atributos de los proveedores
DELIMITER //
CREATE PROCEDURE procShowPedidosDDL()
BEGIN
	select ped_id, ped_fecha, ped_estado, ped_total
    from tbl_pedidos;
END//
DELIMITER ;