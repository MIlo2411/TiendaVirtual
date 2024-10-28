USE TiendaVirtual;
-- INSERTAR
DELIMITER //
CREATE PROCEDURE procInsertDetallePedido(IN v_cantidad INT, IN v_precio DOUBLE, IN v_pedido_id INT, IN v_producto_id INT)
BEGIN
    INSERT INTO tbl_detalles_pedido (det_cantidad, det_precio, tbl_pedidos_ped_id, tbl_productos_pro_id)
    VALUES (v_cantidad, v_precio, v_pedido_id, v_producto_id);
END//
DELIMITER ;

-- ACTUALIZAR
DELIMITER //
CREATE PROCEDURE procUpdateDetallePedido(IN v_id INT, IN v_cantidad INT, IN v_precio DOUBLE)
BEGIN
    UPDATE tbl_detalles_pedido
    SET det_cantidad = v_cantidad, det_precio = v_precio
    WHERE det_id = v_id;
END//
DELIMITER ;

-- MOSTRAR 

DELIMITER //
CREATE PROCEDURE procShowDetallesPedido()
BEGIN
    SELECT * FROM tbl_detalles_pedido;
END//
DELIMITER ;


-- ELIMINAR

DELIMITER //
CREATE PROCEDURE procDeleteDetallePedido(IN v_id INT)
BEGIN
    DELETE FROM tbl_detalles_pedido WHERE det_id = v_id;
END//
DELIMITER ;

-- Selecciona todos los atributos detalles pedidos DDL
DELIMITER //
CREATE PROCEDURE procShowDetallesPedidoDDL()
BEGIN
	select det_id, det_cantidad, det_precio
    from tbl_detalles_pedido;
END//
DELIMITER ;



