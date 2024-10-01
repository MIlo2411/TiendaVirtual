USE  TiendaVirtual;
-- Insertar
DELIMITER //
CREATE PROCEDURE procInsertClient(IN v_nombre VARCHAR(45),
 IN v_apellido VARCHAR(45), IN v_correo TEXT, 
 IN v_contrasena TEXT, IN v_direccion TEXT, IN v_telefono INT, IN v_fecha TEXT)
BEGIN
    INSERT INTO tbl_clientes (cli_nombre, cli_apellido,
    cli_correo, cli_contrasena, cli_direccion_envio, cli_telefono,
    cli_fecha_registro)
    VALUES (v_nombre, v_apellido, v_correo, v_contrasena, v_direccion, v_telefono, v_fecha);
END//
DELIMITER ;

-- ACTUALIZAR
DELIMITER //
CREATE PROCEDURE procUpdateClient(IN v_id INT, IN v_nombre VARCHAR(45),
 IN v_apellido VARCHAR(45), IN v_correo TEXT, IN v_contrasena TEXT,
 IN v_direccion TEXT, IN v_telefono INT)
BEGIN
    UPDATE tbl_clientes
    SET cli_nombre = v_nombre, cli_apellido = v_apellido,
    cli_correo = v_correo, cli_contrasena = v_contrasena, 
    cli_direccion_envio = v_direccion, cli_telefono = v_telefono
    WHERE cli_id = v_id;
END//
DELIMITER ;

-- MOSTRAR

DELIMITER //
CREATE PROCEDURE procShowClients()
BEGIN
    SELECT * FROM tbl_clientes;
END//
DELIMITER ;

-- ELIMINAR

DELIMITER //
CREATE PROCEDURE procDeleteClient(IN v_id INT)
BEGIN
    DELETE FROM tbl_clientes WHERE cli_id = v_id;
END//
DELIMITER ;


