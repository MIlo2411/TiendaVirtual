-- Selecciona todos los atributos de los proveedores
DELIMITER //
CREATE PROCEDURE procShowPagosDDL()
BEGIN
	select pag_id, pag_monto, pag_fecha, pag_metodo_pago
    from tbl_pagos;
END//
DELIMITER ;