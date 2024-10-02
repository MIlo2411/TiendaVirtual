USE TiendaVirtual;

-- INSERTAR

DELIMITER //
CREATE PROCEDURE procInsertPedido(IN v_fecha TEXT, IN v_estado VARCHAR(45), IN v_total INT, IN v_cliente_id INT)
BEGIN
    INSERT INTO tbl_pedidos (ped_fecha, ped_estado, ped_total, tbl_clientes_cli_id)
    VALUES (v_fecha, v_estado, v_total, v_cliente_id);
END//
DELIMITER ;

-- ACTUALIZAR

DELIMITER //
CREATE PROCEDURE procUpdatePedido(IN v_id INT, IN v_estado VARCHAR(45), IN v_total INT)
BEGIN
    UPDATE tbl_pedidos
    SET ped_estado = v_estado, ped_total = v_total
    WHERE ped_id = v_id;
END//
DELIMITER ;


-- MOSTRAR
DELIMITER //
CREATE PROCEDURE procShowPedidos()
BEGIN
    SELECT * FROM tbl_pedidos;
END//
DELIMITER ;


-- ELIMINAR

DELIMITER //
CREATE PROCEDURE procDeletePedido(IN v_id INT)
BEGIN
    DELETE FROM tbl_pedidos WHERE ped_id = v_id;
END//
DELIMITER ;


