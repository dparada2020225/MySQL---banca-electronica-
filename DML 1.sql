/*DML
	INSERT SELEC UPDATE DELETE*/

USE Proyecto_Banco;
#CLIENTE-USUARIO---------------------------------------------------------------------------------------------------------------
INSERT INTO Cliente(nombres, apellidos,direccion ,telefono,compania_tel,sexo,nacionalidad,dpi_pasaporte)
VALUES ('Denil José', 'Parada Cabrera', 'ciudad vieja sacatepequez','5462-1425','Tigo','Masculino','Guatemalteco',1254365890103);
INSERT INTO Cliente(nombres, apellidos,direccion ,telefono,compania_tel,sexo,nacionalidad,dpi_pasaporte)
VALUES ('Jhon', 'freud', 'Hotel santo domingo','2563-4587','Tigo','Masculino','Estadounidense',256458970);
INSERT INTO Cliente(nombres, apellidos,direccion ,telefono,compania_tel,sexo,nacionalidad,dpi_pasaporte)
VALUES ('Valeria', 'Mosbi', 'Hotel el jaguar','5611-3156','claro','Femenino','Estadounidense',231456125);
INSERT INTO Cliente(nombres, apellidos,direccion ,telefono,compania_tel,sexo,nacionalidad,dpi_pasaporte)
VALUES ('Melanie Sofia', 'Aragon Diaz', 'san Miguel Dueñas','2565-1236','Tigo','Femenino','Guatemalteca',1456125236563);
INSERT INTO Cliente(nombres, apellidos,direccion ,telefono,compania_tel,sexo,nacionalidad,dpi_pasaporte)
VALUES ('Pablo José', 'Peres Gonzales', 'antigua sacatepequez','4565-9878','claro','Masculino','Guatemalteco',4561252315153);


INSERT INTO USUARIO(name_usuario, pass, estado,fecha_creacion,id_clientee)
VALUES ('denilp_', md5(11221122), 'activo', now(), 1);
INSERT INTO USUARIO(name_usuario, pass, estado,fecha_creacion,id_clientee)
VALUES ('jhonf_', md5(12312312), 'inactivo', now(), 2);
INSERT INTO USUARIO(name_usuario, pass, estado,fecha_creacion,id_clientee)
VALUES ('valeriam_', md5(98765432), 'inactivo', now(), 3);
INSERT INTO USUARIO(name_usuario, pass, estado,fecha_creacion,id_clientee)
VALUES ('melanies_', md5(78945612), 'activo', now(), 4);
INSERT INTO USUARIO(name_usuario, pass, estado,fecha_creacion,id_clientee)
VALUES ('pablop_', md5(74185296), 'activo', now(), 5);

#CUENTAS-------------------------------------------------------------------------------------------------

INSERT INTO DEPOSITOS_MONETARIOS(moneda,saldo,fecha,id_clientee)
VALUES('Quetzal',10500,now(),1);
INSERT INTO DEPOSITOS_MONETARIOS(moneda,saldo,fecha,id_clientee)
VALUES('Dolar',5600,now(),3);
INSERT INTO DEPOSITOS_MONETARIOS(moneda,saldo,fecha,id_clientee)
VALUES('Quetzal',10350,now(),5);


INSERT INTO AHORRO(moneda,saldo,fecha,id_clientee)
VALUES('Quetzal',600,now(),1);
INSERT INTO AHORRO(moneda,saldo,fecha,id_clientee)
VALUES('Quetzal',10900,now(),4);
INSERT INTO AHORRO(moneda,saldo,fecha,id_clientee)
VALUES('Quetzal',1560,now(),5);

INSERT INTO TARJETA_CREDITO(moneda,saldo,fecha,id_clientee)
VALUES('Dolar',5000,now(),2); 
INSERT INTO TARJETA_CREDITO(moneda,saldo,fecha,id_clientee)
VALUES('Dolar',5000,now(),3); 
INSERT INTO TARJETA_CREDITO(moneda,saldo,fecha,id_clientee)
VALUES('Quetzal',6000,now(),4); 

