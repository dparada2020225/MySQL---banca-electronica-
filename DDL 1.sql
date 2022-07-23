/* DDL
	CREATE DROP ALTER TRUNCATE*/
drop DATABASE Proyecto_Banco;
CREATE DATABASE Proyecto_Banco;
USE Proyecto_Banco;

CREATE TABLE CLIENTE(
	id_cliente INT AUTO_INCREMENT NOT NULL,
    nombres VARCHAR(40) NOT NULL,
	apellidos VARCHAR(40) NOT NULL,
	direccion VARCHAR (50) NOT NULL,
	telefono VARCHAR(15) NOT NULL,
	compania_tel VARCHAR (15) NOT NULL,
	sexo VARCHAR (15) NOT NULL,
	nacionalidad VARCHAR (20) NOT NULL,
	dpi_pasaporte BIGINT(50) NOT NULL,
	PRIMARY KEY(id_cliente)
);

CREATE TABLE USUARIO(
	id_usuario INT AUTO_INCREMENT NOT NULL,
	name_usuario VARCHAR (15) NOT NULL,
	pass VARCHAR (32) NOT NULL,
	estado VARCHAR (20) NOT NULL,
	fecha_creacion DATETIME  NOT NULL,
    id_clientee INT (4) NOT NULL,
	PRIMARY KEY(id_usuario),
    FOREIGN KEY (id_clientee) REFERENCES CLIENTE(id_cliente)
);

#CUENTAS-------------------------------------------------------------------------------------------------
CREATE TABLE DEPOSITOS_MONETARIOS(
	id_depositos_monetarios INT AUTO_INCREMENT NOT NULL PRIMARY KEY ,
    moneda VARCHAR(10) NOT NULL,
	saldo BIGINT(25) NOT NULL,
	fecha DATETIME NOT NULL,
	id_clientee INT(4) NOT NULL,
	FOREIGN KEY (id_clientee) REFERENCES CLIENTE(id_cliente)
);

CREATE TABLE AHORRO(
	id_ahorro INT AUTO_INCREMENT NOT NULL PRIMARY KEY ,
    moneda VARCHAR(10) NOT NULL,
	saldo BIGINT(25) NOT NULL,
	fecha DATETIME NOT NULL,
	id_clientee INT(4) NOT NULL,
	FOREIGN KEY (id_clientee) REFERENCES CLIENTE(id_cliente)
);

CREATE TABLE TARJETA_CREDITO(
	id_tarjeta INT AUTO_INCREMENT NOT NULL PRIMARY KEY ,
    moneda VARCHAR(10) NOT NULL,
	saldo BIGINT(25) NOT NULL,
	fecha DATETIME NOT NULL,
	id_clientee INT(4) NOT NULL,
	FOREIGN KEY (id_clientee) REFERENCES CLIENTE(id_cliente)
);

CREATE TABLE PRESTAMO(
	id_prestamo INT AUTO_INCREMENT NOT NULL PRIMARY KEY ,
    moneda VARCHAR(10) NOT NULL,
	saldo BIGINT(25) NOT NULL,
	fecha DATETIME NOT NULL,
	id_clientee INT(4) NOT NULL,
	FOREIGN KEY (id_clientee) REFERENCES CLIENTE(id_cliente)
);

CREATE TABLE FONDO_PENCION(
	id_pencion INT AUTO_INCREMENT NOT NULL PRIMARY KEY ,
    moneda VARCHAR(10) NOT NULL,
	saldo BIGINT(25) NOT NULL,
	fecha DATETIME NOT NULL,
	id_clientee INT(4) NOT NULL,
	FOREIGN KEY (id_clientee) REFERENCES CLIENTE(id_cliente)
);


#SERVICIOS Y TRANSACCIONES---------------------------------------------------------------
CREATE TABLE PROVEEDORES(
	id_proveedores INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nombre_proveedor VARCHAR(15) NOT NULL,
    telefono INT(8) NOT NULL,
    direccion VARCHAR(30)
);

CREATE TABLE SERVICIOS(
	id_servicio INT AUTO_INCREMENT NOT NULL PRIMARY KEY , 
    tipo_pago VARCHAR(15) NOT NULL,
    pago_servicio_de VARCHAR(20)NOT NULL,
    monto VARCHAR(4) NOT NULL,
    fecha DATETIME NOT NULL,
    telefono VARCHAR(8),
    codigo_alumno VARCHAR (20),
    id_clientee INT(10) NOT NULL,
    id_proveedoress INT(4),
    FOREIGN KEY (id_clientee) REFERENCES CLIENTE(id_cliente),
    FOREIGN KEY (id_proveedoress) REFERENCES PROVEEDORES(id_proveedores)
    
);


CREATE TABLE HISTORIAL(
	id_historial INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	id_cliente INT(10),
    id_servicio INT(4),
    pago_servicio_de VARCHAR(20),
    fecha DATETIME
);
