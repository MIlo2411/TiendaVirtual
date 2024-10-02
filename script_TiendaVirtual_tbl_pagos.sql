USE TiendaVirtual;

-- INSERTAR

DELIMITER //
CREATE PROCEDURE procInsertPago(IN v_monto DOUBLE, 
IN v_fecha TEXT, IN v_metodo VARCHAR(45), IN v_pedido_id INT)
BEGIN
    INSERT INTO tbl_pagos (pag_monto, pag_fecha, 
    pag_metodo_pago, tbl_pedidos_ped_id)
    VALUES (v_monto, v_fecha, v_metodo, v_pedido_id);
END//
DELIMITER ;


-- ACTUALIZAR

DELIMITER //
CREATE PROCEDURE procUpdatePago(IN v_id INT, IN v_monto DOUBLE,
 IN v_fecha TEXT, IN v_metodo VARCHAR(45))
BEGIN
    UPDATE tbl_pagos
    SET pag_monto = v_monto, pag_fecha = v_fecha, pag_metodo_pago = v_metodo
    WHERE pag_id = v_id;
END//
DELIMITER ;

-- MOSTRAR

DELIMITER //
CREATE PROCEDURE procShowPagos()
BEGIN
    SELECT * FROM tbl_pagos;
END//
DELIMITER ;

-- ELIMINAR

DELIMITER //
CREATE PROCEDURE procDeletePago(IN v_id INT)
BEGIN
    DELETE FROM tbl_pagos WHERE pag_id = v_id;
END//
DELIMITER ;