INSERT INTO PRESTAMO(moneda,saldo,fecha,id_clientee)
VALUES('Quetzal',3000,now(),1); 
INSERT INTO PRESTAMO(moneda,saldo,fecha,id_clientee)
VALUES('Quetzal',2000,now(),4); 
INSERT INTO PRESTAMO(moneda,saldo,fecha,id_clientee)
VALUES('Quetzal',4000,now(),5); 

INSERT INTO FONDO_PENCION(moneda,saldo,fecha,id_clientee)
VALUES('Quetzal',4000,now(),1);
INSERT INTO FONDO_PENCION(moneda,saldo,fecha,id_clientee)
VALUES('Dolar',2000,now(),3); 
INSERT INTO FONDO_PENCION(moneda,saldo,fecha,id_clientee)
VALUES('Quetzal',4000,now(),4);  


#SERVICIOS-------------------------------------------------------------------------------------------------
INSERT INTO PROVEEDORES(nombre_proveedor,telefono,direccion)
VALUES('TIGO', 45665246, 'Antigua Sacatepequez');
INSERT INTO PROVEEDORES(nombre_proveedor,telefono,direccion)
VALUES('CLARO', 65246456, 'Antigua Sacatepequez');
INSERT INTO PROVEEDORES(nombre_proveedor,telefono,direccion)
VALUES('Tuenti', 66524546, 'Antigua Sacatepequez');
INSERT INTO PROVEEDORES(nombre_proveedor,telefono,direccion)
VALUES('agua', 45665246, 'Ciudad Vieja Sacatepequez');
INSERT INTO PROVEEDORES(nombre_proveedor,telefono,direccion)
VALUES('EEGSA S.A', 24567846, 'Antigua Sacatepequez');
INSERT INTO PROVEEDORES(nombre_proveedor,telefono,direccion)
VALUES('Escuela "X"', 69875632, 'Antigua Sacatepequez');

#select normal de las tablas-------------------------------------------------------------
#cliente_usuario---------------------
SELECT * FROM CLIENTE;
SELECT * FROM USUARIO;

#cuentas-----------------------------
SELECT * FROM DEPOSITOS_MONETARIOS;
SELECT * FROM AHORRO;
SELECT * FROM TARJETA_CREDITO;
SELECT * FROM PRESTAMO;
SELECT* FROM FONDO_PENCION;

#SERVICIOS-----------------------------
SELECT * FROM PROVEEDORES;
SELECT * FROM SERVICIOS;
SELECT * FROM GestionesMayor_mil;


#VISTAS DE TODAS LAS TABLAS -------------------------------------------------------------------------------
SELECT * FROM TABLA_CLIENTE;
SELECT * FROM TABLA_USUARIO;
SELECT * FROM TABLA_DEPOSITOS;
SELECT * FROM TABLA_AHORRO;
SELECT * FROM TABLA_TARJETA;
SELECT * FROM TABLA_PRESTAMO;
SELECT * FROM TABLA_PENCION;
SELECT * FROM TABLA_PROVEEDORES;
SELECT * FROM TABLA_SERVICIOS;
SELECT * FROM HISTORIAL;





#PROCEDIMIENTOS ALMACENADOS---------------------------------------------------------------------------

#-----------INSERTAR PAGO DE SERVISIO-----------------------
#INSERT INTO SERVICIOS(tipo_pago,pago_servicio_de, monto, fecha, telefono, codigo_alumno, id_usuarioo)
CALL INSERTAR_PAGO_SERVICIO ('tarjeta', 'agua','1500',now(),'','',3);

#-----------EDITAR PAGO DE SERVISIO-----------------------
#INSERT INTO SERVICIOS(id_servisio,tipo_pago,pago_servicio_de, monto, fecha, telefono, codigo_alumno, id_usuarioo)
CALL EDITAR_PAGO_SERVICIO (1,'tarjeta', 'luz','500',now(),'','',1);

#-----------ELIMINAR PAGO DE SERVISIO-----------------------
#INSERT INTO SERVICIOS(id_servisio,tipo_pago,pago_servicio_de, monto, fecha, telefono, codigo_alumno, id_usuarioo)
CALL ELIMINAR_PAGO_SERVICIO (1);





