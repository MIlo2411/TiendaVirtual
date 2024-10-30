-- Selecciona todos los atributos de los proveedores
DELIMITER //
CREATE PROCEDURE procShowCommentsDDL()
BEGIN
	select com_id, com_comentario, com_calificacion, com_fecha
    from tbl_comentarios;
END//
DELIMITER ;