-- Creacion de la base de datos

CREATE database TiendaVirtual;
USE  TiendaVirtual;
-- Creación de la tabla tbl_clientes
CREATE TABLE tbl_clientes (
    cli_id INT AUTO_INCREMENT PRIMARY KEY,
    cli_nombre VARCHAR(45),
    cli_apellido VARCHAR(45),
    cli_correo TEXT,
    cli_contrasena TEXT,
    cli_direccion_envio TEXT,
    cli_telefono INT,
    cli_fecha_registro TEXT
);

-- Creación de la tabla tbl_proveedores
CREATE TABLE tbl_proveedores (
    prov_id INT AUTO_INCREMENT PRIMARY KEY,
    prov_nombre VARCHAR(45),
    prov_contacto VARCHAR(45),
    prov_telefono INT,
    prov_direccion TEXT
);

-- Creación de la tabla tbl_categoria
CREATE TABLE tbl_categoria (
    cat_id INT AUTO_INCREMENT PRIMARY KEY,
    cat_nombre VARCHAR(45),
    cat_descripcion VARCHAR(200)
);

-- Creación de la tabla tbl_productos
CREATE TABLE tbl_productos (
    pro_id INT AUTO_INCREMENT PRIMARY KEY,
    pro_nombre VARCHAR(45),
    pro_descripcion VARCHAR(200),
    pro_precio DOUBLE,
    pro_stock INT,
    pro_imagen TEXT,
    tbl_proveedores_prov_id INT,
    tbl_categoria_cat_id INT,
    FOREIGN KEY (tbl_proveedores_prov_id) REFERENCES tbl_proveedores(prov_id),
    FOREIGN KEY (tbl_categoria_cat_id) REFERENCES tbl_categoria(cat_id)
);

-- Creación de la tabla tbl_comentarios
CREATE TABLE tbl_comentarios (
    com_id INT AUTO_INCREMENT PRIMARY KEY,
    com_comentario VARCHAR(200),
    com_calificacion DOUBLE,
    com_fecha TEXT,
    tbl_productos_pro_id INT,
    tbl_clientes_cli_id INT,
    FOREIGN KEY (tbl_productos_pro_id) REFERENCES tbl_productos(pro_id),
    FOREIGN KEY (tbl_clientes_cli_id) REFERENCES tbl_clientes(cli_id)
);

-- Creación de la tabla tbl_carrito
CREATE TABLE tbl_carrito (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    car_cantidad INT,
    tbl_productos_pro_id INT,
    tbl_clientes_cli_id INT,
    FOREIGN KEY (tbl_productos_pro_id) REFERENCES tbl_productos(pro_id),
    FOREIGN KEY (tbl_clientes_cli_id) REFERENCES tbl_clientes(cli_id)
);

-- Creación de la tabla tbl_pedidos
CREATE TABLE tbl_pedidos (
    ped_id INT AUTO_INCREMENT PRIMARY KEY,
    ped_fecha TEXT,
    ped_estado VARCHAR(45),
    ped_total INT,
    tbl_clientes_cli_id INT,
    FOREIGN KEY (tbl_clientes_cli_id) REFERENCES tbl_clientes(cli_id)
);

-- Creación de la tabla tbl_detalles_pedido
CREATE TABLE tbl_detalles_pedido (
    det_id INT AUTO_INCREMENT PRIMARY KEY,
    det_cantidad INT,
    det_precio DOUBLE,
    tbl_pedidos_ped_id INT,
    tbl_productos_pro_id INT,
    FOREIGN KEY (tbl_pedidos_ped_id) REFERENCES tbl_pedidos(ped_id),
    FOREIGN KEY (tbl_productos_pro_id) REFERENCES tbl_productos(pro_id)
);

-- Creación de la tabla tbl_pagos
CREATE TABLE tbl_pagos (
    pag_id INT AUTO_INCREMENT PRIMARY KEY,
    pag_monto DOUBLE,
    pag_fecha TEXT,
    pag_metodo_pago VARCHAR(45),
    tbl_pedidos_ped_id INT,
    FOREIGN KEY (tbl_pedidos_ped_id) REFERENCES tbl_pedidos(ped_id)
);

-- Creación de la tabla tbl_usuarios
CREATE TABLE tbl_usuarios (
    usu_id INT AUTO_INCREMENT PRIMARY KEY,
    usu_nombre VARCHAR(45),
    usu_apellido VARCHAR(45),
    usu_correo VARCHAR(45),
    usu_contrasena TEXT,
    usu_direccion TEXT,
    usu_telefono INT,
    usu_registro TEXT
);