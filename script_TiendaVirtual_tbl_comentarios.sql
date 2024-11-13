USE TiendaVirtual;
-- INSERTAR
DELIMITER //
CREATE PROCEDURE procInsertComment(IN v_comentario VARCHAR(200), 
IN v_calificacion DOUBLE, IN v_fecha TEXT, IN v_producto_id INT, 
IN v_cliente_id INT)
BEGIN
    INSERT INTO tbl_comentarios (com_comentario, com_calificacion,
    com_fecha, tbl_productos_pro_id, tbl_clientes_cli_id)
    VALUES (v_comentario, v_calificacion, v_fecha, v_producto_id, v_cliente_id);
END//
DELIMITER ;

-- ACTUALIZAR

DELIMITER //
CREATE PROCEDURE procUpdateComment(IN v_id INT, IN v_comentario VARCHAR(200),
 IN v_calificacion DOUBLE, IN v_fecha TEXT)
BEGIN
    UPDATE tbl_comentarios
    SET com_comentario = v_comentario, 
    com_calificacion = v_calificacion, 
    com_fecha = v_fecha
    WHERE com_id = v_id;
END//
DELIMITER ;

-- MOSTRAR
DELIMITER //
CREATE PROCEDURE procShowComments()
BEGIN
    SELECT * FROM tbl_comentarios;
END//
DELIMITER ;


-- ELIMINAR

DELIMITER //
CREATE PROCEDURE procDeleteComment(IN v_id INT)
BEGIN
    DELETE FROM tbl_comentarios WHERE com_id = v_id;
END//
DELIMITER ;
-- Selecciona todos los atributos de los proveedores
DELIMITER //
CREATE PROCEDURE procShowCommentsDDL()
BEGIN
	select com_id, com_comentario, com_calificacion, com_fecha
    from tbl_comentarios;
END//
DELIMITER ;



