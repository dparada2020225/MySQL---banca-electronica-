#PROCEDIMIENTO ALMACENADOS

#INSERTAR PAGO DE SERVICIO
USE `proyecto_banco`;
DROP procedure IF EXISTS `INSERTAR_PAGO_SERVIVIO`;
DELIMITER $$
USE `proyecto_banco`$$
CREATE PROCEDURE INSERTAR_PAGO_SERVICIO ( IN tipo_pago_ VARCHAR(15),
										  IN pago_servicio_de_ VARCHAR(20),
										  IN monto_ VARCHAR(4),
										  IN fecha_ DATETIME,
										  IN telefono_ VARCHAR(8),
										  IN codigo_alumno_ VARCHAR(20),
										  IN id_cliente_ INT(10))
BEGIN
    INSERT INTO SERVICIOS(tipo_pago,pago_servicio_de, monto, fecha, telefono, codigo_alumno, id_clientee)
    VALUES(tipo_pago_, pago_servicio_de_, monto_, fecha_, telefono_, codigo_alumno_, id_cliente_);
END$$


# EDITAR PAGO DE SERVISIO---------------------------------------------------------

USE `proyecto_banco`;
DROP procedure IF EXISTS `EDITAR_PAGO_SERVIVIO`;
DELIMITER $$
USE `proyecto_banco`$$
CREATE PROCEDURE EDITAR_PAGO_SERVICIO ( IN id_servicio_ INT,
										  IN tipo_pago_ VARCHAR(15),
										  IN pago_servicio_de_ VARCHAR(20),
										  IN monto_ VARCHAR(4),
										  IN fecha_ DATETIME,
										  IN telefono_ VARCHAR(8),
										  IN codigo_alumno_ VARCHAR(20),
										  IN id_cliente_ INT(10))
BEGIN
    UPDATE SERVICIOS SET tipo_pago=tipo_pago_, pago_servicio_de=pago_servicio_de_, monto=monto_, 
						fecha=fecha_, telefono=telefono_, codigo_alumno=codigo_alumno_, id_clientee=id_cliente_
WHERE id_servicio=id_servicio_;
END$$

# Eliminar PAGO DE SERVISIO---------------------------------------------------------

USE `proyecto_banco`;
DROP procedure IF EXISTS `EDITAR_PAGO_SERVIVIO`;
DELIMITER $$
USE `proyecto_banco`$$
CREATE PROCEDURE ELIMINAR_PAGO_SERVICIO ( IN id_servicio_ INT)
BEGIN
DELETE FROM SERVICIOS WHERE id_servicio=id_servicio_;
END$$