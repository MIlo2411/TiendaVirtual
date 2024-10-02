USE  TiendaVirtual;
-- INSERTAR
DELIMITER //
CREATE PROCEDURE procInsertUsuario(IN v_nombre VARCHAR(45), 
IN v_apellido VARCHAR(45), IN v_correo VARCHAR(45),
 IN v_contrasena TEXT, 
 IN v_direccion TEXT, IN v_telefono INT, 
 IN v_registro TEXT)
BEGIN
    INSERT INTO tbl_usuarios (usu_nombre, usu_apellido, 
    usu_correo, usu_contrasena, usu_direccion, 
    usu_telefono, usu_registro)
    
    VALUES (v_nombre, v_apellido, v_correo, v_contrasena,
    v_direccion, v_telefono, v_registro);
END//
DELIMITER ;

-- ACTUALIZAR
DELIMITER //
CREATE PROCEDURE procUpdateUsuario(IN v_id INT, IN v_nombre VARCHAR(45), 
IN v_apellido VARCHAR(45), IN v_correo VARCHAR(45), IN v_contrasena TEXT,
 IN v_direccion TEXT, IN v_telefono INT)
BEGIN
    UPDATE tbl_usuarios
    SET usu_nombre = v_nombre,
    usu_apellido = v_apellido, 
    usu_correo = v_correo, 
    usu_contrasena = v_contrasena, 
    usu_direccion = v_direccion, 
    usu_telefono = v_telefono
    
    WHERE usu_id = v_id;
END//
DELIMITER ;

-- MOSTRAR
DELIMITER //
CREATE PROCEDURE procShowUsuarios()
BEGIN
    SELECT * FROM tbl_usuarios;
END//
DELIMITER ;

-- ELIMINAR

DELIMITER //
CREATE PROCEDURE procDeleteUsuario(IN v_id INT)
BEGIN
    DELETE FROM tbl_usuarios WHERE usu_id = v_id;
END//
DELIMITER ;


