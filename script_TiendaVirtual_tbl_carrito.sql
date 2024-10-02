USE TiendaVirtual;

--  INSERTAR

DELIMITER //
CREATE PROCEDURE procInsertCarrito(IN v_cantidad INT, 
IN v_producto_id INT, IN v_cliente_id INT)
BEGIN
    INSERT INTO tbl_carrito (car_cantidad, tbl_productos_pro_id, tbl_clientes_cli_id)
    VALUES (v_cantidad, v_producto_id, v_cliente_id);
END//
DELIMITER ;


-- ACTUALIZAR

DELIMITER //
CREATE PROCEDURE procUpdateCarrito(IN v_id INT, IN v_cantidad INT)
BEGIN
    UPDATE tbl_carrito
    SET car_cantidad = v_cantidad
    WHERE car_id = v_id;
END//
DELIMITER ;


-- MOSTRAR

DELIMITER //
CREATE PROCEDURE procShowCarrito()
BEGIN
    SELECT * FROM tbl_carrito;
END//
DELIMITER ;

-- ELIMINAR
DELIMITER //
CREATE PROCEDURE procDeleteCarrito(IN v_id INT)
BEGIN
    DELETE FROM tbl_carrito WHERE car_id = v_id;
END//
DELIMITER ;

