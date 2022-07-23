USE Proyecto_Banco;


#VISTA PARA GESTIONES DE PAGO MAYOR A 1000--------------------------------------------------------------------------
CREATE VIEW GestionesMayor_mil AS
		SELECT 
		id_servicio AS 'id servicio',
        pago_servicio_de AS Servicio,
        monto AS Cantidad,
        fecha AS Fecha,
        concat(c.nombres,' ',c.apellidos) AS Nombre
	FROM SERVICIOS AS s
    INNER JOIN CLIENTE AS c ON c.id_cliente = s.id_clientee
    WHERE monto>=1000;
 #VISTAS DE TODAS LA TABLAS-----------------------------------------------------------------------------------------
 #CLIENTE USUARIO---------------------------------------------------------------------------------------------------
CREATE VIEW TABLA_CLIENTE AS
SELECT 
id_cliente as id,
concat(nombres,' ',apellidos) AS Cliente,
direccion AS Direccion,
telefono as Telefono,
nacionalidad AS Nacionalidad,
dpi_pasaporte AS 'Identificacion personal'
FROM CLIENTE;

CREATE VIEW TABLA_USUARIO AS
SELECT 
concat(c.nombres,' ',c.apellidos) AS Cliente,
name_usuario AS Usuario,
pass AS contraseña,
estado AS Estado,
fecha_creacion AS 'Fecha de creacion'
FROM USUARIO AS u
INNER JOIN CLIENTE AS c ON u.id_clientee = c.id_cliente;

#CUENTAS----------------------------------------------------------------------------------------------------------
CREATE VIEW TABLA_DEPOSITOS AS
SELECT 
c.id_cliente AS id,
concat(c.nombres,' ',c.apellidos) AS Cliente,
moneda AS Moneda,
saldo AS Saldo,
fecha AS 'Fecha de creacion'
FROM  DEPOSITOS_MONETARIOS AS xyz
INNER JOIN CLIENTE AS c ON c.id_cliente = xyz.id_clientee;

CREATE VIEW TABLA_AHORRO AS
SELECT 
c.id_cliente AS id,
concat(c.nombres,' ',c.apellidos) AS Cliente,
moneda AS Moneda,
saldo AS Saldo,
fecha AS 'Fecha de creacion'
FROM  AHORRO AS xyz
INNER JOIN CLIENTE AS c ON c.id_cliente = xyz.id_clientee;

CREATE VIEW TABLA_TARJETA AS
SELECT 
c.id_cliente AS id,
concat(c.nombres,' ',c.apellidos) AS Cliente,
moneda AS Moneda,
saldo AS Saldo,
fecha AS 'Fecha de creacion'
FROM  TARJETA_CREDITO AS xyz
INNER JOIN CLIENTE AS c ON c.id_cliente = xyz.id_clientee;

CREATE VIEW TABLA_PRESTAMO AS
SELECT 
c.id_cliente AS id,
concat(c.nombres,' ',c.apellidos) AS Cliente,
moneda AS Moneda,
saldo AS Saldo,
fecha AS 'Fecha de creacion'
FROM  PRESTAMO AS xyz
INNER JOIN CLIENTE AS c ON c.id_cliente = xyz.id_clientee;

CREATE VIEW TABLA_PENCION AS
SELECT 
c.id_cliente AS id,
concat(c.nombres,' ',c.apellidos) AS Cliente,
moneda AS Moneda,
saldo AS Saldo,
fecha AS 'Fecha de creacion'
FROM  FONDO_PENCION AS xyz
INNER JOIN CLIENTE AS c ON c.id_cliente = xyz.id_clientee;

CREATE VIEW TABLA_PROVEEDORES AS
SELECT
id_proveedores,
nombre_proveedor
FROM PROVEEDORES;

CREATE VIEW TABLA_SERVICIOS AS
SELECT
pago_servicio_de AS Servicio,
concat(c.nombres,' ',c.apellidos) AS Cliente,
fecha AS Fecha
FROM SERVICIOS AS s
INNER JOIN CLIENTE AS c ON c.id_cliente=s.id_clientee




