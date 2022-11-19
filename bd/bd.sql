create database bd_asignaciones;

use bd_asignaciones;


CREATE TABLE `t_hardware` (
    `id_hardware` int(11) NOT NULL,
    `nombre` varchar(245),
    `modelo` varchar(245),
    PRIMARY KEY (id_hardware) 
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t_usuario` (
    `id_usuario` int(11) NOT NULL,
    `nombre_usuario` varchar(245),
    `paterno` varchar(245),
    `materno` varchar(245)
    PRIMARY KEY (id_usuario) 
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t_asignaciones` (
    `id_asignacion` int(11) NOT NULL,
    `id_usuario` int(11),
    `id_hardware` int(11),
    PRIMARY KEY (id_asignacion) 
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- *Insertar datos a las tablas --


-- Crecion de vista --
CREATE VIEW hardwareUsuario AS
    SELECT 
        hardware.nombre, usuario.nombre_usuario
    FROM
        t_hardware AS hardware
            INNER JOIN
        t_asignaciones AS asignaciones ON hardware.id_hardware = asignaciones.id_hardware
            INNER JOIN
        t_usuario AS usuario ON asignaciones.id_usuario = usuario.id_usuario;
