/*
SQLyog Community v12.2.6 (32 bit)
MySQL - 5.7.14-log : Database - alenha_carbon
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`alenha_carbon` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `alenha_carbon`;

/*Table structure for table `acceso_grupo` */

DROP TABLE IF EXISTS `acceso_grupo`;

CREATE TABLE `acceso_grupo` (
  `cod_grupo` varchar(15) NOT NULL,
  `cod_modulo` varchar(5) NOT NULL,
  `desc_formulario` varchar(10) NOT NULL,
  `puede_insert` varchar(1) DEFAULT NULL,
  `puede_modif` varchar(1) DEFAULT NULL,
  `puede_borrar` varchar(1) DEFAULT NULL,
  `puede_consul` varchar(1) DEFAULT NULL,
  `mostrar_en_menu` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`cod_grupo`,`cod_modulo`,`desc_formulario`),
  KEY `INDEX_COD_GRUPO` (`cod_grupo`),
  KEY `INDEX_COD_MODULO` (`cod_modulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `acceso_grupo` */

insert  into `acceso_grupo`(`cod_grupo`,`cod_modulo`,`desc_formulario`,`puede_insert`,`puede_modif`,`puede_borrar`,`puede_consul`,`mostrar_en_menu`) values 
('ADMIN','AJ','FORMACCGRU','S','S','S','S','S'),
('ADMIN','AJ','FORMBACKUP','S','S','S','S','S'),
('ADMIN','AJ','FORMDESCON','S','S','S','S','S'),
('ADMIN','AJ','FORMMENUPR','S','S','S','S','S'),
('ADMIN','AJ','FORMSALIR','S','S','S','S','S'),
('ADMIN','AJ','FORMSERCOM','S','S','S','S','S'),
('ADMIN','AJ','FORMTALONA','S','S','S','S','S'),
('ADMIN','AJ','FORMTALUSU','S','S','S','S','S'),
('ADMIN','AJ','FORMUSUARI','S','S','S','S','S'),
('ADMIN','AY','FORMCAMPAS','S','S','S','S','S'),
('ADMIN','CC','FORMCIECAJ','S','S','S','S','S'),
('ADMIN','CC','FORMCLIENT','S','S','S','S','S'),
('ADMIN','CC','FORMCOSACL','S','S','S','S','S'),
('ADMIN','CC','FORMFORMCO','S','S','S','S','S'),
('ADMIN','CC','FORMHBCJCO','S','S','S','S','S'),
('ADMIN','CC','FORMPERSON','S','S','S','S','S'),
('ADMIN','CC','FORMRECIBO','S','S','S','S','S'),
('ADMIN','CC','REPEXTCLI1','S','S','S','S','S'),
('ADMIN','CC','REPMOVCAJ1','S','S','S','S','S'),
('ADMIN','CC','REPRECEMI1','S','S','S','S','S'),
('ADMIN','CC','REP_COB','S','S','S','S','S'),
('ADMIN','CM','FORMFACCOM','S','S','S','S','S'),
('ADMIN','CP','FORMCOSAPR','S','S','S','S','S'),
('ADMIN','CP','FORMFORMPA','S','S','S','S','S'),
('ADMIN','CP','FORMPROVEE','S','S','S','S','S'),
('ADMIN','ST','FORMAJUSTK','S','S','S','S','S'),
('ADMIN','ST','FORMARTICU','S','S','S','S','S'),
('ADMIN','ST','FORMCATART','S','S','S','S','S'),
('ADMIN','ST','FORMCOEXAR','S','S','S','S','S'),
('ADMIN','ST','FORMMARART','S','S','S','S','S'),
('ADMIN','ST','FORMUNMEAR','S','S','S','S','S'),
('ADMIN','ST','REPEXISART','S','S','S','S','S'),
('ADMIN','ST','REP_STK','S','S','S','S','S'),
('ADMIN','VT','FORMANCOVE','S','S','S','S','S'),
('ADMIN','VT','FORMCNCMVE','S','S','S','S','S'),
('ADMIN','VT','FORMCONDVE','S','S','S','S','S'),
('ADMIN','VT','FORMFACTUR','S','S','S','S','S'),
('ADMIN','VT','REPCOMPEM1','S','S','S','S','S'),
('ADMIN','VT','REP_VENT','S','S','S','S','S'),
('GERENCIA','AJ','FORMDESCON','S','S','S','S','S'),
('GERENCIA','AY','FORMCAMPAS','S','S','S','S','S'),
('GERENCIA','CC','FORMCLIENT','S','S','S','S','S'),
('GERENCIA','CC','FORMCOSACL','S','S','S','S','S'),
('GERENCIA','CC','FORMFORMCO','S','S','S','S','S'),
('GERENCIA','CC','FORMHBCJCO','S','S','S','S','S'),
('GERENCIA','CC','FORMPERSON','S','S','S','S','S'),
('GERENCIA','CC','FORMRECIBO','S','S','S','S','S'),
('GERENCIA','CC','REPEXTCLI1','S','S','S','S','S'),
('GERENCIA','CC','REPMOVCAJ1','S','S','S','S','S'),
('GERENCIA','CC','REPRECEMI1','S','S','S','S','S'),
('GERENCIA','CC','REP_COB','S','S','S','S','S'),
('VENTAS','AJ','FORMBACKUP','S','S','S','S','S'),
('VENTAS','AJ','FORMDESCON','S','S','S','S','S'),
('VENTAS','AJ','FORMMENUPR','S','S','S','S','S'),
('VENTAS','AJ','FORMSALIR','S','S','S','S','S'),
('VENTAS','AY','FORMCAMPAS','S','S','S','S','S'),
('VENTAS','CC','FORMCIECAJ','S','S','S','S','S'),
('VENTAS','CC','FORMCLIENT','S','S','S','S','S'),
('VENTAS','CC','FORMCOSACL','S','S','S','S','S'),
('VENTAS','CC','FORMFORMCO','S','S','S','S','S'),
('VENTAS','CC','FORMHBCJCO','S','S','S','S','S'),
('VENTAS','CC','FORMPERSON','S','S','S','S','S'),
('VENTAS','CC','FORMRECIBO','S','S','S','S','S'),
('VENTAS','CC','REPEXTCLI1','S','S','S','S','S'),
('VENTAS','CC','REPMOVCAJ1','S','S','S','S','S'),
('VENTAS','CC','REPRECEMI1','S','S','S','S','S'),
('VENTAS','CC','REP_COB','S','S','S','S','S'),
('VENTAS','CM','FORMFACCOM','S','S','S','S','S'),
('VENTAS','CP','FORMCOSAPR','S','S','S','S','S'),
('VENTAS','CP','FORMPROVEE','S','S','S','S','S'),
('VENTAS','ST','FORMAJUSTK','S','S','S','S','S'),
('VENTAS','ST','FORMARTICU','S','S','S','S','S'),
('VENTAS','ST','FORMCATART','S','S','S','S','S'),
('VENTAS','ST','FORMCOEXAR','S','S','S','S','S'),
('VENTAS','ST','FORMMARART','S','S','S','S','S'),
('VENTAS','ST','FORMUNMEAR','S','S','S','S','S'),
('VENTAS','ST','REPEXISART','S','S','S','S','S'),
('VENTAS','ST','REP_STK','S','S','S','S','S'),
('VENTAS','VT','FORMANCOVE','S','S','S','S','S'),
('VENTAS','VT','FORMCNCMVE','S','S','S','S','S'),
('VENTAS','VT','FORMFACTUR','S','S','S','S','S'),
('VENTAS','VT','REPCOMPEM1','S','S','S','S','S'),
('VENTAS','VT','REP_VENT','S','S','S','S','S');

/*Table structure for table `acceso_us_program` */

DROP TABLE IF EXISTS `acceso_us_program`;

CREATE TABLE `acceso_us_program` (
  `cod_sucursal` varchar(5) NOT NULL,
  `cod_programa` varchar(15) NOT NULL,
  `cod_usuario` varchar(20) NOT NULL,
  `elemento_ref` varchar(30) NOT NULL,
  `ejecutar` varchar(1) DEFAULT NULL,
  `observacion` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`cod_sucursal`,`cod_programa`,`cod_usuario`,`elemento_ref`),
  KEY `FK_ACC_PROG_USUARIO` (`cod_usuario`),
  CONSTRAINT `FK_ACC_PROG_SUCURSAL` FOREIGN KEY (`cod_sucursal`) REFERENCES `sucursal` (`cod_sucursal`),
  CONSTRAINT `FK_ACC_PROG_USUARIO` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `acceso_us_program` */

insert  into `acceso_us_program`(`cod_sucursal`,`cod_programa`,`cod_usuario`,`elemento_ref`,`ejecutar`,`observacion`) values 
('01','FORMFACTUR','JTORRES','COLUM_DESCUENTO','S','Control de monto de descuento en facturacion'),
('01','FORMFACTUR','JTORRES','COLUM_PRECIO','S','Control de precio en facturacion');

/*Table structure for table `articulo` */

DROP TABLE IF EXISTS `articulo`;

CREATE TABLE `articulo` (
  `cod_articulo` varchar(100) NOT NULL,
  `cod_un_med` varchar(5) NOT NULL,
  `nro_lote` varchar(100) NOT NULL,
  `desc_articulo` varchar(100) NOT NULL,
  `cod_proveedor` int(10) DEFAULT NULL,
  `cod_marca` varchar(10) DEFAULT NULL,
  `cod_categoria` varchar(10) DEFAULT NULL,
  `precio_compra` int(10) DEFAULT NULL,
  `precio_venta` int(10) DEFAULT NULL,
  `cantidad` int(10) DEFAULT NULL,
  `cod_iva` varchar(10) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  `maneja_stock` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`cod_articulo`,`cod_un_med`,`nro_lote`),
  KEY `INDEX_COD_PROVEEDOR` (`cod_proveedor`),
  KEY `INDEX_COD_MARCA` (`cod_marca`),
  KEY `INDEX_COD_CATEGORIA` (`cod_categoria`),
  KEY `INDEX_COD_IVA` (`cod_iva`),
  KEY `INDEX_COD_UN_MED` (`cod_un_med`),
  CONSTRAINT `FK_ARTICULO_COD_CATEGORIA` FOREIGN KEY (`cod_categoria`) REFERENCES `categoria` (`cod_categoria`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `FK_ARTICULO_COD_IVA` FOREIGN KEY (`cod_iva`) REFERENCES `iva` (`cod_iva`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `FK_ARTICULO_COD_MARCA` FOREIGN KEY (`cod_marca`) REFERENCES `marca` (`cod_marca`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `FK_ARTICULO_COD_PROVEEDOR` FOREIGN KEY (`cod_proveedor`) REFERENCES `proveedor` (`cod_proveedor`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `FK_ARTICULO_COD_UN_MED` FOREIGN KEY (`cod_un_med`) REFERENCES `unidad_med_articulo` (`cod_un_med`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `articulo` */

insert  into `articulo`(`cod_articulo`,`cod_un_med`,`nro_lote`,`desc_articulo`,`cod_proveedor`,`cod_marca`,`cod_categoria`,`precio_compra`,`precio_venta`,`cantidad`,`cod_iva`,`estado`,`maneja_stock`) values 
('01','UN','0','BURGER RELLENA',1,NULL,NULL,NULL,25000,NULL,'10','A','N'),
('0101','UN','0','PRUEBA',1,NULL,NULL,NULL,10000,5,'10','A','S'),
('02','UN','0','CHEESE BACON DOBLE CARNE',1,NULL,NULL,NULL,25000,NULL,'10','A','N'),
('03','UN','0','CHEESE BACON SIMPLE',1,NULL,NULL,NULL,20000,NULL,'10','A','N'),
('04','UN','0','CHORIPAN',1,NULL,NULL,NULL,10000,NULL,'10','A','N'),
('05','UN','0','COCA COLA 1 L',1,NULL,NULL,NULL,10000,NULL,'10','A','N'),
('06','UN','0','COCA COLA 1.5 L',1,NULL,NULL,NULL,13000,NULL,'10','A','N'),
('07','UN','0','DELIVERY 0 A 1KM',1,'GRAL','GRAL',NULL,5000,NULL,'10','A','N'),
('08','UN','0','DELIVERY DE 1 A 5 KM',1,'GRAL','GRAL',NULL,10000,NULL,'10','A','N'),
('09','UN','0','DELIVERY DE 5 A 8 KM',1,'GRAL','GRAL',NULL,15000,NULL,'10','A','N'),
('10','UN','0','DELIVERY DE 8 A 11 KM',1,'GRAL','GRAL',NULL,20000,NULL,'10','A','N'),
('11','UN','0','HAMBURGUESA A CABALLO',1,NULL,NULL,NULL,25000,NULL,'10','A','N'),
('12','UN','0','LA CLASICA DE COSTILLA',1,NULL,NULL,NULL,20000,NULL,'10','A','N'),
('13','UN','0','MAYO Y SALSA DE LA CASA',1,NULL,NULL,NULL,2000,NULL,'10','A','N'),
('14','UN','0','PAPA O MANDIOCA FRITA',1,NULL,NULL,NULL,10000,NULL,'10','A','N'),
('15','UN','0','PAPA O MANDIOCA FRITA CON SALSA CHEDDAR',1,NULL,NULL,NULL,15000,NULL,'10','A','N'),
('16','UN','0','SANDWICH CHEDDAR',1,NULL,NULL,NULL,25000,NULL,'10','A','N'),
('17','UN','0','SANDWICH DE ASADO Y MUZZARELLA',1,NULL,NULL,NULL,20000,NULL,'10','A','N'),
('18','UN','0','SANDWICH DE LOMITO A LA PARRILLA',1,NULL,NULL,NULL,25000,NULL,'10','A','N'),
('19','UN','0','SANDWICH DE PICAHNA',1,NULL,NULL,NULL,25000,NULL,'10','A','N'),
('20','UN','0','COCA COLA 500 ML',1,NULL,NULL,NULL,6000,NULL,'10','A','N'),
('21','UN','0','COCA COLA 250 ML',1,NULL,NULL,NULL,3000,NULL,'10','A','N'),
('22','UN','0','CORONA',1,NULL,NULL,NULL,8000,NULL,'10','A','N'),
('23','UN','0','PILSEN LATA',1,NULL,NULL,NULL,5000,NULL,'10','A','N');

/*Table structure for table `caja` */

DROP TABLE IF EXISTS `caja`;

CREATE TABLE `caja` (
  `cod_sucursal` varchar(5) NOT NULL,
  `cod_caja` varchar(15) NOT NULL,
  `desc_caja` varchar(50) DEFAULT NULL,
  `fecha_alta` date DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`cod_sucursal`,`cod_caja`),
  CONSTRAINT `FK_CAJA_COD_SUC` FOREIGN KEY (`cod_sucursal`) REFERENCES `sucursal` (`cod_sucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `caja` */

insert  into `caja`(`cod_sucursal`,`cod_caja`,`desc_caja`,`fecha_alta`,`estado`) values 
('01','CAJ1','CAJA UNO SUC1','2018-05-02','A'),
('01','CAJ2','CAJA DOS SUC1','2018-05-02','A');

/*Table structure for table `categoria` */

DROP TABLE IF EXISTS `categoria`;

CREATE TABLE `categoria` (
  `cod_categoria` varchar(10) NOT NULL,
  `desc_categoria` varchar(80) NOT NULL,
  PRIMARY KEY (`cod_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `categoria` */

insert  into `categoria`(`cod_categoria`,`desc_categoria`) values 
('CEL','CELULARES'),
('ELEC','ELECTRONICA'),
('GRAL','GENERALES'),
('INSU','INSUMOS'),
('MUEB','MUEBLES'),
('PRE2','PRUEBA2'),
('PRUEB','PRUEBA');

/*Table structure for table `ciudad` */

DROP TABLE IF EXISTS `ciudad`;

CREATE TABLE `ciudad` (
  `cod_ciudad` int(10) NOT NULL AUTO_INCREMENT,
  `desc_ciudad` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cod_ciudad`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `ciudad` */

insert  into `ciudad`(`cod_ciudad`,`desc_ciudad`) values 
(1,'AREGUA'),
(2,'ASUNCION'),
(3,'LUQUE'),
(4,'LIMPIO'),
(5,'SAN LORENZO'),
(6,'FERNANDO DE LA MORA'),
(7,'ITAGUA'),
(8,'YPACARAI'),
(9,'ITA'),
(10,'CAACUPE');

/*Table structure for table `cliente` */

DROP TABLE IF EXISTS `cliente`;

CREATE TABLE `cliente` (
  `cod_cliente` int(15) NOT NULL AUTO_INCREMENT,
  `cod_persona` int(15) DEFAULT NULL,
  `cod_moneda` varchar(5) DEFAULT NULL,
  `cod_cobrador` varchar(20) DEFAULT NULL,
  `cod_vendedor` varchar(20) DEFAULT NULL,
  `limite_credito` int(10) DEFAULT NULL,
  `cod_condicion_venta` int(10) DEFAULT NULL,
  `tipo_cliente` varchar(10) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  `comentario` varchar(80) DEFAULT NULL,
  `cod_pers_codeudor` int(10) DEFAULT NULL,
  `cod_sucursal` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`cod_cliente`),
  KEY `INDEX_COD_PERSONA` (`cod_persona`),
  KEY `INDEX_COD_MON` (`cod_moneda`),
  KEY `INDEX_COD_COB` (`cod_cobrador`),
  KEY `INDEX_COD_VEN` (`cod_vendedor`),
  KEY `INDEX_COD_CON` (`cod_condicion_venta`),
  KEY `INDEX_COD_TIP_CLI` (`tipo_cliente`),
  KEY `FK_CLIENTE_COD_PERS_CODEUDOR` (`cod_pers_codeudor`),
  CONSTRAINT `FK_CLIENTE_COD_COBRADOR` FOREIGN KEY (`cod_cobrador`) REFERENCES `cobrador` (`cod_cobrador`),
  CONSTRAINT `FK_CLIENTE_COD_CONDICION` FOREIGN KEY (`cod_condicion_venta`) REFERENCES `condicion_venta` (`cod_condicion`),
  CONSTRAINT `FK_CLIENTE_COD_MONEDA` FOREIGN KEY (`cod_moneda`) REFERENCES `moneda` (`cod_moneda`),
  CONSTRAINT `FK_CLIENTE_COD_PERSONA` FOREIGN KEY (`cod_persona`) REFERENCES `persona` (`cod_persona`),
  CONSTRAINT `FK_CLIENTE_COD_PERS_CODEUDOR` FOREIGN KEY (`cod_pers_codeudor`) REFERENCES `persona` (`cod_persona`),
  CONSTRAINT `FK_CLIENTE_COD_TIP_CLIENTE` FOREIGN KEY (`tipo_cliente`) REFERENCES `tipo_cliente` (`cod_tipo_cliente`),
  CONSTRAINT `FK_CLIENTE_COD_VENDEDOR` FOREIGN KEY (`cod_vendedor`) REFERENCES `vendedor` (`cod_vendedor`)
) ENGINE=InnoDB AUTO_INCREMENT=2563 DEFAULT CHARSET=utf8;

/*Data for the table `cliente` */

insert  into `cliente`(`cod_cliente`,`cod_persona`,`cod_moneda`,`cod_cobrador`,`cod_vendedor`,`limite_credito`,`cod_condicion_venta`,`tipo_cliente`,`estado`,`comentario`,`cod_pers_codeudor`,`cod_sucursal`) values 
(1,2,'01',NULL,NULL,5000,0,'00','A',NULL,NULL,'01'),
(2562,2568,'01',NULL,NULL,NULL,0,'01','A',NULL,NULL,'01');

/*Table structure for table `cobrador` */

DROP TABLE IF EXISTS `cobrador`;

CREATE TABLE `cobrador` (
  `cod_cobrador` varchar(20) NOT NULL,
  `cod_persona` int(10) DEFAULT NULL,
  `cod_zona` varchar(15) DEFAULT NULL,
  `porcentaje_comision` int(10) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`cod_cobrador`),
  KEY `INDEX_COD_PERS` (`cod_persona`),
  CONSTRAINT `FK_COBRADOR_COD_PERSONA` FOREIGN KEY (`cod_persona`) REFERENCES `persona` (`cod_persona`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cobrador` */

insert  into `cobrador`(`cod_cobrador`,`cod_persona`,`cod_zona`,`porcentaje_comision`,`estado`) values 
('01',NULL,NULL,10,'A'),
('02',NULL,NULL,NULL,'A');

/*Table structure for table `comprobante_cabecera_compra` */

DROP TABLE IF EXISTS `comprobante_cabecera_compra`;

CREATE TABLE `comprobante_cabecera_compra` (
  `cod_tipo_comp` varchar(10) NOT NULL,
  `ser_timb_comp` varchar(30) NOT NULL,
  `nro_comprob_comp` int(10) NOT NULL,
  `nro_timbrado` varchar(30) DEFAULT NULL,
  `fecha_comprob_comp` date NOT NULL,
  `cod_usuario` varchar(10) DEFAULT NULL,
  `cod_sucursal` varchar(5) DEFAULT NULL,
  `cod_deposito` varchar(5) DEFAULT NULL,
  `cod_proveedor` int(10) DEFAULT NULL,
  `cod_cond_comp` int(5) DEFAULT NULL,
  `cant_cuota` int(10) DEFAULT NULL,
  `fecha_inic_comp` date DEFAULT NULL,
  `monto_cuota` decimal(10,2) DEFAULT NULL,
  `total_comprob_comp` decimal(10,2) DEFAULT NULL,
  `iva_comp` decimal(10,2) DEFAULT NULL,
  `gravada` decimal(10,2) DEFAULT NULL,
  `cod_moneda` varchar(5) DEFAULT NULL,
  `tipo_cambio` decimal(10,2) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  `pagado` varchar(1) DEFAULT NULL,
  `cod_mot_ent_sal_art` int(5) DEFAULT NULL,
  `cod_sub_mot_ent_sal_art` int(5) DEFAULT NULL,
  PRIMARY KEY (`cod_tipo_comp`,`ser_timb_comp`,`nro_comprob_comp`),
  KEY `FK_COMP_CM_CAB_COD_DEP_SUC` (`cod_sucursal`,`cod_deposito`),
  KEY `FK_COMP_CM_CAB_COD_PROV` (`cod_proveedor`),
  KEY `FK_COMP_CM_CAB_COD_USUARIO` (`cod_usuario`),
  KEY `FK_COMP_CM_CAB_COD_COND` (`cod_cond_comp`),
  KEY `FK_COMP_CM_CAB_COD_MONEDA` (`cod_moneda`),
  CONSTRAINT `FK_COMP_CM_CAB_COD_COND` FOREIGN KEY (`cod_cond_comp`) REFERENCES `condicion_venta` (`cod_condicion`),
  CONSTRAINT `FK_COMP_CM_CAB_COD_DEP_SUC` FOREIGN KEY (`cod_sucursal`, `cod_deposito`) REFERENCES `deposito_articulo` (`cod_sucursal`, `cod_deposito`),
  CONSTRAINT `FK_COMP_CM_CAB_COD_MONEDA` FOREIGN KEY (`cod_moneda`) REFERENCES `moneda` (`cod_moneda`),
  CONSTRAINT `FK_COMP_CM_CAB_COD_PROV` FOREIGN KEY (`cod_proveedor`) REFERENCES `proveedor` (`cod_proveedor`),
  CONSTRAINT `FK_COMP_CM_CAB_COD_SUCURSAL` FOREIGN KEY (`cod_sucursal`) REFERENCES `sucursal` (`cod_sucursal`),
  CONSTRAINT `FK_COMP_CM_CAB_COD_USUARIO` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `comprobante_cabecera_compra` */

insert  into `comprobante_cabecera_compra`(`cod_tipo_comp`,`ser_timb_comp`,`nro_comprob_comp`,`nro_timbrado`,`fecha_comprob_comp`,`cod_usuario`,`cod_sucursal`,`cod_deposito`,`cod_proveedor`,`cod_cond_comp`,`cant_cuota`,`fecha_inic_comp`,`monto_cuota`,`total_comprob_comp`,`iva_comp`,`gravada`,`cod_moneda`,`tipo_cambio`,`estado`,`pagado`,`cod_mot_ent_sal_art`,`cod_sub_mot_ent_sal_art`) values 
('AJU','A',1,NULL,'2021-04-28','JTORRES','01','01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'P',NULL,3,8),
('AJU','A',2,NULL,'2021-04-28','JTORRES','01','01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'P',NULL,3,8),
('AJU','A',3,NULL,'2021-04-28','JTORRES','01','01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'P',NULL,3,8),
('AJU','A',4,NULL,'2021-04-28','JTORRES','01','01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'P',NULL,3,8),
('AJU','A',5,NULL,'2021-04-28','JTORRES','01','01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'P',NULL,3,8),
('AJU','A',6,NULL,'2021-04-28','JTORRES','01','01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'P',NULL,3,8),
('AJU','A',7,NULL,'2021-04-28','JTORRES','01','01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'P',NULL,3,8),
('AJU','A',8,NULL,'2021-04-28','JTORRES','01','01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'P',NULL,3,8),
('AJU','A',9,NULL,'2021-04-28','JTORRES','01','01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'P',NULL,3,8),
('AJU','A',10,NULL,'2021-04-28','JTORRES','01','01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'P',NULL,3,8),
('AJU','A',11,NULL,'2021-04-28','JTORRES','01','01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'P',NULL,3,8),
('AJU','A',12,NULL,'2021-04-28','JTORRES','01','01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'P',NULL,3,8),
('AJU','A',13,NULL,'2021-04-28','JTORRES','01','01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'P',NULL,3,8),
('AJU','A',14,NULL,'2021-04-28','JTORRES','01','01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'P',NULL,3,8),
('AJU','A',15,NULL,'2021-04-28','JTORRES','01','01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'P',NULL,3,8),
('AJU','A',16,NULL,'2021-04-28','JTORRES','01','01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'P',NULL,3,8),
('AJU','A',17,NULL,'2021-04-28','JTORRES','01','01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'P',NULL,3,8),
('AJU','A',18,NULL,'2021-04-28','JTORRES','01','01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'P',NULL,3,8),
('AJU','A',19,NULL,'2021-04-28','JTORRES','01','01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'P',NULL,3,8),
('AJU','A',20,NULL,'2021-04-28','JTORRES','01','01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'P',NULL,3,8),
('AJU','A',21,NULL,'2021-04-28','JTORRES','01','01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'P',NULL,3,8),
('AJU','A',22,NULL,'2021-04-28','JTORRES','01','01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'P',NULL,3,8),
('AJU','A',23,NULL,'2021-04-28','JTORRES','01','01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'P',NULL,3,8);

/*Table structure for table `comprobante_cabecera_venta` */

DROP TABLE IF EXISTS `comprobante_cabecera_venta`;

CREATE TABLE `comprobante_cabecera_venta` (
  `tipo_comprobante` varchar(5) NOT NULL,
  `ser_comprobante` varchar(5) NOT NULL,
  `nro_comprobante` int(15) NOT NULL,
  `cod_sucursal` varchar(5) DEFAULT NULL,
  `cod_deposito` varchar(5) DEFAULT NULL,
  `fecha_comprobante` date DEFAULT NULL,
  `cod_cliente` int(10) DEFAULT NULL,
  `cod_cobrador` varchar(10) DEFAULT NULL,
  `cod_vendedor` varchar(10) DEFAULT NULL,
  `tipo_comprobante_ref` varchar(5) DEFAULT NULL,
  `ser_comprobante_ref` varchar(5) DEFAULT NULL,
  `nro_comprobante_ref` int(15) DEFAULT NULL,
  `cod_condicion_venta` int(10) DEFAULT NULL,
  `descuento` decimal(10,2) DEFAULT NULL,
  `cod_moneda` varchar(5) DEFAULT NULL,
  `tipo_cambio` decimal(10,2) DEFAULT NULL,
  `total_comprobante` decimal(10,2) DEFAULT NULL,
  `total_gravada` decimal(10,2) DEFAULT NULL,
  `total_exenta` decimal(10,2) DEFAULT NULL,
  `total_iva` decimal(10,2) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  `cod_usuario` varchar(10) DEFAULT NULL,
  `comentario` varchar(80) DEFAULT NULL,
  `monto_cuota` decimal(10,2) DEFAULT NULL,
  `cobrado` varchar(1) DEFAULT NULL,
  `cod_motivo_anul` int(5) DEFAULT NULL,
  `cod_mot_ent_sal_art` int(5) DEFAULT NULL,
  `cod_sub_mot_ent_sal_art` int(5) DEFAULT NULL,
  PRIMARY KEY (`tipo_comprobante`,`ser_comprobante`,`nro_comprobante`),
  KEY `FK_COMP_VENTA_CAB_TAL` (`tipo_comprobante`,`ser_comprobante`,`cod_sucursal`),
  KEY `FK_COMP_VENTA_CAB_DEP` (`cod_deposito`,`cod_sucursal`),
  KEY `FK_COMP_VENTA_CAB_CLIE` (`cod_cliente`),
  KEY `FK_COMP_VENTA_CAB_COBR` (`cod_cobrador`),
  KEY `FK_COMP_VENTA_CAB_VEND` (`cod_vendedor`),
  KEY `FK_COMP_VENTA_CAB_COND` (`cod_condicion_venta`),
  KEY `FK_COMP_VENTA_CAB_MONE` (`cod_moneda`),
  KEY `FK_COMP_VENTA_CAB_USU` (`cod_usuario`),
  KEY `FK_COMP_VENTA_CAB_MANU` (`cod_motivo_anul`),
  KEY `FK_COMP_VENTA_CAB_TIP_TRANS` (`cod_mot_ent_sal_art`),
  KEY `FK_COMP_VENTA_CAB_SUB_TIP_TRANS` (`cod_sub_mot_ent_sal_art`),
  CONSTRAINT `FK_COMP_VENTA_CAB_CLIE` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`cod_cliente`),
  CONSTRAINT `FK_COMP_VENTA_CAB_COBR` FOREIGN KEY (`cod_cobrador`) REFERENCES `cobrador` (`cod_cobrador`),
  CONSTRAINT `FK_COMP_VENTA_CAB_COND` FOREIGN KEY (`cod_condicion_venta`) REFERENCES `condicion_venta` (`cod_condicion`),
  CONSTRAINT `FK_COMP_VENTA_CAB_DEP` FOREIGN KEY (`cod_deposito`, `cod_sucursal`) REFERENCES `deposito_articulo` (`cod_sucursal`, `cod_deposito`),
  CONSTRAINT `FK_COMP_VENTA_CAB_MANU` FOREIGN KEY (`cod_motivo_anul`) REFERENCES `motivo_anulac_comp` (`cod_motivo`),
  CONSTRAINT `FK_COMP_VENTA_CAB_MONE` FOREIGN KEY (`cod_moneda`) REFERENCES `moneda` (`cod_moneda`),
  CONSTRAINT `FK_COMP_VENTA_CAB_SUB_TIP_TRANS` FOREIGN KEY (`cod_sub_mot_ent_sal_art`) REFERENCES `sub_tipo_transaccion` (`cod_sub_tipo_trans`),
  CONSTRAINT `FK_COMP_VENTA_CAB_TAL` FOREIGN KEY (`tipo_comprobante`, `ser_comprobante`, `cod_sucursal`) REFERENCES `talonario` (`tipo_talonario`, `serie`, `cod_sucursal`),
  CONSTRAINT `FK_COMP_VENTA_CAB_TIP_TRANS` FOREIGN KEY (`cod_mot_ent_sal_art`) REFERENCES `tipo_transaccion` (`cod_tipo_trans`),
  CONSTRAINT `FK_COMP_VENTA_CAB_USU` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`),
  CONSTRAINT `FK_COMP_VENTA_CAB_VEND` FOREIGN KEY (`cod_vendedor`) REFERENCES `vendedor` (`cod_vendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `comprobante_cabecera_venta` */

insert  into `comprobante_cabecera_venta`(`tipo_comprobante`,`ser_comprobante`,`nro_comprobante`,`cod_sucursal`,`cod_deposito`,`fecha_comprobante`,`cod_cliente`,`cod_cobrador`,`cod_vendedor`,`tipo_comprobante_ref`,`ser_comprobante_ref`,`nro_comprobante_ref`,`cod_condicion_venta`,`descuento`,`cod_moneda`,`tipo_cambio`,`total_comprobante`,`total_gravada`,`total_exenta`,`total_iva`,`estado`,`cod_usuario`,`comentario`,`monto_cuota`,`cobrado`,`cod_motivo_anul`,`cod_mot_ent_sal_art`,`cod_sub_mot_ent_sal_art`) values 
('FCO','A',1,'01','01','2021-04-28',1,NULL,NULL,NULL,NULL,NULL,0,5000.00,'01',NULL,51000.00,46364.00,NULL,4636.00,'P','JTORRES','PRUEBA',0.00,NULL,NULL,NULL,NULL),
('FCO','A',2,'01','01','2021-04-28',1,NULL,NULL,NULL,NULL,NULL,0,0.00,'01',NULL,65000.00,59091.00,NULL,5909.00,'P','JTORRES','PRUEBA3',0.00,NULL,NULL,NULL,NULL),
('FCO','A',3,'01','01','2021-04-28',1,NULL,NULL,NULL,NULL,NULL,0,0.00,'01',NULL,25000.00,22727.00,NULL,2273.00,'P','JTORRES','PRUEBA',0.00,NULL,NULL,NULL,NULL),
('FCO','A',4,'01','01','2021-09-17',1,NULL,NULL,NULL,NULL,NULL,0,0.00,'01',NULL,25000.00,22727.00,NULL,2273.00,'P','JTORRES','PRUEBA',0.00,NULL,NULL,NULL,NULL),
('FCO','A',5,'01','01','2021-09-17',1,NULL,NULL,NULL,NULL,NULL,0,0.00,'01',NULL,125000.00,113636.00,NULL,11364.00,'P','JTORRES','PRUEBA',0.00,NULL,NULL,NULL,NULL);

/*Table structure for table `comprobante_detalle_compra` */

DROP TABLE IF EXISTS `comprobante_detalle_compra`;

CREATE TABLE `comprobante_detalle_compra` (
  `cod_tipo_comp` varchar(5) NOT NULL,
  `ser_timb_comp` varchar(30) NOT NULL,
  `nro_comprob_comp` int(11) NOT NULL,
  `cod_producto` varchar(100) NOT NULL,
  `cod_un_med` varchar(100) NOT NULL,
  `nro_lote` varchar(100) NOT NULL,
  `descripcion_prod` varchar(100) DEFAULT NULL,
  `cantidad_prod` decimal(10,2) DEFAULT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL,
  `descuento` decimal(10,2) DEFAULT NULL,
  `importe` decimal(10,2) DEFAULT NULL,
  `total_iva_5` decimal(10,2) DEFAULT NULL,
  `total_iva_10` decimal(10,2) DEFAULT NULL,
  `gravada_5` decimal(10,2) DEFAULT NULL,
  `gravada_10` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`cod_tipo_comp`,`ser_timb_comp`,`nro_comprob_comp`,`cod_producto`,`cod_un_med`,`nro_lote`),
  KEY `FK_COMP_CM_DET_EXIST_ART` (`cod_producto`,`cod_un_med`,`nro_lote`),
  CONSTRAINT `FK_COMP_CM_DET_ARTICULO` FOREIGN KEY (`cod_producto`, `cod_un_med`, `nro_lote`) REFERENCES `articulo` (`cod_articulo`, `cod_un_med`, `nro_lote`),
  CONSTRAINT `FK_COMP_CM_DET_COMP_CAB` FOREIGN KEY (`cod_tipo_comp`, `ser_timb_comp`, `nro_comprob_comp`) REFERENCES `comprobante_cabecera_compra` (`cod_tipo_comp`, `ser_timb_comp`, `nro_comprob_comp`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `comprobante_detalle_compra` */

insert  into `comprobante_detalle_compra`(`cod_tipo_comp`,`ser_timb_comp`,`nro_comprob_comp`,`cod_producto`,`cod_un_med`,`nro_lote`,`descripcion_prod`,`cantidad_prod`,`precio_unitario`,`descuento`,`importe`,`total_iva_5`,`total_iva_10`,`gravada_5`,`gravada_10`) values 
('AJU','A',1,'01','UN','0','BURGER RELLENA',1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('AJU','A',2,'02','UN','0','CHEESE BACON DOBLE CARNE',1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('AJU','A',3,'03','UN','0','CHEESE BACON SIMPLE',1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('AJU','A',4,'04','UN','0','CHORIPAN',1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('AJU','A',5,'05','UN','0','COCA COLA 1 L',1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('AJU','A',6,'06','UN','0','COCA COLA 1.5 L',1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('AJU','A',7,'07','UN','0','DELIVERY 0 A 1KM',1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('AJU','A',8,'08','UN','0','DELIVERY DE 1 A 5 KM',1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('AJU','A',9,'09','UN','0','DELIVERY DE 5 A 8 KM',1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('AJU','A',10,'10','UN','0','DELIVERY DE 8 A 11 KM',1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('AJU','A',11,'11','UN','0','HAMBURGUESA A CABALLO',1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('AJU','A',12,'12','UN','0','LA CLASICA DE COSTILLA',1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('AJU','A',13,'13','UN','0','MAYO Y SALSA DE LA CASA',1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('AJU','A',14,'14','UN','0','PAPA O MANDIOCA FRITA',1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('AJU','A',15,'15','UN','0','PAPA O MANDIOCA FRITA CON SALSA CHEDDAR',1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('AJU','A',16,'16','UN','0','SANDWICH CHEDDAR',1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('AJU','A',17,'17','UN','0','SANDWICH DE ASADO Y MUZZARELLA',1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('AJU','A',18,'18','UN','0','SANDWICH DE LOMITO A LA PARRILLA',1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('AJU','A',19,'19','UN','0','SANDWICH DE PICAHNA',1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('AJU','A',20,'20','UN','0','COCA COLA 500 ML',1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('AJU','A',21,'21','UN','0','COCA COLA 250 ML',1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('AJU','A',22,'22','UN','0','CORONA',1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('AJU','A',23,'23','UN','0','PILSEN LATA',1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `comprobante_detalle_venta` */

DROP TABLE IF EXISTS `comprobante_detalle_venta`;

CREATE TABLE `comprobante_detalle_venta` (
  `tipo_comprobante` varchar(5) NOT NULL,
  `ser_comprobante` varchar(5) NOT NULL,
  `nro_comprobante` int(15) NOT NULL,
  `cod_articulo` varchar(50) NOT NULL,
  `cod_un_med` varchar(100) NOT NULL,
  `nro_lote` varchar(100) NOT NULL,
  `descripcion` varchar(80) DEFAULT NULL,
  `cantidad` decimal(10,2) DEFAULT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL,
  `descuento` decimal(10,2) DEFAULT NULL,
  `gravada_10` decimal(10,2) DEFAULT NULL,
  `gravada_5` decimal(10,2) DEFAULT NULL,
  `importe_total` decimal(10,2) DEFAULT NULL,
  `total_iva10` decimal(10,2) DEFAULT NULL,
  `total_iva5` decimal(10,2) DEFAULT NULL,
  `porcentaje_iva` int(5) DEFAULT NULL,
  `cod_iva` int(5) DEFAULT NULL,
  `porcentaje_descuento` int(5) DEFAULT NULL,
  `nro_cuota` int(5) DEFAULT NULL,
  PRIMARY KEY (`tipo_comprobante`,`ser_comprobante`,`nro_comprobante`,`cod_articulo`,`cod_un_med`,`nro_lote`),
  KEY `FK_COMP_VENTA_DET_STOCK` (`cod_articulo`,`cod_un_med`,`nro_lote`),
  CONSTRAINT `FK_COMP_VENTA_DET_CAB` FOREIGN KEY (`tipo_comprobante`, `ser_comprobante`, `nro_comprobante`) REFERENCES `comprobante_cabecera_venta` (`tipo_comprobante`, `ser_comprobante`, `nro_comprobante`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_COMP_VENTA_DET_STOCK` FOREIGN KEY (`cod_articulo`, `cod_un_med`, `nro_lote`) REFERENCES `existencia_articulo` (`cod_articulo`, `cod_un_medida`, `nro_lote`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `comprobante_detalle_venta` */

insert  into `comprobante_detalle_venta`(`tipo_comprobante`,`ser_comprobante`,`nro_comprobante`,`cod_articulo`,`cod_un_med`,`nro_lote`,`descripcion`,`cantidad`,`precio_unitario`,`descuento`,`gravada_10`,`gravada_5`,`importe_total`,`total_iva10`,`total_iva5`,`porcentaje_iva`,`cod_iva`,`porcentaje_descuento`,`nro_cuota`) values 
('FCO','A',1,'01','UN','0','BURGER RELLENA',1.00,25000.00,0.00,22727.00,0.00,25000.00,2273.00,0.00,0,0,0,1),
('FCO','A',1,'02','UN','0','CHEESE BACON DOBLE CARNE',1.00,25000.00,5000.00,18182.00,0.00,20000.00,1818.00,0.00,0,0,0,1),
('FCO','A',1,'20','UN','0','COCA COLA 500 ML',1.00,6000.00,0.00,5455.00,0.00,6000.00,545.00,0.00,0,0,0,1),
('FCO','A',2,'01','UN','0','BURGER RELLENA',1.00,25000.00,0.00,22727.00,0.00,25000.00,2273.00,0.00,0,0,0,1),
('FCO','A',2,'03','UN','0','CHEESE BACON SIMPLE',1.00,20000.00,0.00,18182.00,0.00,20000.00,1818.00,0.00,0,0,0,1),
('FCO','A',2,'10','UN','0','DELIVERY DE 8 A 11 KM',1.00,20000.00,0.00,18182.00,0.00,20000.00,1818.00,0.00,0,0,0,1),
('FCO','A',3,'01','UN','0','BURGER RELLENA',1.00,25000.00,0.00,22727.00,0.00,25000.00,2273.00,0.00,0,0,0,1),
('FCO','A',4,'01','UN','0','BURGER RELLENA',1.00,25000.00,0.00,22727.00,0.00,25000.00,2273.00,0.00,0,0,0,1),
('FCO','A',5,'01','UN','0','BURGER RELLENA',5.00,25000.00,0.00,113636.00,0.00,125000.00,11364.00,0.00,0,0,0,1);

/*Table structure for table `condicion_venta` */

DROP TABLE IF EXISTS `condicion_venta`;

CREATE TABLE `condicion_venta` (
  `cod_condicion` int(10) NOT NULL,
  `descripcion` varchar(80) DEFAULT NULL,
  `numero_cuota` int(5) DEFAULT NULL,
  `dia_inicial` int(5) DEFAULT NULL,
  `plazo` int(10) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`cod_condicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `condicion_venta` */

insert  into `condicion_venta`(`cod_condicion`,`descripcion`,`numero_cuota`,`dia_inicial`,`plazo`,`estado`) values 
(0,'CONTADO',0,0,0,'A'),
(1,'CREDITO(30 DIAS)',1,1,0,'A'),
(2,'CREDITO(60 DIAS)',2,1,0,'A'),
(3,'CREDITO(90 DIAS)',3,1,30,'A'),
(4,'CREDITO(120 DIAS)',4,1,30,'A'),
(5,'CREDITO(150 DIAS)',5,0,0,'A'),
(6,'CREDITO(180 DIAS)',6,0,0,'A'),
(7,'CREDITO(210 DIAS)',7,0,0,'A'),
(8,'CREDITO(240 DIAS)',8,0,0,'A'),
(9,'CREDITO(270 DIAS)',9,0,0,'A'),
(10,'CREDITO(300 DIAS)',10,0,0,'A'),
(11,'CREDITO(330 DIAS)',11,0,0,'A'),
(12,'CREDITO(360 DIAS)',12,0,0,'A'),
(13,NULL,NULL,NULL,NULL,NULL),
(14,NULL,NULL,NULL,NULL,NULL),
(15,NULL,NULL,NULL,NULL,NULL),
(16,NULL,NULL,NULL,NULL,NULL),
(17,NULL,NULL,NULL,NULL,NULL),
(18,NULL,NULL,NULL,NULL,NULL),
(19,NULL,NULL,NULL,NULL,NULL),
(20,NULL,NULL,NULL,NULL,NULL),
(21,NULL,NULL,NULL,NULL,NULL),
(22,NULL,NULL,NULL,NULL,NULL),
(23,NULL,NULL,NULL,NULL,NULL),
(24,NULL,NULL,NULL,NULL,NULL),
(25,NULL,NULL,NULL,NULL,NULL),
(26,NULL,NULL,NULL,NULL,NULL),
(27,NULL,NULL,NULL,NULL,NULL),
(28,NULL,NULL,NULL,NULL,NULL),
(29,NULL,NULL,NULL,NULL,NULL),
(30,NULL,NULL,NULL,NULL,NULL),
(31,NULL,NULL,NULL,NULL,NULL),
(32,NULL,NULL,NULL,NULL,NULL),
(33,NULL,NULL,NULL,NULL,NULL),
(34,NULL,NULL,NULL,NULL,NULL),
(35,NULL,NULL,NULL,NULL,NULL),
(36,NULL,NULL,NULL,NULL,NULL),
(37,NULL,NULL,NULL,NULL,NULL),
(38,NULL,NULL,NULL,NULL,NULL),
(39,NULL,NULL,NULL,NULL,NULL),
(40,NULL,NULL,NULL,NULL,NULL),
(41,NULL,NULL,NULL,NULL,NULL),
(42,NULL,NULL,NULL,NULL,NULL),
(43,NULL,NULL,NULL,NULL,NULL),
(44,NULL,NULL,NULL,NULL,NULL),
(45,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `deposito_articulo` */

DROP TABLE IF EXISTS `deposito_articulo`;

CREATE TABLE `deposito_articulo` (
  `cod_sucursal` varchar(5) NOT NULL,
  `cod_deposito` varchar(5) NOT NULL,
  `desc_deposito` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`cod_sucursal`,`cod_deposito`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `deposito_articulo` */

insert  into `deposito_articulo`(`cod_sucursal`,`cod_deposito`,`desc_deposito`) values 
('01','01','DEPOSITO CASA CENTRAL(1)'),
('02','02','DEPOSITO SUCURSAL(02)');

/*Table structure for table `estado_civil` */

DROP TABLE IF EXISTS `estado_civil`;

CREATE TABLE `estado_civil` (
  `cod_estado_civil` varchar(5) NOT NULL,
  `desc_estado_civil` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cod_estado_civil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `estado_civil` */

insert  into `estado_civil`(`cod_estado_civil`,`desc_estado_civil`) values 
('CAS','CASADO/A'),
('DIV','DIVORCIADO/A'),
('SOL','SOLTERO/A'),
('VIU','VIUDO/A');

/*Table structure for table `existencia_articulo` */

DROP TABLE IF EXISTS `existencia_articulo`;

CREATE TABLE `existencia_articulo` (
  `cod_sucursal` varchar(10) NOT NULL,
  `cod_deposito` varchar(10) NOT NULL,
  `cod_articulo` varchar(100) NOT NULL,
  `cod_un_medida` varchar(5) NOT NULL,
  `nro_lote` varchar(100) NOT NULL,
  `tipo_transacc` int(5) NOT NULL COMMENT 'tipo_transaccion',
  `sub_tipo_transacc` int(5) NOT NULL COMMENT 'sub_tipo_transaccion',
  `cantidad` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`cod_sucursal`,`cod_deposito`,`cod_articulo`,`cod_un_medida`,`nro_lote`,`tipo_transacc`,`sub_tipo_transacc`),
  KEY `FK_EXIST_ARTICULO_COD_DEP_SUC` (`cod_deposito`,`cod_sucursal`),
  KEY `FK_EXIST_ARTICULO_COD_ART` (`cod_articulo`,`cod_un_medida`,`nro_lote`),
  KEY `FK_EXIST_ARTICULO_COD_TIP_TRAN` (`tipo_transacc`),
  KEY `FK_EXIST_ARTICULO_COD_SUB_TIP_TRAN` (`sub_tipo_transacc`),
  CONSTRAINT `FK_EXIST_ARTICULO_COD_ART` FOREIGN KEY (`cod_articulo`, `cod_un_medida`, `nro_lote`) REFERENCES `articulo` (`cod_articulo`, `cod_un_med`, `nro_lote`),
  CONSTRAINT `FK_EXIST_ARTICULO_COD_DEP_SUC` FOREIGN KEY (`cod_deposito`, `cod_sucursal`) REFERENCES `deposito_articulo` (`cod_sucursal`, `cod_deposito`),
  CONSTRAINT `FK_EXIST_ARTICULO_COD_SUB_TIP_TRAN` FOREIGN KEY (`sub_tipo_transacc`) REFERENCES `sub_tipo_transaccion` (`cod_sub_tipo_trans`),
  CONSTRAINT `FK_EXIST_ARTICULO_COD_SUCURSAL` FOREIGN KEY (`cod_sucursal`) REFERENCES `sucursal` (`cod_sucursal`),
  CONSTRAINT `FK_EXIST_ARTICULO_COD_TIP_TRAN` FOREIGN KEY (`tipo_transacc`) REFERENCES `tipo_transaccion` (`cod_tipo_trans`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `existencia_articulo` */

insert  into `existencia_articulo`(`cod_sucursal`,`cod_deposito`,`cod_articulo`,`cod_un_medida`,`nro_lote`,`tipo_transacc`,`sub_tipo_transacc`,`cantidad`) values 
('01','01','01','UN','0',3,7,1.00),
('01','01','02','UN','0',3,7,1.00),
('01','01','03','UN','0',3,7,1.00),
('01','01','04','UN','0',3,7,1.00),
('01','01','05','UN','0',3,7,1.00),
('01','01','06','UN','0',3,7,1.00),
('01','01','07','UN','0',3,7,1.00),
('01','01','08','UN','0',3,7,1.00),
('01','01','09','UN','0',3,7,1.00),
('01','01','10','UN','0',3,7,1.00),
('01','01','11','UN','0',3,7,1.00),
('01','01','12','UN','0',3,7,1.00),
('01','01','13','UN','0',3,7,1.00),
('01','01','14','UN','0',3,7,1.00),
('01','01','15','UN','0',3,7,1.00),
('01','01','16','UN','0',3,7,1.00),
('01','01','17','UN','0',3,7,1.00),
('01','01','18','UN','0',3,7,1.00),
('01','01','19','UN','0',3,7,1.00),
('01','01','20','UN','0',3,7,1.00),
('01','01','21','UN','0',3,7,1.00),
('01','01','22','UN','0',3,7,1.00),
('01','01','23','UN','0',3,7,1.00);

/*Table structure for table `forma_cobro_venta` */

DROP TABLE IF EXISTS `forma_cobro_venta`;

CREATE TABLE `forma_cobro_venta` (
  `tipo_mov_caja` varchar(5) NOT NULL,
  `ser_mov_caja` varchar(5) NOT NULL,
  `nro_mov_caja` int(10) NOT NULL,
  `tipo_transaccion` int(5) NOT NULL,
  `sub_tipo_transaccion` int(5) NOT NULL,
  `cod_persona_juridica` int(10) DEFAULT NULL,
  `nro_valor` varchar(30) DEFAULT NULL,
  `nro_cuenta` varchar(30) DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`tipo_mov_caja`,`ser_mov_caja`,`nro_mov_caja`,`tipo_transaccion`,`sub_tipo_transaccion`),
  KEY `FK_FORM_COB_VEN_TRANS` (`tipo_transaccion`),
  KEY `FK_FORM_COB_VEN_SUB_TIP` (`sub_tipo_transaccion`),
  KEY `FK_FORM_COB_VEN_PERS` (`cod_persona_juridica`),
  CONSTRAINT `FK_FORM_COB_VEN_MOV_VEN` FOREIGN KEY (`tipo_mov_caja`, `ser_mov_caja`, `nro_mov_caja`) REFERENCES `movimiento_caja_venta` (`tipo_mov_caja`, `ser_mov_caja`, `nro_mov_caja`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_FORM_COB_VEN_PERS` FOREIGN KEY (`cod_persona_juridica`) REFERENCES `persona` (`cod_persona`),
  CONSTRAINT `FK_FORM_COB_VEN_SUB_TIP` FOREIGN KEY (`sub_tipo_transaccion`) REFERENCES `sub_tipo_transaccion` (`cod_sub_tipo_trans`),
  CONSTRAINT `FK_FORM_COB_VEN_TRANS` FOREIGN KEY (`tipo_transaccion`) REFERENCES `tipo_transaccion` (`cod_tipo_trans`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `forma_cobro_venta` */

/*Table structure for table `forma_pago_compra` */

DROP TABLE IF EXISTS `forma_pago_compra`;

CREATE TABLE `forma_pago_compra` (
  `tipo_mov_caja_com` varchar(5) NOT NULL,
  `ser_mov_caja_com` varchar(5) NOT NULL,
  `nro_mov_caja_com` int(10) NOT NULL,
  `tipo_transaccion` int(5) NOT NULL,
  `sub_tipo_transaccion` int(5) NOT NULL,
  `cod_persona_juridica` int(10) DEFAULT NULL,
  `nro_valor` varchar(30) DEFAULT NULL,
  `nro_cuenta` varchar(30) DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`tipo_mov_caja_com`,`ser_mov_caja_com`,`nro_mov_caja_com`,`tipo_transaccion`,`sub_tipo_transaccion`),
  KEY `FK_FORMA_PAGO_COMP_TIP_TRANS` (`tipo_transaccion`),
  KEY `FK_FORMA_PAGO_COMP_SUB_TIP_TRANS` (`sub_tipo_transaccion`),
  KEY `FK_FORMA_PAGO_COMP_COD_PERS` (`cod_persona_juridica`),
  CONSTRAINT `FK_FORMA_PAGO_COMP_COD_PERS` FOREIGN KEY (`cod_persona_juridica`) REFERENCES `persona` (`cod_persona`),
  CONSTRAINT `FK_FORMA_PAGO_COMP_MOV_CAJ_COMP` FOREIGN KEY (`tipo_mov_caja_com`, `ser_mov_caja_com`, `nro_mov_caja_com`) REFERENCES `movimiento_caja_compra` (`tipo_mov_caja_com`, `ser_mov_caja_com`, `nro_mov_caja_com`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_FORMA_PAGO_COMP_SUB_TIP_TRANS` FOREIGN KEY (`sub_tipo_transaccion`) REFERENCES `sub_tipo_transaccion` (`cod_sub_tipo_trans`),
  CONSTRAINT `FK_FORMA_PAGO_COMP_TIP_TRANS` FOREIGN KEY (`tipo_transaccion`) REFERENCES `tipo_transaccion` (`cod_tipo_trans`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `forma_pago_compra` */

/*Table structure for table `grupo_usuario` */

DROP TABLE IF EXISTS `grupo_usuario`;

CREATE TABLE `grupo_usuario` (
  `cod_grupo` varchar(10) NOT NULL,
  `desc_grupo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cod_grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `grupo_usuario` */

insert  into `grupo_usuario`(`cod_grupo`,`desc_grupo`) values 
('ADMIN','ADMINISTRACION DEl SISTEMA'),
('COMPRAS','COMPRAS'),
('GERENCIA','ADMINISTRACION Y GERENCIA'),
('VENTAS','VENTAS Y FACTURACION');

/*Table structure for table `habilitacion_caja` */

DROP TABLE IF EXISTS `habilitacion_caja`;

CREATE TABLE `habilitacion_caja` (
  `nro_habilitacion` int(10) NOT NULL AUTO_INCREMENT,
  `fecha_hab` date DEFAULT NULL,
  `fecha_cierre` date DEFAULT NULL,
  `saldo_inicial` int(10) DEFAULT NULL,
  `cod_sucursal` varchar(10) DEFAULT NULL,
  `cod_caja` varchar(15) DEFAULT NULL,
  `cod_usuario` varchar(15) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`nro_habilitacion`),
  KEY `FK_HAB_CAJ_COD_SUC_CAJ` (`cod_sucursal`,`cod_caja`),
  KEY `FK_HAB_CAJ_COD_USU` (`cod_usuario`),
  CONSTRAINT `FK_HAB_CAJ_COD_SUC_CAJ` FOREIGN KEY (`cod_sucursal`, `cod_caja`) REFERENCES `caja` (`cod_sucursal`, `cod_caja`),
  CONSTRAINT `FK_HAB_CAJ_COD_USU` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `habilitacion_caja` */

/*Table structure for table `iva` */

DROP TABLE IF EXISTS `iva`;

CREATE TABLE `iva` (
  `cod_iva` varchar(10) NOT NULL,
  `desc_iva` varchar(50) NOT NULL,
  PRIMARY KEY (`cod_iva`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `iva` */

insert  into `iva`(`cod_iva`,`desc_iva`) values 
('0','EXENTO'),
('10','I.V.A(10%)'),
('5','I.V.A(5%)');

/*Table structure for table `marca` */

DROP TABLE IF EXISTS `marca`;

CREATE TABLE `marca` (
  `cod_marca` varchar(10) NOT NULL,
  `desc_marca` varchar(80) NOT NULL,
  PRIMARY KEY (`cod_marca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `marca` */

insert  into `marca`(`cod_marca`,`desc_marca`) values 
('ACE','ACER'),
('AOC','AOC'),
('CAT','CAT'),
('DELL','DELL'),
('ECO','ECOPOWER'),
('GRAL','GENERAL'),
('GUR','GURU'),
('HP','HP'),
('KD','KDE'),
('NOK','NOKIA'),
('PRUE','PRUEBA'),
('SAM','SAMSUNG'),
('TOY','TOKYO');

/*Table structure for table `migracion` */

DROP TABLE IF EXISTS `migracion`;

CREATE TABLE `migracion` (
  `codigo` decimal(10,0) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `migracion` */

insert  into `migracion`(`codigo`) values 
(5),
(51),
(70),
(91),
(115),
(129),
(138),
(142),
(174),
(184),
(199),
(211),
(212),
(229),
(252),
(253),
(265),
(268),
(271),
(289),
(333),
(337),
(380),
(400),
(405),
(421),
(453),
(457),
(459),
(519),
(562),
(570),
(583),
(589),
(609),
(625),
(670),
(676),
(722),
(762),
(765),
(820),
(824),
(885),
(890),
(912),
(956),
(977),
(1012),
(1016),
(1090),
(1093),
(1094),
(1095),
(1098),
(1159),
(1174),
(1206),
(1207),
(1222),
(1224),
(1238),
(1243),
(1318),
(1327),
(1333),
(1365),
(1442),
(1443),
(1491),
(1492),
(1498),
(1505),
(1508),
(1509),
(1518),
(1524),
(1526),
(1529),
(1545),
(1565),
(1573),
(1607),
(1627),
(1633),
(1649),
(1652),
(1654),
(1658),
(1683),
(1704),
(1708),
(1712),
(1719),
(1731),
(1732),
(1739),
(1740),
(1767),
(1771),
(1778),
(1784),
(1800),
(1823),
(1829),
(1831),
(1853),
(1867),
(1885),
(1894),
(1897),
(1907),
(1930),
(1933),
(1937),
(1951),
(1965),
(1989),
(2018),
(2043),
(2048),
(2054),
(2067),
(2102),
(2134),
(2144),
(2150),
(2152),
(2161),
(2162),
(2177),
(2181),
(2185),
(2204),
(2228),
(2256),
(2257),
(2268),
(2270),
(2287),
(2300),
(2304),
(2309),
(2320),
(2331),
(2334),
(2337),
(2339),
(2347),
(2358),
(2360),
(2365),
(2374),
(2379),
(2399),
(2404),
(2407),
(2420),
(2428),
(2439),
(2441),
(2442),
(2444),
(2458),
(2467),
(2470),
(2472),
(2487),
(2491),
(2492),
(2502),
(2514),
(2551),
(2552),
(2556),
(2569),
(2591),
(17745);

/*Table structure for table `modulo_sistema` */

DROP TABLE IF EXISTS `modulo_sistema`;

CREATE TABLE `modulo_sistema` (
  `cod_modulo` varchar(5) NOT NULL,
  `desc_modulo` varchar(50) NOT NULL,
  PRIMARY KEY (`cod_modulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `modulo_sistema` */

insert  into `modulo_sistema`(`cod_modulo`,`desc_modulo`) values 
('AJ','AJUSTES SISTEMA'),
('AY','AYUDA'),
('CC','CUENTAS A COBRAR'),
('CM','COMPRAS'),
('CP','CUENTAS A PAGAR'),
('ST','STOCK'),
('VT','VENTAS Y FACTURACION');

/*Table structure for table `moneda` */

DROP TABLE IF EXISTS `moneda`;

CREATE TABLE `moneda` (
  `cod_moneda` varchar(5) NOT NULL,
  `desc_moneda` varchar(50) DEFAULT NULL,
  `siglas` varchar(5) DEFAULT NULL,
  `cod_pais` int(10) DEFAULT NULL,
  `decimales` int(5) DEFAULT NULL,
  `tipo_cambio` int(10) DEFAULT NULL,
  `tipo_cambio_compra` int(10) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  `redondeo` int(10) DEFAULT NULL,
  PRIMARY KEY (`cod_moneda`),
  KEY `INDEX_COD_PAIS` (`cod_pais`),
  CONSTRAINT `FK_MONEDA_COD_PAIS` FOREIGN KEY (`cod_pais`) REFERENCES `pais` (`cod_pais`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `moneda` */

insert  into `moneda`(`cod_moneda`,`desc_moneda`,`siglas`,`cod_pais`,`decimales`,`tipo_cambio`,`tipo_cambio_compra`,`estado`,`redondeo`) values 
('01','GUARANIES','GS',1,2,48000,5000,'A',1),
('02','DOLAR AMERICANO','DOL',1,2,48000,5000,'A',1);

/*Table structure for table `motivo_anulac_comp` */

DROP TABLE IF EXISTS `motivo_anulac_comp`;

CREATE TABLE `motivo_anulac_comp` (
  `cod_motivo` int(10) NOT NULL AUTO_INCREMENT,
  `desc_motivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cod_motivo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `motivo_anulac_comp` */

insert  into `motivo_anulac_comp`(`cod_motivo`,`desc_motivo`) values 
(1,'ERROR DE IMPRESION'),
(2,'ERROR OPERARIO'),
(3,'CLIENTE DESISTIO A LA COMPRA');

/*Table structure for table `movimiento_caja_compra` */

DROP TABLE IF EXISTS `movimiento_caja_compra`;

CREATE TABLE `movimiento_caja_compra` (
  `tipo_mov_caja_com` varchar(5) NOT NULL,
  `ser_mov_caja_com` varchar(5) NOT NULL,
  `nro_mov_caja_com` int(10) NOT NULL,
  `fecha_mov_caja_com` date DEFAULT NULL,
  `cod_sucursal` varchar(5) DEFAULT NULL,
  `cod_proveedor` int(11) DEFAULT NULL,
  `cod_usuario` varchar(15) DEFAULT NULL,
  `cod_caja` varchar(5) DEFAULT NULL,
  `numero_hab` int(11) DEFAULT NULL,
  `total_mov_caja_com` decimal(10,2) DEFAULT NULL,
  `anulado` varchar(1) DEFAULT NULL,
  `fecha_anulacion_com` date DEFAULT NULL,
  PRIMARY KEY (`tipo_mov_caja_com`,`ser_mov_caja_com`,`nro_mov_caja_com`),
  KEY `nro_mov_caja_com` (`nro_mov_caja_com`),
  KEY `FK_MOV_CAJA_COMPRA_COD_SUC` (`cod_sucursal`),
  KEY `FK_MOV_CAJA_COMPRA_COD_PROV` (`cod_proveedor`),
  KEY `FK_MOV_CAJA_COMPRA_COD_USU` (`cod_usuario`),
  CONSTRAINT `FK_MOV_CAJA_COMPRA_COD_PROV` FOREIGN KEY (`cod_proveedor`) REFERENCES `proveedor` (`cod_proveedor`),
  CONSTRAINT `FK_MOV_CAJA_COMPRA_COD_SUC` FOREIGN KEY (`cod_sucursal`) REFERENCES `sucursal` (`cod_sucursal`),
  CONSTRAINT `FK_MOV_CAJA_COMPRA_COD_USU` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `movimiento_caja_compra` */

/*Table structure for table `movimiento_caja_venta` */

DROP TABLE IF EXISTS `movimiento_caja_venta`;

CREATE TABLE `movimiento_caja_venta` (
  `tipo_mov_caja` varchar(5) NOT NULL,
  `ser_mov_caja` varchar(5) NOT NULL,
  `nro_mov_caja` int(10) NOT NULL,
  `fecha_mov_caja_venta` date DEFAULT NULL,
  `cod_sucursal` varchar(5) DEFAULT NULL,
  `cod_caja` varchar(5) DEFAULT NULL,
  `cod_cliente` int(11) DEFAULT NULL,
  `cod_usuario` varchar(15) DEFAULT NULL,
  `numero_hab` int(11) DEFAULT NULL,
  `total_mov_caja` decimal(10,2) DEFAULT NULL,
  `anulado` varchar(1) DEFAULT NULL,
  `fecha_anulacion` date DEFAULT NULL,
  PRIMARY KEY (`tipo_mov_caja`,`ser_mov_caja`,`nro_mov_caja`),
  KEY `nro_mov_caja` (`nro_mov_caja`),
  KEY `FK_MOV_CAJ_VEN_CLIENTE` (`cod_cliente`),
  KEY `FK_MOV_CAJ_VEN_USUARIO` (`cod_usuario`),
  KEY `FK_MOV_CAJ_VEN_CAJA` (`cod_caja`,`cod_sucursal`),
  KEY `FK_MOV_CAJ_VEN_MOV` (`cod_sucursal`,`cod_caja`),
  CONSTRAINT `FK_MOV_CAJ_VEN_CLIENTE` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`cod_cliente`),
  CONSTRAINT `FK_MOV_CAJ_VEN_MOV` FOREIGN KEY (`cod_sucursal`, `cod_caja`) REFERENCES `caja` (`cod_sucursal`, `cod_caja`),
  CONSTRAINT `FK_MOV_CAJ_VEN_SUC` FOREIGN KEY (`cod_sucursal`) REFERENCES `sucursal` (`cod_sucursal`),
  CONSTRAINT `FK_MOV_CAJ_VEN_USUARIO` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `movimiento_caja_venta` */

/*Table structure for table `movimiento_comprobante_compra` */

DROP TABLE IF EXISTS `movimiento_comprobante_compra`;

CREATE TABLE `movimiento_comprobante_compra` (
  `tipo_mov_caja_com` varchar(5) NOT NULL,
  `ser_mov_caja_com` varchar(5) NOT NULL,
  `nro_mov_caja_com` int(10) NOT NULL,
  `cod_sucursal` varchar(5) NOT NULL,
  `tipo_transacc` int(5) NOT NULL,
  `sub_tipo_transacc` int(5) NOT NULL,
  `tipo_comprobante_com` varchar(5) NOT NULL,
  `ser_comprobante_com` varchar(15) NOT NULL,
  `nro_comprobante_com` int(10) NOT NULL,
  `total_comprobante_com` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`tipo_mov_caja_com`,`ser_mov_caja_com`,`nro_mov_caja_com`,`cod_sucursal`,`tipo_transacc`,`sub_tipo_transacc`,`tipo_comprobante_com`,`ser_comprobante_com`,`nro_comprobante_com`),
  KEY `FK_MOV_COMP_COMPRA_COD_SUC` (`cod_sucursal`),
  KEY `FK_MOV_COMP_COMPRA_TIP_TRANS` (`tipo_transacc`),
  KEY `FK_MOV_COMP_COMPRA_SUB_TIP_TRANS` (`sub_tipo_transacc`),
  KEY `FK_MOV_COMP_COMPRA_COMP` (`tipo_comprobante_com`,`ser_comprobante_com`,`nro_comprobante_com`),
  CONSTRAINT `FK_MOV_COMP_COMPRA_COD_SUC` FOREIGN KEY (`cod_sucursal`) REFERENCES `sucursal` (`cod_sucursal`),
  CONSTRAINT `FK_MOV_COMP_COMPRA_COMP` FOREIGN KEY (`tipo_comprobante_com`, `ser_comprobante_com`, `nro_comprobante_com`) REFERENCES `comprobante_cabecera_compra` (`cod_tipo_comp`, `ser_timb_comp`, `nro_comprob_comp`),
  CONSTRAINT `FK_MOV_COMP_COMPRA_SUB_TIP_TRANS` FOREIGN KEY (`sub_tipo_transacc`) REFERENCES `sub_tipo_transaccion` (`cod_sub_tipo_trans`),
  CONSTRAINT `FK_MOV_COMP_COMPRA_TIP_TRANS` FOREIGN KEY (`tipo_transacc`) REFERENCES `tipo_transaccion` (`cod_tipo_trans`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `movimiento_comprobante_compra` */

/*Table structure for table `movimiento_comprobante_venta` */

DROP TABLE IF EXISTS `movimiento_comprobante_venta`;

CREATE TABLE `movimiento_comprobante_venta` (
  `tipo_mov_caja` varchar(5) NOT NULL,
  `ser_mov_caja` varchar(5) NOT NULL,
  `nro_mov_caja` int(10) NOT NULL,
  `cod_sucursal` varchar(5) NOT NULL,
  `tipo_comprobante` varchar(5) NOT NULL,
  `ser_comprobante` varchar(5) NOT NULL,
  `nro_comprobante` int(10) NOT NULL,
  `total_comprobante` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`tipo_mov_caja`,`ser_mov_caja`,`nro_mov_caja`,`cod_sucursal`,`tipo_comprobante`,`ser_comprobante`,`nro_comprobante`),
  KEY `FK_MOV_COMP_VEN_SUC` (`cod_sucursal`),
  CONSTRAINT `FK_MOV_COMP_VEN_SUC` FOREIGN KEY (`cod_sucursal`) REFERENCES `sucursal` (`cod_sucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `movimiento_comprobante_venta` */

/*Table structure for table `pais` */

DROP TABLE IF EXISTS `pais`;

CREATE TABLE `pais` (
  `cod_pais` int(10) NOT NULL AUTO_INCREMENT,
  `desc_pais` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cod_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `pais` */

insert  into `pais`(`cod_pais`,`desc_pais`) values 
(1,'PARAGUAY'),
(2,'ARGENTINA'),
(3,'BRASIL'),
(4,'ECUADOR'),
(5,'CHILE'),
(6,'URUGUAY'),
(7,'VENEZUELA'),
(8,'COLOMBIA');

/*Table structure for table `persona` */

DROP TABLE IF EXISTS `persona`;

CREATE TABLE `persona` (
  `cod_persona` int(15) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) NOT NULL,
  `cod_tipo_doc` varchar(10) DEFAULT NULL,
  `ruc_ci` varchar(20) DEFAULT NULL,
  `cod_ciudad` int(10) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `direccion_trabajo` varchar(100) DEFAULT NULL,
  `telefono_domicilio` varchar(50) DEFAULT NULL,
  `telefono_trabajo` varchar(50) DEFAULT NULL,
  `celular` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `cod_estado_civil` varchar(5) DEFAULT NULL,
  `cod_pais` int(10) DEFAULT NULL,
  `es_banco` varchar(1) DEFAULT NULL,
  `gen_cliente` varchar(1) DEFAULT NULL,
  `cod_sucursal` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`cod_persona`),
  UNIQUE KEY `INDEX_RUC_CI` (`ruc_ci`),
  KEY `INDEX_COD_CIUDAD` (`cod_ciudad`),
  KEY `INDEX_COD_TIP_DOC` (`cod_tipo_doc`),
  KEY `INDEX_COD_EST_CIV` (`cod_estado_civil`),
  KEY `INDEX_COD_PAIS` (`cod_pais`),
  FULLTEXT KEY `INDEX_CI` (`ruc_ci`),
  CONSTRAINT `FK_PERSONA_COD_CIU` FOREIGN KEY (`cod_ciudad`) REFERENCES `ciudad` (`cod_ciudad`),
  CONSTRAINT `FK_PERSONA_COD_EST_CIV` FOREIGN KEY (`cod_estado_civil`) REFERENCES `estado_civil` (`cod_estado_civil`),
  CONSTRAINT `FK_PERSONA_COD_PAIS` FOREIGN KEY (`cod_pais`) REFERENCES `pais` (`cod_pais`),
  CONSTRAINT `FK_PERSONA_TIP_DOC` FOREIGN KEY (`cod_tipo_doc`) REFERENCES `tipo_documento` (`cod_tipo_doc`)
) ENGINE=InnoDB AUTO_INCREMENT=2571 DEFAULT CHARSET=utf8;

/*Data for the table `persona` */

insert  into `persona`(`cod_persona`,`nombre`,`cod_tipo_doc`,`ruc_ci`,`cod_ciudad`,`direccion`,`direccion_trabajo`,`telefono_domicilio`,`telefono_trabajo`,`celular`,`fecha_nacimiento`,`cod_estado_civil`,`cod_pais`,`es_banco`,`gen_cliente`,`cod_sucursal`) values 
(1,'ADMINISTRADOR DEL SISTEMA',NULL,NULL,1,'AREGUA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'01'),
(2,'PERSONA OCASIONAL',NULL,NULL,1,'CAACUPEMI ',NULL,NULL,NULL,NULL,NULL,'SOL',1,'N','N','01'),
(2568,'JONATHAN TORRES','CI','4749347',1,'CAACUPEMI',NULL,NULL,NULL,'0985-516-950','1993-06-15','SOL',1,'N','S','01'),
(2569,'PROVEEDOR DE PRUEBA','CI','999',1,'CAACUPEMI',NULL,NULL,NULL,NULL,NULL,'SOL',1,'N','N','01');

/*Table structure for table `planes_moviles` */

DROP TABLE IF EXISTS `planes_moviles`;

CREATE TABLE `planes_moviles` (
  `cod_plan` int(5) NOT NULL AUTO_INCREMENT,
  `descripcion_plan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cod_plan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `planes_moviles` */

/*Table structure for table `planes_vigencia` */

DROP TABLE IF EXISTS `planes_vigencia`;

CREATE TABLE `planes_vigencia` (
  `cod_plan` int(5) NOT NULL,
  `fecha_desde` date NOT NULL,
  `fecha_hasta` date DEFAULT NULL,
  `importe_plan` decimal(10,2) DEFAULT NULL,
  `ind_renov` varchar(1) DEFAULT NULL,
  `cod_plan_renov` int(5) DEFAULT NULL,
  `cant_cuotas` int(5) DEFAULT NULL,
  PRIMARY KEY (`cod_plan`,`fecha_desde`),
  KEY `FK_PLANES_VIG_PLAN_RENOV` (`cod_plan_renov`),
  CONSTRAINT `FK_PLANES_VIG_COD_PLAN` FOREIGN KEY (`cod_plan`) REFERENCES `planes_moviles` (`cod_plan`),
  CONSTRAINT `FK_PLANES_VIG_PLAN_RENOV` FOREIGN KEY (`cod_plan_renov`) REFERENCES `planes_moviles` (`cod_plan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `planes_vigencia` */

/*Table structure for table `proveedor` */

DROP TABLE IF EXISTS `proveedor`;

CREATE TABLE `proveedor` (
  `cod_proveedor` int(10) NOT NULL AUTO_INCREMENT,
  `cod_persona` int(10) DEFAULT NULL,
  `cod_tipo_prov` varchar(5) DEFAULT NULL,
  `razon_social` varchar(80) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`cod_proveedor`),
  KEY `INDEX_COD_PERSONA` (`cod_persona`),
  KEY `INDEX_COD_TIPO_PROV` (`cod_tipo_prov`),
  CONSTRAINT `FK_PROVEEDOR_COD_PERSONA` FOREIGN KEY (`cod_persona`) REFERENCES `persona` (`cod_persona`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `FK_PROVEEDOR_TIP_PROV` FOREIGN KEY (`cod_tipo_prov`) REFERENCES `tipo_prov_client` (`cod_tipo_provcl`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `proveedor` */

insert  into `proveedor`(`cod_proveedor`,`cod_persona`,`cod_tipo_prov`,`razon_social`,`estado`) values 
(1,2569,'GRAL',NULL,'A');

/*Table structure for table `prueba` */

DROP TABLE IF EXISTS `prueba`;

CREATE TABLE `prueba` (
  `id_prueba` int(11) NOT NULL,
  `objeto_prueba` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id_prueba`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `prueba` */

insert  into `prueba`(`id_prueba`,`objeto_prueba`) values 
(1,'JONATHAN DAVID TORRES VILLAGRA'),
(2,'RICARDO JAVIER TORRES VILLAGRA'),
(3,'FRANCISCO JAVIER AMARILLA TORRES'),
(4,'WILLIAM DAVID CESPEDES CORONEL'),
(5,'VENTAS CASA CENTRAL'),
(6,'COBRADOR CASA CENTRAL'),
(7,'VENTAS CLIENTE MOSTRADOR'),
(8,'NGO'),
(9,'LASER IMPORT'),
(10,'AM REGUERA'),
(11,'PROVEEDOR DE PRUEBA'),
(12,'BANCO FAMILIAR'),
(13,'BANCO VISION'),
(14,'BANCO ITAU'),
(16,'ADMINISTRADOR DEL SISTEMA'),
(17,'OCASIONAL'),
(20,'PERSONA DE PRUEBA'),
(21,'MARIA VILLAGRA'),
(22,'WALTER LOPEZ KIESSE');

/*Table structure for table `recibo_compra_cabecera` */

DROP TABLE IF EXISTS `recibo_compra_cabecera`;

CREATE TABLE `recibo_compra_cabecera` (
  `tipo_rec_comp` varchar(3) NOT NULL,
  `ser_rec_comp` varchar(7) NOT NULL,
  `nro_rec_comp` int(10) NOT NULL,
  `cod_sucursal` varchar(5) DEFAULT NULL,
  `fecha_rec_comp` date DEFAULT NULL,
  `cod_proveedor` int(10) DEFAULT NULL,
  `cod_moneda` varchar(3) DEFAULT NULL,
  `cod_usuario` varchar(10) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  `total_rec_comp` int(10) DEFAULT NULL,
  `comentario` varchar(80) DEFAULT NULL,
  `pagado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`tipo_rec_comp`,`ser_rec_comp`,`nro_rec_comp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `recibo_compra_cabecera` */

/*Table structure for table `recibo_detalle_compra` */

DROP TABLE IF EXISTS `recibo_detalle_compra`;

CREATE TABLE `recibo_detalle_compra` (
  `tipo_rec_comp` varchar(3) NOT NULL,
  `ser_rec_comp` varchar(7) NOT NULL,
  `nro_rec_comp` int(10) NOT NULL,
  `tipo_transaccion` int(5) NOT NULL,
  `sub_tipo_transac` int(5) NOT NULL,
  `tipo_comprobante_ref` varchar(3) NOT NULL,
  `ser_comprobante_ref` varchar(7) NOT NULL,
  `nro_comprobante_ref` int(10) NOT NULL,
  `nro_cuota` int(5) NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `monto_cuota` int(10) DEFAULT NULL,
  `importe_total` int(10) DEFAULT NULL,
  PRIMARY KEY (`tipo_rec_comp`,`ser_rec_comp`,`nro_rec_comp`,`tipo_transaccion`,`sub_tipo_transac`,`tipo_comprobante_ref`,`ser_comprobante_ref`,`nro_comprobante_ref`,`nro_cuota`,`fecha_vencimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `recibo_detalle_compra` */

/*Table structure for table `recibo_detalle_venta` */

DROP TABLE IF EXISTS `recibo_detalle_venta`;

CREATE TABLE `recibo_detalle_venta` (
  `tipo_recibo` varchar(3) NOT NULL,
  `ser_recibo` varchar(3) NOT NULL,
  `nro_recibo` int(10) NOT NULL,
  `tipo_transaccion` int(5) NOT NULL,
  `sub_tipo_transac` int(5) NOT NULL,
  `tipo_comprobante_ref` varchar(3) NOT NULL,
  `ser_comprobante_ref` varchar(3) NOT NULL,
  `nro_comprobante_ref` int(10) NOT NULL,
  `nro_cuota` int(5) NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `monto_cuota` decimal(10,2) DEFAULT NULL,
  `importe_total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`tipo_recibo`,`ser_recibo`,`nro_recibo`,`tipo_transaccion`,`sub_tipo_transac`,`tipo_comprobante_ref`,`ser_comprobante_ref`,`nro_comprobante_ref`,`nro_cuota`,`fecha_vencimiento`),
  KEY `FK_DET_REC_VEN_TRANS` (`tipo_transaccion`),
  KEY `FK_DET_REC_VEN_SUB_TIP_TRANS` (`sub_tipo_transac`),
  KEY `FK_DET_REC_VEN_SAL_CLIEN` (`tipo_comprobante_ref`,`ser_comprobante_ref`,`nro_comprobante_ref`,`nro_cuota`),
  CONSTRAINT `FK_DET_REC_VEN_SAL_CLIEN` FOREIGN KEY (`tipo_comprobante_ref`, `ser_comprobante_ref`, `nro_comprobante_ref`, `nro_cuota`) REFERENCES `saldo_cliente` (`tipo_comprobante`, `ser_comprobante`, `nro_comprobante`, `nro_cuota`),
  CONSTRAINT `FK_DET_REC_VEN_SUB_TIP_TRANS` FOREIGN KEY (`sub_tipo_transac`) REFERENCES `sub_tipo_transaccion` (`cod_sub_tipo_trans`),
  CONSTRAINT `FK_DET_REC_VEN_TRANS` FOREIGN KEY (`tipo_transaccion`) REFERENCES `tipo_transaccion` (`cod_tipo_trans`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `recibo_detalle_venta` */

/*Table structure for table `recibo_venta_cabecera` */

DROP TABLE IF EXISTS `recibo_venta_cabecera`;

CREATE TABLE `recibo_venta_cabecera` (
  `tipo_recibo` varchar(3) NOT NULL,
  `ser_recibo` varchar(3) NOT NULL,
  `nro_recibo` int(10) NOT NULL,
  `cod_sucursal` varchar(5) DEFAULT NULL,
  `fecha_recibo` date DEFAULT NULL,
  `cod_cliente` int(10) DEFAULT NULL,
  `cod_cobrador` varchar(3) DEFAULT NULL,
  `cod_moneda` varchar(3) DEFAULT NULL,
  `cod_usuario` varchar(10) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  `total_recibo` decimal(10,2) DEFAULT NULL,
  `comentario` varchar(80) DEFAULT NULL,
  `cobrado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`tipo_recibo`,`ser_recibo`,`nro_recibo`),
  KEY `FK_REC_VEN_CAB_TAL` (`tipo_recibo`,`ser_recibo`,`cod_sucursal`),
  KEY `FK_REC_VEN_CAB_SUC` (`cod_sucursal`),
  KEY `FK_REC_VEN_CAB_CLIEN` (`cod_cliente`),
  KEY `FK_REC_VEN_CAB_COB` (`cod_cobrador`),
  KEY `FK_REC_VEN_CAB_MON` (`cod_moneda`),
  KEY `FK_REC_VEN_CAB_USU` (`cod_usuario`),
  CONSTRAINT `FK_REC_VEN_CAB_CLIEN` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`cod_cliente`),
  CONSTRAINT `FK_REC_VEN_CAB_COB` FOREIGN KEY (`cod_cobrador`) REFERENCES `cobrador` (`cod_cobrador`),
  CONSTRAINT `FK_REC_VEN_CAB_MON` FOREIGN KEY (`cod_moneda`) REFERENCES `moneda` (`cod_moneda`),
  CONSTRAINT `FK_REC_VEN_CAB_SUC` FOREIGN KEY (`cod_sucursal`) REFERENCES `sucursal` (`cod_sucursal`),
  CONSTRAINT `FK_REC_VEN_CAB_TAL` FOREIGN KEY (`tipo_recibo`, `ser_recibo`, `cod_sucursal`) REFERENCES `talonario` (`tipo_talonario`, `serie`, `cod_sucursal`),
  CONSTRAINT `FK_REC_VEN_CAB_USU` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `recibo_venta_cabecera` */

/*Table structure for table `saldo_cliente` */

DROP TABLE IF EXISTS `saldo_cliente`;

CREATE TABLE `saldo_cliente` (
  `tipo_comprobante` varchar(3) NOT NULL,
  `ser_comprobante` varchar(3) NOT NULL,
  `nro_comprobante` int(10) NOT NULL,
  `nro_cuota` int(5) NOT NULL,
  `cod_sucursal` varchar(2) DEFAULT NULL,
  `cod_cliente` int(10) DEFAULT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `monto_cuota` decimal(10,2) DEFAULT NULL,
  `cod_moneda` varchar(5) DEFAULT NULL,
  `saldo_cuota` decimal(10,2) DEFAULT NULL,
  `cod_usuario` varchar(10) DEFAULT NULL,
  `cod_referencia` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tipo_comprobante`,`ser_comprobante`,`nro_comprobante`,`nro_cuota`),
  KEY `FK_SALD_CLI_CLIENT` (`cod_cliente`),
  KEY `FK_SALD_CLI_SUC` (`cod_sucursal`),
  KEY `FK_SALD_CLI_MONE` (`cod_moneda`),
  KEY `FK_SALD_CLI_US` (`cod_usuario`),
  CONSTRAINT `FK_SALD_CLI_CLIENT` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`cod_cliente`),
  CONSTRAINT `FK_SALD_CLI_COMP_CAB` FOREIGN KEY (`tipo_comprobante`, `ser_comprobante`, `nro_comprobante`) REFERENCES `comprobante_cabecera_venta` (`tipo_comprobante`, `ser_comprobante`, `nro_comprobante`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALD_CLI_MONE` FOREIGN KEY (`cod_moneda`) REFERENCES `moneda` (`cod_moneda`),
  CONSTRAINT `FK_SALD_CLI_SUC` FOREIGN KEY (`cod_sucursal`) REFERENCES `sucursal` (`cod_sucursal`),
  CONSTRAINT `FK_SALD_CLI_US` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `saldo_cliente` */

/*Table structure for table `saldo_proveedor` */

DROP TABLE IF EXISTS `saldo_proveedor`;

CREATE TABLE `saldo_proveedor` (
  `tipo_comprobante` varchar(3) NOT NULL,
  `ser_comprobante` varchar(15) NOT NULL,
  `nro_comprobante` int(10) NOT NULL,
  `nro_cuota` int(5) NOT NULL,
  `cod_sucursal` varchar(5) DEFAULT NULL,
  `cod_proveedor` int(10) DEFAULT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `monto_cuota` int(10) DEFAULT NULL,
  `cod_moneda` varchar(5) DEFAULT NULL,
  `saldo_cuota` decimal(10,2) DEFAULT NULL,
  `cod_usuario` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`tipo_comprobante`,`ser_comprobante`,`nro_comprobante`,`nro_cuota`),
  CONSTRAINT `FK_SALDO_PROV_TIP_SER_NRO` FOREIGN KEY (`tipo_comprobante`, `ser_comprobante`, `nro_comprobante`) REFERENCES `comprobante_cabecera_compra` (`cod_tipo_comp`, `ser_timb_comp`, `nro_comprob_comp`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `saldo_proveedor` */

/*Table structure for table `serie_comprobante` */

DROP TABLE IF EXISTS `serie_comprobante`;

CREATE TABLE `serie_comprobante` (
  `tipo_comprobante` varchar(3) NOT NULL,
  `ser_comprobante` varchar(2) NOT NULL,
  `cod_sucursal` varchar(5) NOT NULL,
  `numero_inicial` int(15) DEFAULT NULL,
  `numero_final` int(15) DEFAULT NULL,
  `ser_timbrado` varchar(30) DEFAULT NULL,
  `numero_timbrado` varchar(30) DEFAULT NULL,
  `fecha_vigencia` date DEFAULT NULL,
  PRIMARY KEY (`tipo_comprobante`,`ser_comprobante`,`cod_sucursal`),
  KEY `FK_SER_COMP_COD_SUC` (`cod_sucursal`),
  CONSTRAINT `FK_SER_COMP_COD_SUC` FOREIGN KEY (`cod_sucursal`) REFERENCES `sucursal` (`cod_sucursal`),
  CONSTRAINT `FK_SER_COMP_TIP_COMP` FOREIGN KEY (`tipo_comprobante`) REFERENCES `tipo_comprobante` (`tipo_comprobante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `serie_comprobante` */

insert  into `serie_comprobante`(`tipo_comprobante`,`ser_comprobante`,`cod_sucursal`,`numero_inicial`,`numero_final`,`ser_timbrado`,`numero_timbrado`,`fecha_vigencia`) values 
('AJU','A','01',1,1000,'001-001','123366','2020-10-31'),
('FCO','A','01',1,99999999,'001-001','123456','2019-04-16'),
('FCO','B','01',1,99999999,'001-002','123456','2019-04-16'),
('FCO','C','01',1,99999999,'001-001','123456','2019-06-20'),
('FCR','A','01',1,99999999,'001-001','123456','2019-04-16'),
('FCR','B','01',1,999999999,'001-002','1234567','2019-04-16'),
('FCR','C','01',1,99999999,'001-001','123456','2019-06-20'),
('REC','A','01',1,10000000,'001-001','0',NULL);

/*Table structure for table `sub_tipo_transaccion` */

DROP TABLE IF EXISTS `sub_tipo_transaccion`;

CREATE TABLE `sub_tipo_transaccion` (
  `cod_sub_tipo_trans` int(5) NOT NULL AUTO_INCREMENT,
  `cod_tipo_trans` int(5) NOT NULL,
  `cod_modulo` varchar(5) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`cod_sub_tipo_trans`,`cod_tipo_trans`,`cod_modulo`),
  UNIQUE KEY `cod_sub_tipo_trans` (`cod_sub_tipo_trans`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `sub_tipo_transaccion` */

insert  into `sub_tipo_transaccion`(`cod_sub_tipo_trans`,`cod_tipo_trans`,`cod_modulo`,`descripcion`,`estado`) values 
(1,1,'CC','CANCELACION DE COMPROBANTE VENTA',NULL),
(2,1,'CC','COBROS A CUENTA',NULL),
(3,1,'CC','A APLICAR',NULL),
(4,2,'CC','EFECTIVO',NULL),
(5,2,'CC','CHEQUE',NULL),
(6,3,'CC','TARJETA',NULL),
(7,3,'ST','ENTRADA DE ARTICULOS EN STOCK POR COMPRAS','A'),
(8,3,'ST','ENTRADA DE ARTICULOS EN STOCK POR AJUSTE','A'),
(9,3,'ST','ENTRADA DE ARTICULOS EN STOCK POR NOTAS DE CREDITO','A'),
(10,4,'ST','SALIDA DE ARTICULOS POR VENTAS','A'),
(11,4,'ST','SALIDA DE ARTICULOS POR AJUSTE','A'),
(12,4,'ST','SALIDA DE ARTICULOS POR NOTAS DE CREDITO','A'),
(13,5,'CP','CANCELACION COMPROBANTE COMPRA','A'),
(14,5,'CP','PAGOS A CUENTA','A');

/*Table structure for table `sucursal` */

DROP TABLE IF EXISTS `sucursal`;

CREATE TABLE `sucursal` (
  `cod_sucursal` varchar(10) NOT NULL,
  `desc_sucursal` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cod_sucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sucursal` */

insert  into `sucursal`(`cod_sucursal`,`desc_sucursal`) values 
('01','AREGUA'),
('02','LUQUE');

/*Table structure for table `talonario` */

DROP TABLE IF EXISTS `talonario`;

CREATE TABLE `talonario` (
  `tipo_talonario` varchar(3) NOT NULL,
  `serie` varchar(2) NOT NULL,
  `cod_sucursal` varchar(5) NOT NULL,
  `nro_talonario` int(5) NOT NULL,
  `numero_inicial` int(15) DEFAULT NULL,
  `numero_final` int(15) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`tipo_talonario`,`serie`,`cod_sucursal`,`nro_talonario`),
  CONSTRAINT `FK_TAL_TIP_SER_COMP` FOREIGN KEY (`tipo_talonario`, `serie`, `cod_sucursal`) REFERENCES `serie_comprobante` (`tipo_comprobante`, `ser_comprobante`, `cod_sucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `talonario` */

insert  into `talonario`(`tipo_talonario`,`serie`,`cod_sucursal`,`nro_talonario`,`numero_inicial`,`numero_final`,`estado`) values 
('AJU','A','01',1,1,1000,'A'),
('FCO','A','01',1,1,999999999,'A'),
('FCO','B','01',1,1,999999999,'A'),
('FCR','A','01',1,1,999999999,'A'),
('FCR','B','01',1,1,999999999,'A'),
('REC','A','01',1,1,10000000,'A');

/*Table structure for table `talonario_usuario` */

DROP TABLE IF EXISTS `talonario_usuario`;

CREATE TABLE `talonario_usuario` (
  `tipo_talonario` varchar(3) NOT NULL,
  `serie` varchar(2) NOT NULL,
  `cod_sucursal` varchar(5) NOT NULL,
  `nro_talonario` int(5) NOT NULL,
  `cod_usuario` varchar(20) NOT NULL,
  PRIMARY KEY (`tipo_talonario`,`serie`,`cod_sucursal`,`nro_talonario`,`cod_usuario`),
  KEY `FK_TAL_US_COD_USU` (`cod_usuario`),
  CONSTRAINT `FK_TAL_USU_TIP_SER_TAL` FOREIGN KEY (`tipo_talonario`, `serie`, `cod_sucursal`, `nro_talonario`) REFERENCES `talonario` (`tipo_talonario`, `serie`, `cod_sucursal`, `nro_talonario`),
  CONSTRAINT `FK_TAL_US_COD_USU` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `talonario_usuario` */

insert  into `talonario_usuario`(`tipo_talonario`,`serie`,`cod_sucursal`,`nro_talonario`,`cod_usuario`) values 
('AJU','A','01',1,'JTORRES'),
('FCO','A','01',1,'JTORRES'),
('FCR','A','01',1,'JTORRES'),
('REC','A','01',1,'JTORRES');

/*Table structure for table `tipo_cliente` */

DROP TABLE IF EXISTS `tipo_cliente`;

CREATE TABLE `tipo_cliente` (
  `cod_tipo_cliente` varchar(10) NOT NULL,
  `descripcion` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`cod_tipo_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tipo_cliente` */

insert  into `tipo_cliente`(`cod_tipo_cliente`,`descripcion`) values 
('00','GRAL'),
('01','NORMAL'),
('02','MAYORISTA');

/*Table structure for table `tipo_comprobante` */

DROP TABLE IF EXISTS `tipo_comprobante`;

CREATE TABLE `tipo_comprobante` (
  `tipo_comprobante` varchar(3) NOT NULL,
  `cod_modulo` varchar(3) NOT NULL,
  `descripcion` varchar(30) DEFAULT NULL,
  `lineas` int(2) DEFAULT NULL,
  PRIMARY KEY (`tipo_comprobante`,`cod_modulo`),
  KEY `FK_TIP_COMP_COD_MOD` (`cod_modulo`),
  CONSTRAINT `FK_TIP_COMP_COD_MOD` FOREIGN KEY (`cod_modulo`) REFERENCES `modulo_sistema` (`cod_modulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tipo_comprobante` */

insert  into `tipo_comprobante`(`tipo_comprobante`,`cod_modulo`,`descripcion`,`lineas`) values 
('AJU','ST','NOTA DE AJUSTE STOCK',10),
('FCO','VT','FACTURA CONTADO',10),
('FCR','VT','FACTURA CREDITO',10),
('NCR','VT','NOTAS DE CREDITO',10),
('REC','CC','RECIBO VENTA',10),
('REM','ST','NOTA DE REMISION',NULL);

/*Table structure for table `tipo_documento` */

DROP TABLE IF EXISTS `tipo_documento`;

CREATE TABLE `tipo_documento` (
  `cod_tipo_doc` varchar(10) NOT NULL,
  `Desc_tipo_doc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cod_tipo_doc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tipo_documento` */

insert  into `tipo_documento`(`cod_tipo_doc`,`Desc_tipo_doc`) values 
('CI','CEDULA DE INDENTIDAD'),
('DOCEX','DOCUMENTO EXTRANJERO'),
('PAS','PASAPORTE'),
('RUC','REGISTRO UNICO CONTRIBUYENTE');

/*Table structure for table `tipo_prov_client` */

DROP TABLE IF EXISTS `tipo_prov_client`;

CREATE TABLE `tipo_prov_client` (
  `cod_tipo_provcl` varchar(10) NOT NULL,
  `desc_tipo_provcl` varchar(80) NOT NULL,
  PRIMARY KEY (`cod_tipo_provcl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tipo_prov_client` */

insert  into `tipo_prov_client`(`cod_tipo_provcl`,`desc_tipo_provcl`) values 
('ELECT','ELECTRICOS/ELECTRONICOS'),
('GRAL','GENERAL'),
('INSOF','INSUMOS P/OFICINAS');

/*Table structure for table `tipo_transaccion` */

DROP TABLE IF EXISTS `tipo_transaccion`;

CREATE TABLE `tipo_transaccion` (
  `cod_tipo_trans` int(5) NOT NULL AUTO_INCREMENT,
  `cod_modulo` varchar(5) NOT NULL,
  `descripcion` varchar(80) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`cod_tipo_trans`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `tipo_transaccion` */

insert  into `tipo_transaccion`(`cod_tipo_trans`,`cod_modulo`,`descripcion`,`estado`) values 
(1,'CC','CONCEPTO PARA RECIBOS','A'),
(2,'CC','CONCEPTO PARA COBROS','A'),
(3,'ST','ENTRADAS DE ARTICULOS','A'),
(4,'ST','SALIDAS DE ARTICULOS','A'),
(5,'CP','CONCEPTO PARA PAGOS','A'),
(6,'CP','CONCEPTO FORMA DE PAGOS','A');

/*Table structure for table `unidad_med_articulo` */

DROP TABLE IF EXISTS `unidad_med_articulo`;

CREATE TABLE `unidad_med_articulo` (
  `cod_un_med` varchar(5) NOT NULL,
  `desc_un_med` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cod_un_med`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `unidad_med_articulo` */

insert  into `unidad_med_articulo`(`cod_un_med`,`desc_un_med`) values 
('CAJ','CAJA'),
('GR','GRAMO'),
('KG','KILOGRAMO'),
('LT','LITRO'),
('ML','MILILITRO'),
('PR','PRUEBA'),
('UN','UNIDAD');

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `cod_usuario` varchar(10) NOT NULL,
  `clave_usuario` varchar(50) DEFAULT NULL,
  `cod_persona` int(15) DEFAULT NULL,
  `cod_grupo` varchar(15) DEFAULT NULL,
  `cod_sucursal` varchar(15) DEFAULT NULL,
  `cod_deposito` varchar(15) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`cod_usuario`),
  KEY `FK_USUARIO_COD_PERS` (`cod_persona`),
  KEY `FK_USUARIO_COD_GRUP` (`cod_grupo`),
  KEY `FK_USUARIO_COD_SUC` (`cod_sucursal`),
  KEY `FK_USUARIO_COD_DEP` (`cod_deposito`),
  CONSTRAINT `FK_USUARIO_COD_DEP` FOREIGN KEY (`cod_deposito`) REFERENCES `deposito_articulo` (`cod_sucursal`),
  CONSTRAINT `FK_USUARIO_COD_GRUP` FOREIGN KEY (`cod_grupo`) REFERENCES `grupo_usuario` (`cod_grupo`),
  CONSTRAINT `FK_USUARIO_COD_PERS` FOREIGN KEY (`cod_persona`) REFERENCES `persona` (`cod_persona`),
  CONSTRAINT `FK_USUARIO_COD_SUC` FOREIGN KEY (`cod_sucursal`) REFERENCES `sucursal` (`cod_sucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `usuario` */

insert  into `usuario`(`cod_usuario`,`clave_usuario`,`cod_persona`,`cod_grupo`,`cod_sucursal`,`cod_deposito`,`estado`) values 
('JTORRES','JTORRES',2568,'ADMIN','01','01','A'),
('root','manager',1,'ADMIN','01','01','A');

/*Table structure for table `vendedor` */

DROP TABLE IF EXISTS `vendedor`;

CREATE TABLE `vendedor` (
  `cod_vendedor` varchar(20) NOT NULL,
  `cod_persona` int(10) DEFAULT NULL,
  `cod_zona` varchar(10) DEFAULT NULL,
  `descripcion` varchar(80) DEFAULT NULL,
  `porc_comision` int(10) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`cod_vendedor`),
  KEY `INDEX_COD_PERS` (`cod_persona`),
  CONSTRAINT `FK_VENDEDOR_COD_PERSONA` FOREIGN KEY (`cod_persona`) REFERENCES `persona` (`cod_persona`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vendedor` */

insert  into `vendedor`(`cod_vendedor`,`cod_persona`,`cod_zona`,`descripcion`,`porc_comision`,`estado`) values 
('01',NULL,NULL,NULL,NULL,'A'),
('02',NULL,NULL,NULL,NULL,'A');

/* Trigger structure for table `comprobante_cabecera_compra` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trigger_generar_saldo_proveedor` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trigger_generar_saldo_proveedor` AFTER INSERT ON `comprobante_cabecera_compra` FOR EACH ROW BEGIN
IF new.cod_tipo_comp = 'FCR' AND IFNULL(new.cod_cond_comp,0) > 0 THEN
	CALL generar_saldo_proveedor(new.cod_tipo_comp,new.ser_timb_comp,new.nro_comprob_comp,new.cod_cond_comp,new.cod_sucursal,new.cod_proveedor,new.fecha_comprob_comp,new.total_comprob_comp,new.cod_moneda,new.total_comprob_comp,new.cod_usuario);
END IF;
END */$$


DELIMITER ;

/* Trigger structure for table `comprobante_cabecera_venta` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trigger_generar_saldo_cliente` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trigger_generar_saldo_cliente` AFTER INSERT ON `comprobante_cabecera_venta` FOR EACH ROW BEGIN
IF new.tipo_comprobante = 'FCR' AND IFNULL(new.cod_condicion_venta,0) > 0 THEN
	CALL generar_saldo_cliente(new.tipo_comprobante,new.ser_comprobante,new.nro_comprobante,new.cod_condicion_venta,new.cod_sucursal,new.cod_cliente,new.fecha_comprobante,new.monto_cuota,new.cod_moneda,new.monto_cuota,new.cod_usuario,new.comentario);
END IF;
END */$$


DELIMITER ;

/* Trigger structure for table `comprobante_cabecera_venta` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trigger_borra_sald_anul_comp_venta` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trigger_borra_sald_anul_comp_venta` AFTER UPDATE ON `comprobante_cabecera_venta` FOR EACH ROW 
 BEGIN
/*IF (old.estado <> new.estado) THEN*/
IF new.estado = 'A'   THEN
   CALL act_exist_anul_comp_venta(old.tipo_comprobante,old.ser_comprobante,old.nro_comprobante,old.cod_sucursal,old.cod_deposito);
   if new.tipo_comprobante='FCR' then  
      DELETE  FROM saldo_cliente 
      WHERE tipo_comprobante=old.tipo_comprobante
	AND ser_comprobante=old.ser_comprobante
	AND nro_comprobante=old.nro_comprobante;
   end if;
END IF;
END */$$


DELIMITER ;

/* Trigger structure for table `comprobante_detalle_compra` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trigger_activa_stock_compra` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trigger_activa_stock_compra` AFTER INSERT ON `comprobante_detalle_compra` FOR EACH ROW BEGIN
declare ea  varchar(1);
DECLARE suc VARCHAR(5);
DECLARE dep VARCHAR(5);
	
	SELECT 	cod_sucursal,cod_deposito
	INTO 	suc,dep
	FROM 	comprobante_cabecera_compra
	WHERE	cod_tipo_comp=new.cod_tipo_comp
		AND ser_timb_comp=new.ser_timb_comp
		AND nro_comprob_comp=new.nro_comprob_comp;
	
	SELECT 'S' INTO ea
	FROM 	existencia_articulo 
	WHERE 	cod_articulo=new.cod_producto
		and cod_un_medida=new.cod_un_med
		and nro_lote=new.nro_lote
		AND cod_sucursal=suc
		AND cod_deposito=dep
		AND tipo_transacc=3
		AND sub_tipo_transacc=7;
	   	
	IF ea = 'S' THEN
		UPDATE  existencia_articulo SET cantidad=cantidad+new.cantidad_prod WHERE cod_articulo=new.cod_producto and cod_un_medida=new.cod_un_med and nro_lote=new.nro_lote AND cod_sucursal=suc AND cod_deposito=dep AND tipo_transacc=3 AND sub_tipo_transacc=7;
	ELSE
		CALL insertar_exist_articulo(suc,dep,new.cod_producto,new.cod_un_med,new.nro_lote,3,7,new.cantidad_prod);
	END IF;
END */$$


DELIMITER ;

/* Trigger structure for table `comprobante_detalle_compra` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trigger_act_stock_compra_delete` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trigger_act_stock_compra_delete` BEFORE DELETE ON `comprobante_detalle_compra` FOR EACH ROW BEGIN
DECLARE s VARCHAR(1);
DECLARE ea  VARCHAR(1);
DECLARE suc VARCHAR(5);
DECLARE dep VARCHAR(5);
DECLARE tip VARCHAR(5);
DECLARE tra INT(5);
DECLARE sub INT(5);
	
	SELECT 	cod_sucursal,cod_deposito,cod_tipo_comp,cod_mot_ent_sal_art,cod_sub_mot_ent_sal_art
	INTO 	suc,dep,tip,tra,sub
	FROM 	comprobante_cabecera_compra
	WHERE	cod_tipo_comp=old.cod_tipo_comp
		AND ser_timb_comp=old.ser_timb_comp
		AND nro_comprob_comp=old.nro_comprob_comp;
	
	SELECT maneja_stock INTO s
	FROM 	articulo 
	WHERE cod_articulo = old.cod_producto
		AND cod_un_med = old.cod_un_med
		AND nro_lote = old.nro_lote;
	
	
	IF tip IN('FCR','FCO') THEN
		SELECT 'S' INTO ea
		FROM 	existencia_articulo 
		WHERE 	cod_articulo = old.cod_producto
			AND cod_un_medida = old.cod_un_med
			AND nro_lote = old.nro_lote
			AND cod_sucursal = suc
			AND cod_deposito = dep
			AND tipo_transacc = 3
			AND sub_tipo_transacc = 7;
	ELSEIF tip = 'AJU' THEN
		IF tra = 3 THEN
			SELECT 'S' INTO ea
			FROM existencia_articulo 
			WHERE cod_articulo = old.cod_producto
				AND cod_un_medida = old.cod_un_med
				AND nro_lote = old.nro_lote 
				AND cod_sucursal = suc
				AND cod_deposito = dep
				AND tipo_transacc = 3
				AND sub_tipo_transacc = 8;
		END IF;
	END IF;
	   	
	
	IF s='S'  THEN
		IF tip IN('FCR','FCO') THEN
			IF ea = 'S' THEN
				UPDATE  existencia_articulo SET cantidad = cantidad-old.cantidad_prod WHERE cod_articulo = old.cod_producto AND cod_un_medida = old.cod_un_med AND nro_lote = old.nro_lote AND cod_sucursal = suc AND cod_deposito = dep AND tipo_transacc = 3 AND sub_tipo_transacc = 7;
			END IF;
		ELSEIF tip = 'AJU' THEN
			IF tra = 3 THEN
				IF ea = 'S' THEN
					UPDATE  existencia_articulo SET cantidad = cantidad+old.cantidad_prod WHERE cod_articulo = old.cod_producto AND cod_un_medida = old.cod_un_med AND nro_lote = old.nro_lote AND cod_sucursal = suc AND cod_deposito = dep AND tipo_transacc = 3 AND sub_tipo_transacc = 8;
				END IF;
			END IF;
		END IF;
	END IF;
END */$$


DELIMITER ;

/* Trigger structure for table `comprobante_detalle_venta` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trigger_desactiva_stock_venta` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trigger_desactiva_stock_venta` AFTER INSERT ON `comprobante_detalle_venta` FOR EACH ROW BEGIN
DECLARE s VARCHAR(1);
DECLARE ea VARCHAR(1);
DECLARE suc VARCHAR(5);
DECLARE dep VARCHAR(5);
DECLARE tip VARCHAR(5);
DECLARE tra INT(5);
DECLARE sub INT(5);
SELECT 	cod_sucursal,cod_deposito,tipo_comprobante,cod_mot_ent_sal_art,cod_sub_mot_ent_sal_art
INTO 	suc,dep,tip,tra,sub
FROM 	comprobante_cabecera_venta
WHERE	tipo_comprobante=new.tipo_comprobante
	AND ser_comprobante=new.ser_comprobante
	AND nro_comprobante=new.nro_comprobante;
	
SELECT maneja_stock INTO s
     FROM articulo 
     WHERE cod_articulo=new.cod_articulo
           AND cod_un_med=new.cod_un_med
	   AND nro_lote=new.nro_lote;
	   
IF tip IN('FCR','FCO') THEN
	SELECT 'S' INTO ea
	FROM existencia_articulo 
	WHERE cod_articulo = new.cod_articulo
		AND cod_un_medida = new.cod_un_med
		AND nro_lote = new.nro_lote 
		AND cod_sucursal = suc
		AND cod_deposito = dep
		AND tipo_transacc = 4
		AND sub_tipo_transacc = 10;
ELSEIF tip = 'AJU' THEN
	IF tra = 3 THEN
		SELECT 'S' INTO ea
		FROM existencia_articulo 
		WHERE cod_articulo = new.cod_articulo
			AND cod_un_medida = new.cod_un_med
			AND nro_lote = new.nro_lote 
			AND cod_sucursal = suc
			AND cod_deposito = dep
			AND tipo_transacc = 3
			AND sub_tipo_transacc = 8;
	ELSEIF tra = 4 THEN
		SELECT 'S' INTO ea
		FROM existencia_articulo 
		WHERE cod_articulo = new.cod_articulo
			AND cod_un_medida = new.cod_un_med
			AND nro_lote = new.nro_lote 
			AND cod_sucursal = suc
			AND cod_deposito = dep
			AND tipo_transacc = 4
			AND sub_tipo_transacc = 11;
	END IF;
END IF;
	   
IF s='S'  THEN
	IF tip IN('FCR','FCO') THEN
		IF ea = 'S' THEN
			UPDATE  existencia_articulo SET cantidad=cantidad+new.cantidad WHERE cod_articulo=new.cod_articulo AND cod_un_medida=new.cod_un_med AND nro_lote=new.nro_lote AND cod_sucursal=suc AND cod_deposito=dep AND tipo_transacc=4 AND sub_tipo_transacc=10;
		ELSE
			CALL insertar_exist_articulo(suc,dep,new.cod_articulo,new.cod_un_med,new.nro_lote,4,10,new.cantidad);
		END IF;
	ELSEIF tip = 'AJU' THEN
		IF tra = 3 THEN
			IF ea = 'S' THEN
				UPDATE  existencia_articulo SET cantidad=cantidad+new.cantidad WHERE cod_articulo=new.cod_articulo AND cod_un_medida=new.cod_un_med AND nro_lote=new.nro_lote AND cod_sucursal=suc AND cod_deposito=dep AND tipo_transacc=3 AND sub_tipo_transacc=8;
			ELSE
				CALL insertar_exist_articulo(suc,dep,new.cod_articulo,new.cod_un_med,new.nro_lote,3,8,new.cantidad);
			END IF;
		ELSEIF tra = 4 THEN
			IF ea = 'S' THEN
				UPDATE  existencia_articulo SET cantidad=cantidad+new.cantidad WHERE cod_articulo=new.cod_articulo AND cod_un_medida=new.cod_un_med AND nro_lote=new.nro_lote AND cod_sucursal=suc AND cod_deposito=dep AND tipo_transacc=4 AND sub_tipo_transacc=11;
			ELSE
				CALL insertar_exist_articulo(suc,dep,new.cod_articulo,new.cod_un_med,new.nro_lote,4,11,new.cantidad);
			END IF;
		END IF;
	END IF;
END IF;
END */$$


DELIMITER ;

/* Trigger structure for table `comprobante_detalle_venta` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trigger_act_stock_venta_delete` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trigger_act_stock_venta_delete` BEFORE DELETE ON `comprobante_detalle_venta` FOR EACH ROW BEGIN
DECLARE s VARCHAR(1);
DECLARE ea  VARCHAR(1);
DECLARE suc VARCHAR(5);
DECLARE dep VARCHAR(5);
DECLARE tip VARCHAR(5);
DECLARE tra INT(5);
DECLARE sub INT(5);
	
	SELECT 	cod_sucursal,cod_deposito,tipo_comprobante,cod_mot_ent_sal_art,cod_sub_mot_ent_sal_art
	INTO 	suc,dep,tip,tra,sub
	FROM 	comprobante_cabecera_venta
	WHERE	tipo_comprobante = old.tipo_comprobante
		AND ser_comprobante = old.ser_comprobante
		AND nro_comprobante = old.nro_comprobante;
		
	SELECT maneja_stock INTO s
	FROM articulo 
	WHERE cod_articulo = old.cod_articulo
		AND cod_un_med = old.cod_un_med
		AND nro_lote = old.nro_lote;
	
	IF tip IN('FCR','FCO') THEN
		SELECT 'S' INTO ea
		FROM 	existencia_articulo 
		WHERE 	cod_articulo = old.cod_articulo
			AND cod_un_medida = old.cod_un_med
			AND nro_lote = old.nro_lote
			AND cod_sucursal = suc
			AND cod_deposito = dep
			AND tipo_transacc = 4
			AND sub_tipo_transacc = 10;
	ELSEIF tip = 'AJU' THEN
		IF tra = 4 THEN
			SELECT 'S' INTO ea
			FROM existencia_articulo 
			WHERE cod_articulo = old.cod_articulo
				AND cod_un_medida = old.cod_un_med
				AND nro_lote = old.nro_lote 
				AND cod_sucursal = suc
				AND cod_deposito = dep
				AND tipo_transacc = 4
				AND sub_tipo_transacc = 11;
		END IF;
	END IF;
	
	IF s='S'  THEN
		IF tip IN('FCR','FCO') THEN   	
			IF ea = 'S' THEN
				UPDATE  existencia_articulo SET cantidad = cantidad-old.cantidad WHERE cod_articulo = old.cod_articulo AND cod_un_medida = old.cod_un_med AND nro_lote = old.nro_lote AND cod_sucursal = suc AND cod_deposito = dep AND tipo_transacc = 4 AND sub_tipo_transacc = 10;
			END IF;
		ELSEIF tip = 'AJU' THEN
			IF tra = 4 THEN
				IF ea = 'S' THEN
					UPDATE  existencia_articulo SET cantidad = cantidad-old.cantidad WHERE cod_articulo = old.cod_articulo AND cod_un_medida = old.cod_un_med AND nro_lote = old.nro_lote AND cod_sucursal = suc AND cod_deposito = dep AND tipo_transacc = 4 AND sub_tipo_transacc = 11;
				END IF;
			END IF;
		END IF;
	END IF;
END */$$


DELIMITER ;

/* Trigger structure for table `movimiento_caja_compra` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trigger_borra_det_mov_compra` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trigger_borra_det_mov_compra` AFTER DELETE ON `movimiento_caja_compra` FOR EACH ROW BEGIN
DELETE FROM  movimiento_comprobante_compra
WHERE tipo_mov_caja_com=old.tipo_mov_caja_com
AND ser_mov_caja_com=old.ser_mov_caja_com
AND nro_mov_caja_com=old.nro_mov_caja_com;
DELETE FROM  forma_pago_compra
WHERE tipo_mov_caja_com=old.tipo_mov_caja_com
AND ser_mov_caja_com=old.ser_mov_caja_com
AND nro_mov_caja_com=old.nro_mov_caja_com;
    END */$$


DELIMITER ;

/* Trigger structure for table `movimiento_caja_venta` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trigger_borra_det_mov_venta` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trigger_borra_det_mov_venta` AFTER DELETE ON `movimiento_caja_venta` FOR EACH ROW BEGIN
DELETE FROM  movimiento_comprobante_venta
WHERE tipo_mov_caja=old.tipo_mov_caja
AND ser_mov_caja=old.ser_mov_caja
AND nro_mov_caja=old.nro_mov_caja;
DELETE FROM  forma_cobro_venta
WHERE tipo_mov_caja=old.tipo_mov_caja
AND ser_mov_caja=old.ser_mov_caja
AND nro_mov_caja=old.nro_mov_caja;
    END */$$


DELIMITER ;

/* Trigger structure for table `movimiento_comprobante_compra` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trigger_act_saldo_proveedor_forma_pago` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trigger_act_saldo_proveedor_forma_pago` AFTER INSERT ON `movimiento_comprobante_compra` FOR EACH ROW BEGIN
UPDATE  saldo_proveedor SET saldo_cuota=(saldo_cuota-new.total_comprobante_com)
WHERE tipo_comprobante=new.tipo_comprobante_com
AND ser_comprobante=new.ser_comprobante_com
AND nro_comprobante=new.nro_comprobante_com;
END */$$


DELIMITER ;

/* Trigger structure for table `movimiento_comprobante_compra` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trigger_act_pago_comprob_compra` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trigger_act_pago_comprob_compra` AFTER INSERT ON `movimiento_comprobante_compra` FOR EACH ROW BEGIN
IF (new.tipo_transacc=5 and new.sub_tipo_transacc=13) THEN
UPDATE  comprobante_cabecera_compra SET pagado='S'
WHERE cod_tipo_comp=new.tipo_comprobante_com
AND ser_timb_comp=new.ser_comprobante_com
AND nro_comprob_comp=new.nro_comprobante_com;
END IF;
END */$$


DELIMITER ;

/* Trigger structure for table `movimiento_comprobante_compra` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trigger_act_pago_comprob_compra_delete` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trigger_act_pago_comprob_compra_delete` BEFORE DELETE ON `movimiento_comprobante_compra` FOR EACH ROW BEGIN
IF (old.tipo_transacc=5 AND old.sub_tipo_transacc=13) THEN
UPDATE  comprobante_cabecera_compra SET pagado='N'
WHERE cod_tipo_comp=old.tipo_comprobante_com
AND ser_timb_comp=old.ser_comprobante_com
AND nro_comprob_comp=old.nro_comprobante_com;
END IF;
END */$$


DELIMITER ;

/* Trigger structure for table `movimiento_comprobante_compra` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trigger_act_borr_saldo_proveedor_forma_pago` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trigger_act_borr_saldo_proveedor_forma_pago` AFTER DELETE ON `movimiento_comprobante_compra` FOR EACH ROW BEGIN
UPDATE  saldo_proveedor
SET saldo_cuota=(saldo_cuota+old.total_comprobante_com)
WHERE tipo_comprobante=old.tipo_comprobante_com
AND ser_comprobante=old.ser_comprobante_com
AND nro_comprobante=old.nro_comprobante_com;
    END */$$


DELIMITER ;

/* Trigger structure for table `movimiento_comprobante_venta` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trigger_act_cobro_ventas` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trigger_act_cobro_ventas` AFTER INSERT ON `movimiento_comprobante_venta` FOR EACH ROW BEGIN
IF (new.tipo_comprobante='FCO') THEN
UPDATE  comprobante_cabecera_venta SET cobrado='S'
WHERE tipo_comprobante=new.tipo_comprobante
AND ser_comprobante=new.ser_comprobante
AND nro_comprobante=new.nro_comprobante;
END IF;
IF (new.tipo_comprobante='REC') THEN
UPDATE  recibo_venta_cabecera SET cobrado='S'
WHERE tipo_recibo=new.tipo_comprobante
AND ser_recibo=new.ser_comprobante
AND nro_recibo=new.nro_comprobante;
END IF;
END */$$


DELIMITER ;

/* Trigger structure for table `movimiento_comprobante_venta` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trigger_act_cobro_ventas_delete` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trigger_act_cobro_ventas_delete` BEFORE DELETE ON `movimiento_comprobante_venta` FOR EACH ROW BEGIN
IF (old.tipo_comprobante='FCO') THEN
UPDATE  comprobante_cabecera_venta SET cobrado='N'
WHERE tipo_comprobante=old.tipo_comprobante
AND ser_comprobante=old.ser_comprobante
AND nro_comprobante=old.nro_comprobante;
END IF;
IF (old.tipo_comprobante='REC') THEN
UPDATE  recibo_venta_cabecera SET cobrado='N'
WHERE tipo_recibo=old.tipo_comprobante
AND ser_recibo=old.ser_comprobante
AND nro_recibo=old.nro_comprobante;
END IF;
END */$$


DELIMITER ;

/* Trigger structure for table `persona` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trigger_gen_cliente_persona` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trigger_gen_cliente_persona` AFTER INSERT ON `persona` FOR EACH ROW BEGIN
IF (new.gen_cliente = 'S') THEN
 CALL insertar_cliente(new.cod_persona,'01',NULL,NULL,NULL,1,'00','A',NULL,new.cod_sucursal);
END IF;
END */$$


DELIMITER ;

/* Trigger structure for table `recibo_compra_cabecera` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trigger_borra_detalle_recibo_compra` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trigger_borra_detalle_recibo_compra` AFTER DELETE ON `recibo_compra_cabecera` FOR EACH ROW BEGIN
DELETE FROM  recibo_detalle_compra
WHERE tipo_rec_comp=old.tipo_rec_comp
AND ser_rec_comp=old.ser_rec_comp
AND nro_rec_comp=old.nro_rec_comp;
    END */$$


DELIMITER ;

/* Trigger structure for table `recibo_detalle_compra` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trigger_act_saldo_proveedor_recibo_compra` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trigger_act_saldo_proveedor_recibo_compra` AFTER INSERT ON `recibo_detalle_compra` FOR EACH ROW BEGIN
UPDATE  saldo_proveedor SET saldo_cuota=(saldo_cuota-new.importe_total)
WHERE tipo_comprobante=new.tipo_comprobante_ref
AND ser_comprobante=new.ser_comprobante_ref
AND nro_comprobante=new.nro_comprobante_ref
AND nro_cuota=new.nro_cuota;
END */$$


DELIMITER ;

/* Trigger structure for table `recibo_detalle_venta` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trigger_act_saldo_cliente_recibo_venta` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trigger_act_saldo_cliente_recibo_venta` AFTER INSERT ON `recibo_detalle_venta` FOR EACH ROW BEGIN
UPDATE  saldo_cliente SET saldo_cuota=(saldo_cuota-new.importe_total)
WHERE tipo_comprobante=new.tipo_comprobante_ref
AND ser_comprobante=new.ser_comprobante_ref
AND nro_comprobante=new.nro_comprobante_ref
AND nro_cuota=new.nro_cuota;
END */$$


DELIMITER ;

/* Trigger structure for table `recibo_detalle_venta` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trigger_act_borr_saldo_cliente_recibo_venta` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trigger_act_borr_saldo_cliente_recibo_venta` BEFORE DELETE ON `recibo_detalle_venta` FOR EACH ROW BEGIN
UPDATE  saldo_cliente
SET saldo_cuota=(saldo_cuota+old.importe_total)
WHERE tipo_comprobante=old.tipo_comprobante_ref
AND ser_comprobante=old.ser_comprobante_ref
AND nro_comprobante=old.nro_comprobante_ref
AND nro_cuota=old.nro_cuota;
    END */$$


DELIMITER ;

/* Trigger structure for table `recibo_venta_cabecera` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trigger_borra_detalle_recibo_venta` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trigger_borra_detalle_recibo_venta` AFTER DELETE ON `recibo_venta_cabecera` FOR EACH ROW BEGIN
DELETE FROM  recibo_detalle_venta
WHERE tipo_recibo=old.tipo_recibo
AND ser_recibo=old.ser_recibo
AND nro_recibo=old.nro_recibo;
    END */$$


DELIMITER ;

/* Function  structure for function  `fn_acces_program_us` */

/*!50003 DROP FUNCTION IF EXISTS `fn_acces_program_us` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fn_acces_program_us`(sucursal VARCHAR(5),programa VARCHAR(15),usuario VARCHAR(20),elemento varchar(30)) RETURNS varchar(1) CHARSET latin1
BEGIN
DECLARE valor VARCHAR(1);
DECLARE	perm VARCHAR(1);
	SELECT 'S'
	INTO valor
	FROM acceso_us_program ag
	WHERE ag.cod_sucursal = sucursal
	AND ag.cod_programa = programa
    AND ag.cod_usuario = usuario
    and ag.elemento_ref = elemento;
    IF valor = 'S' THEN
     SET perm = "S";
     ELSE
      SET perm = "N";
       END IF;
RETURN perm;
END */$$
DELIMITER ;

/* Function  structure for function  `fn_sucursal_user` */

/*!50003 DROP FUNCTION IF EXISTS `fn_sucursal_user` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fn_sucursal_user`(nom VARCHAR(20)) RETURNS varchar(10) CHARSET latin1
    DETERMINISTIC
BEGIN
      DECLARE n VARCHAR(10);
     SELECT cod_sucursal INTO n
     FROM usuario 
     WHERE cod_usuario = nom;
RETURN n;
END */$$
DELIMITER ;

/* Function  structure for function  `fn_ult_fec_recibo` */

/*!50003 DROP FUNCTION IF EXISTS `fn_ult_fec_recibo` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fn_ult_fec_recibo`(p_cliente INT(10),p_tip_com VARCHAR(5),p_ser_comp VARCHAR(2),p_nro_comp INT(10)) RETURNS date
BEGIN
DECLARE fec DATE;
  SELECT MAX(c.fecha_rec) 
INTO fec
FROM view_recibo_venta c 
WHERE c.cod_cliente = p_cliente 
AND c.tipo_comprobante_ref = p_tip_com
AND c.ser_comprobante_ref = p_ser_comp 
AND c.nro_comprobante_ref = p_nro_comp
LIMIT 1;
RETURN fec;
END */$$
DELIMITER ;

/* Function  structure for function  `retorna_nro_comp_venta_inicial` */

/*!50003 DROP FUNCTION IF EXISTS `retorna_nro_comp_venta_inicial` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `retorna_nro_comp_venta_inicial`(sc varchar(5),tp VARCHAR(5),sr VARCHAR(2)) RETURNS int(11)
BEGIN
DECLARE nro INT;
  SELECT t.numero_inicial
  into nro
  FROM talonario t
  WHERE t.cod_sucursal=sc AND t.serie=sr AND t.tipo_talonario=tp;
RETURN nro;
END */$$
DELIMITER ;

/* Function  structure for function  `retorna_permiso_delete` */

/*!50003 DROP FUNCTION IF EXISTS `retorna_permiso_delete` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `retorna_permiso_delete`(grupo varchar(15),modulo VARCHAR(5),form VARCHAR(10)) RETURNS varchar(1) CHARSET latin1
BEGIN
DECLARE perm varchar(1);
	select ag.puede_borrar
	into perm
	from acceso_grupo ag
	where ag.cod_grupo=grupo
	and ag.cod_modulo=modulo
    and ag.desc_formulario=form;
RETURN perm;
END */$$
DELIMITER ;

/* Function  structure for function  `retorna_permiso_grupo` */

/*!50003 DROP FUNCTION IF EXISTS `retorna_permiso_grupo` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `retorna_permiso_grupo`(grupo varchar(15),modulo VARCHAR(5),form VARCHAR(10)) RETURNS varchar(5) CHARSET latin1
BEGIN
DECLARE perm varchar(5);
	select CONCAT(ag.puede_insert,ag.puede_modif,ag.puede_borrar,ag.puede_consul) permiso
	into perm
	from acceso_grupo ag
	where ag.cod_grupo=grupo
	and ag.cod_modulo=modulo
    and ag.desc_formulario=form;
RETURN perm;
END */$$
DELIMITER ;

/* Function  structure for function  `retorna_permiso_insert` */

/*!50003 DROP FUNCTION IF EXISTS `retorna_permiso_insert` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `retorna_permiso_insert`(grupo varchar(15),modulo VARCHAR(5),form VARCHAR(10)) RETURNS varchar(1) CHARSET latin1
BEGIN
DECLARE perm varchar(1);
	select ag.puede_insert
	into perm
	from acceso_grupo ag
	where ag.cod_grupo=grupo
	and ag.cod_modulo=modulo
    and ag.desc_formulario=form;
RETURN perm;
END */$$
DELIMITER ;

/* Function  structure for function  `retorna_permiso_update` */

/*!50003 DROP FUNCTION IF EXISTS `retorna_permiso_update` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `retorna_permiso_update`(grupo varchar(15),modulo VARCHAR(5),form VARCHAR(10)) RETURNS varchar(1) CHARSET latin1
BEGIN
DECLARE perm varchar(1);
	select ag.puede_modif
	into perm
	from acceso_grupo ag
	where ag.cod_grupo=grupo
	and ag.cod_modulo=modulo
    and ag.desc_formulario=form;
RETURN perm;
END */$$
DELIMITER ;

/* Function  structure for function  `retorna_porc_iva_art` */

/*!50003 DROP FUNCTION IF EXISTS `retorna_porc_iva_art` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `retorna_porc_iva_art`(cod VARCHAR(100),uni varchar(5),lote varchar(100)) RETURNS int(11)
BEGIN
DECLARE iva INT;
SELECT IFNULL(p.cod_iva,0) INTO iva
     FROM articulo p 
     WHERE p.cod_articulo=cod
	   and p.cod_un_med=uni
	   and p.nro_lote=lote;
RETURN iva;
END */$$
DELIMITER ;

/* Function  structure for function  `retorna_usuario_grupo` */

/*!50003 DROP FUNCTION IF EXISTS `retorna_usuario_grupo` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `retorna_usuario_grupo`(nom VARCHAR(20)) RETURNS varchar(50) CHARSET latin1
    DETERMINISTIC
BEGIN
      DECLARE n VARCHAR(10);
     SELECT cod_grupo INTO n
     FROM usuario 
     WHERE cod_usuario=nom;
RETURN n;
END */$$
DELIMITER ;

/* Function  structure for function  `verif_codigo_prod` */

/*!50003 DROP FUNCTION IF EXISTS `verif_codigo_prod` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `verif_codigo_prod`(cod VARCHAR(50),uni VARCHAR(5),lot VARCHAR(100)) RETURNS varchar(5) CHARSET latin1
    DETERMINISTIC
BEGIN
DECLARE mens VARCHAR(5);
DECLARE s VARCHAR(15);
SELECT cod_articulo INTO s
FROM articulo 
WHERE cod_articulo=cod
       and cod_un_med=uni
       and nro_lote=lot;
IF s=cod  THEN
SET mens="S";
ELSE
SET mens="N";
END IF;
RETURN mens;
    END */$$
DELIMITER ;

/* Function  structure for function  `verif_exisc_saldo_cliente` */

/*!50003 DROP FUNCTION IF EXISTS `verif_exisc_saldo_cliente` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `verif_exisc_saldo_cliente`(cod INT) RETURNS varchar(5) CHARSET latin1
    DETERMINISTIC
BEGIN
DECLARE mens VARCHAR(5);
      DECLARE s INT(15);
      SELECT  sum(saldo_cuota) INTO s
     FROM saldo_cliente 
     WHERE cod_cliente=cod  AND
           saldo_cuota<>0;
     IF s<>0   THEN
     SET mens="S";
     ELSE
      SET mens="N";
       END IF;
RETURN mens;
END */$$
DELIMITER ;

/* Function  structure for function  `verif_exisc_saldo_proveedor` */

/*!50003 DROP FUNCTION IF EXISTS `verif_exisc_saldo_proveedor` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `verif_exisc_saldo_proveedor`(cod INT) RETURNS varchar(5) CHARSET latin1
    DETERMINISTIC
BEGIN
DECLARE mens VARCHAR(5);
      DECLARE s INT(15);
      SELECT  SUM(saldo_cuota) INTO s
     FROM saldo_proveedor 
     WHERE cod_proveedor=cod  AND
           saldo_cuota<>0;
     IF s<>0   THEN
     SET mens="S";
     ELSE
      SET mens="N";
       END IF;
RETURN mens;
END */$$
DELIMITER ;

/* Function  structure for function  `verif_existencia_nro_comprobante` */

/*!50003 DROP FUNCTION IF EXISTS `verif_existencia_nro_comprobante` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `verif_existencia_nro_comprobante`(sucur VARCHAR(5),seri varchar(5),numer int(10),tipo varchar(5)) RETURNS varchar(5) CHARSET latin1
    DETERMINISTIC
BEGIN
DECLARE mens VARCHAR(5);
DECLARE s VARCHAR(15);
SELECT c.nro_comprobante INTO s
FROM comprobante_cabecera_venta c
WHERE c.cod_sucursal=sucur and c.ser_comprobante=seri and c.nro_comprobante=numer and c.tipo_comprobante = tipo;
IF s=numer  THEN
SET mens="S";
ELSE
SET mens="N";
END IF;
RETURN mens;
    END */$$
DELIMITER ;

/* Function  structure for function  `verif_existencia_nro_recibo` */

/*!50003 DROP FUNCTION IF EXISTS `verif_existencia_nro_recibo` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `verif_existencia_nro_recibo`(sucur VARCHAR(5),seri VARCHAR(5),numer INT(10)) RETURNS varchar(5) CHARSET latin1
    DETERMINISTIC
BEGIN
DECLARE mens VARCHAR(5);
DECLARE s VARCHAR(15);
SELECT c.nro_recibo INTO s
FROM recibo_venta_cabecera c
WHERE c.cod_sucursal=sucur AND c.ser_recibo=seri AND c.nro_recibo=numer;
IF s=numer  THEN
SET mens="S";
ELSE
SET mens="N";
END IF;
RETURN mens;
    END */$$
DELIMITER ;

/* Function  structure for function  `verif_exist_nro_comp_comp` */

/*!50003 DROP FUNCTION IF EXISTS `verif_exist_nro_comp_comp` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `verif_exist_nro_comp_comp`(sucur VARCHAR(5),seri VARCHAR(15),numer INT(10)) RETURNS varchar(5) CHARSET latin1
    DETERMINISTIC
BEGIN
DECLARE mens VARCHAR(5);
DECLARE s VARCHAR(15);
SELECT c.nro_comprob_comp INTO s
FROM comprobante_cabecera_compra c
WHERE c.cod_sucursal=sucur AND c.ser_timb_comp=seri AND c.nro_comprob_comp=numer;
IF s=numer  THEN
SET mens="S";
ELSE
SET mens="N";
END IF;
RETURN mens;
    END */$$
DELIMITER ;

/* Function  structure for function  `verif_exist_nro_rec_comp` */

/*!50003 DROP FUNCTION IF EXISTS `verif_exist_nro_rec_comp` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `verif_exist_nro_rec_comp`(sucur VARCHAR(5),seri VARCHAR(7),numer INT(10)) RETURNS varchar(5) CHARSET latin1
    DETERMINISTIC
BEGIN
DECLARE mens VARCHAR(5);
DECLARE s VARCHAR(15);
SELECT c.nro_rec_comp INTO s
FROM recibo_compra_cabecera c
WHERE c.cod_sucursal=sucur AND c.ser_rec_comp=seri AND c.nro_rec_comp=numer;
IF s=numer  THEN
SET mens="S";
ELSE
SET mens="N";
END IF;
RETURN mens;
    END */$$
DELIMITER ;

/* Function  structure for function  `verif_exist_usuario` */

/*!50003 DROP FUNCTION IF EXISTS `verif_exist_usuario` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `verif_exist_usuario`(nom VARCHAR(20),cla VARCHAR(20)) RETURNS varchar(50) CHARSET latin1
    DETERMINISTIC
BEGIN
      DECLARE mens VARCHAR(20);
      DECLARE n VARCHAR(20);
      DECLARE c VARCHAR(20);
     SELECT cod_usuario,clave_usuario INTO n,c
     FROM usuario 
     WHERE cod_usuario=nom AND clave_usuario=cla;
     IF n=nom AND c=cla THEN
     SET mens="S";
     ELSE
      SET mens="N";
       END IF;
RETURN mens;
END */$$
DELIMITER ;

/* Function  structure for function  `verif_nro_doc_pers` */

/*!50003 DROP FUNCTION IF EXISTS `verif_nro_doc_pers` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `verif_nro_doc_pers`(cod VARCHAR(15)) RETURNS varchar(5) CHARSET latin1
    DETERMINISTIC
BEGIN
DECLARE mens VARCHAR(5);
DECLARE s VARCHAR(15);
SELECT IFNULL(ruc_ci,'N') INTO s
FROM persona 
WHERE ruc_ci=IFNULL(cod,'N');
IF s=cod  and s <> '' THEN
SET mens="S";
ELSE
SET mens="N";
END IF;
RETURN mens;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `actualizar_acceso` */

/*!50003 DROP PROCEDURE IF EXISTS  `actualizar_acceso` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_acceso`(IN codigo_grupo VARCHAR(10),IN codigo_modulo VARCHAR(10),IN codigo_form VARCHAR(10),IN grupo VARCHAR(10),IN modulo VARCHAR(5),IN formulario VARCHAR(10),IN inserta VARCHAR(1),IN modif VARCHAR(1),IN borrar VARCHAR(1),IN consul VARCHAR(1),IN menu VARCHAR(1))
BEGIN
UPDATE acceso_grupo set cod_grupo=grupo,cod_modulo=modulo,desc_formulario=formulario,puede_insert=inserta,puede_modif=modif,puede_borrar=borrar,puede_consul=consul,mostrar_en_menu=menu where cod_grupo=codigo_grupo and cod_modulo=codigo_modulo and desc_formulario=codigo_form;
END */$$
DELIMITER ;

/* Procedure structure for procedure `actualizar_articulo` */

/*!50003 DROP PROCEDURE IF EXISTS  `actualizar_articulo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_articulo`(IN codigo_old VARCHAR(50),IN un_med_old VARCHAR(5),IN lote_old VARCHAR(100),IN codigo_new VARCHAR(10),IN un_med_new VARCHAR(5),IN lote_new VARCHAR(100),IN desc_art VARCHAR(80),IN proveedor VARCHAR(10),IN marca VARCHAR(10),IN categoria VARCHAR(10),IN pre_compra INT(10),IN pre_venta INT(10),IN cantid INT(10),IN iva VARCHAR(10),IN estad VARCHAR(1),IN mane_stock VARCHAR(1))
BEGIN
UPDATE articulo SET cod_articulo=codigo_new,cod_un_med=un_med_new,nro_lote=lote_new,desc_articulo=desc_art,cod_proveedor=proveedor,cod_marca=marca,cod_categoria=categoria,precio_compra=pre_compra,precio_venta=pre_venta,cantidad=cantid,cod_iva=iva,estado=estad,maneja_stock=mane_stock WHERE cod_articulo=codigo_old and cod_un_med=un_med_old and nro_lote=lote_old;
END */$$
DELIMITER ;

/* Procedure structure for procedure `actualizar_categoria` */

/*!50003 DROP PROCEDURE IF EXISTS  `actualizar_categoria` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_categoria`(IN cod_ant VARCHAR(10),IN cod VARCHAR(10),IN desc_cat VARCHAR(50))
BEGIN
UPDATE categoria SET cod_categoria=cod,desc_categoria=desc_cat WHERE cod_categoria=cod_ant;
END */$$
DELIMITER ;

/* Procedure structure for procedure `actualizar_cliente` */

/*!50003 DROP PROCEDURE IF EXISTS  `actualizar_cliente` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_cliente`(in codigo int(15),IN cod_per int(15),IN cod_mon VARCHAR(5),IN cod_cob VARCHAR(20),IN cod_ven VARCHAR(20),IN limite_cre int(10),IN cod_cond int(10),IN tipo_cli VARCHAR(10),IN est VARCHAR(1),IN comen VARCHAR(80))
BEGIN
UPDATE  cliente SET cod_persona=cod_per,cod_moneda=cod_mon,cod_cobrador=cod_cob,cod_vendedor=cod_ven,limite_credito=limite_cre,cod_condicion_venta=cod_cond,tipo_cliente=tipo_cli,estado=est,comentario=comen where cod_cliente=codigo;
END */$$
DELIMITER ;

/* Procedure structure for procedure `actualizar_condicion` */

/*!50003 DROP PROCEDURE IF EXISTS  `actualizar_condicion` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_condicion`(IN codigo int(10),IN cod_cond INT(10),IN descr VARCHAR(80),IN nro_cuota INT(5),IN dia_ini INT(5),IN plaz INT(10),IN est VARCHAR(1))
BEGIN
UPDATE condicion_venta set cod_condicion=cod_cond,descripcion=descr,numero_cuota=nro_cuota,dia_inicial=dia_ini,plazo=plaz,estado=est where cod_condicion=codigo;
END */$$
DELIMITER ;

/* Procedure structure for procedure `actualizar_marca` */

/*!50003 DROP PROCEDURE IF EXISTS  `actualizar_marca` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_marca`(IN cod_ant VARCHAR(10),IN cod VARCHAR(10),IN desc_mar VARCHAR(50))
BEGIN
UPDATE marca SET cod_marca=cod,desc_marca=desc_mar WHERE cod_marca=cod_ant;
END */$$
DELIMITER ;

/* Procedure structure for procedure `actualizar_persona` */

/*!50003 DROP PROCEDURE IF EXISTS  `actualizar_persona` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_persona`(IN codigo INT(10),IN nombre VARCHAR(80),IN cod_tipo_doc varchar(10),IN ruc_ci VARCHAR(15),IN cod_ciudad INT(10),IN direccion VARCHAR(100),IN direccion_trabajo VARCHAR(100),IN telefono_domicilio VARCHAR(20),IN telefono_trabajo VARCHAR(20),IN celular VARCHAR(15),IN fecha_nacimiento DATE,IN cod_estado_civil VARCHAR (5),IN cod_pais INT(15),in es_ban varchar(1))
BEGIN
UPDATE persona SET nombre=nombre,cod_tipo_doc=cod_tipo_doc,ruc_ci=ruc_ci,cod_ciudad=cod_ciudad,direccion=direccion,direccion_trabajo=direccion_trabajo,telefono_domicilio=telefono_domicilio,telefono_trabajo=telefono_trabajo,celular=celular,fecha_nacimiento=fecha_nacimiento,cod_estado_civil=cod_estado_civil,cod_pais=cod_pais,es_banco=es_ban WHERE cod_persona=codigo;
END */$$
DELIMITER ;

/* Procedure structure for procedure `actualizar_planes_vigencia` */

/*!50003 DROP PROCEDURE IF EXISTS  `actualizar_planes_vigencia` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_planes_vigencia`(IN plan int(5),IN fec_desd date,IN fec_hast date,in impor decimal(10,2),in ind_renv varchar(1),IN plan_ren INT(5),IN can_cuo INT(5))
BEGIN
UPDATE planes_vigencia SET fecha_hasta = fec_hast,importe_plan = impor,ind_renov = ind_renv,cod_plan_renov = plan_ren,cant_cuotas = can_cuo WHERE cod_plan = plan and fecha_desde = fec_desd;
END */$$
DELIMITER ;

/* Procedure structure for procedure `actualizar_proveedor` */

/*!50003 DROP PROCEDURE IF EXISTS  `actualizar_proveedor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_proveedor`(in cod int(10),IN cod_perso INT(15),in cod_tipo_pr varchar(5),in est varchar(1))
BEGIN
update proveedor set cod_persona=cod_perso,cod_tipo_prov=cod_tipo_pr,estado=est where cod_proveedor=cod;
END */$$
DELIMITER ;

/* Procedure structure for procedure `actualizar_serie_comprobante` */

/*!50003 DROP PROCEDURE IF EXISTS  `actualizar_serie_comprobante` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_serie_comprobante`(IN tipo_comp_ant VARCHAR(3),IN ser_comp_ant VARCHAR(2),IN cod_suc_ant VARCHAR(5),IN tipo_comp VARCHAR(3),IN ser_comp VARCHAR(2),IN cod_suc VARCHAR(5),IN nro_inicial INT(15),IN nro_final INT(15),IN ser_timb VARCHAR(30),IN nro_timbrado VARCHAR(30),IN fec_vig VARCHAR(20))
BEGIN
 update serie_comprobante set tipo_comprobante=tipo_comp,ser_comprobante=ser_comp,cod_sucursal=cod_suc,numero_inicial=nro_inicial,numero_final=nro_final,ser_timbrado=ser_timb,numero_timbrado=nro_timbrado,fecha_vigencia=fec_vig where tipo_comprobante=tipo_comp_ant and ser_comprobante=ser_comp_ant and cod_sucursal=cod_suc_ant;
END */$$
DELIMITER ;

/* Procedure structure for procedure `actualizar_talonario` */

/*!50003 DROP PROCEDURE IF EXISTS  `actualizar_talonario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_talonario`(IN tipo_tal_ant VARCHAR(3),IN ser_ant VARCHAR(2),IN cod_suc_ant VARCHAR(5),IN tipo_tal VARCHAR(3),IN ser VARCHAR(2),IN cod_suc VARCHAR(5),IN nro_tal INT(10),IN nro_inicial INT(15),IN nro_final INT(15),IN estad VARCHAR(1))
BEGIN
update talonario set tipo_talonario=tipo_tal,serie=ser,cod_sucursal=cod_suc,nro_talonario=nro_tal,numero_inicial=nro_inicial,numero_final=nro_final,estado=estad where tipo_talonario=tipo_tal_ant and serie=ser_ant and cod_sucursal=cod_suc_ant;
END */$$
DELIMITER ;

/* Procedure structure for procedure `actualizar_talonario_usuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `actualizar_talonario_usuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_talonario_usuario`(IN tipo_tal_ant VARCHAR(3),IN ser_ant VARCHAR(2),IN cod_suc_ant VARCHAR(5),IN tipo_tal VARCHAR(3),IN ser VARCHAR(2),IN cod_suc VARCHAR(5),IN nro_tal INT(10),IN cod_us VARCHAR(20))
BEGIN
update talonario_usuario set tipo_talonario=tipo_tal,serie=ser,cod_sucursal=cod_suc,nro_talonario=nro_tal,cod_usuario=cod_us where tipo_talonario=tipo_tal_ant and serie=ser_ant and cod_sucursal=cod_suc_ant;
END */$$
DELIMITER ;

/* Procedure structure for procedure `actualizar_und_med_articulo` */

/*!50003 DROP PROCEDURE IF EXISTS  `actualizar_und_med_articulo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_und_med_articulo`(IN cod_ant VARCHAR(5),IN cod VARCHAR(5),IN desc_un VARCHAR(50))
BEGIN
UPDATE unidad_med_articulo SET cod_un_med=cod,desc_un_med=desc_un WHERE cod_un_med=cod_ant;
END */$$
DELIMITER ;

/* Procedure structure for procedure `actualizar_usuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `actualizar_usuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_usuario`(IN cod varchar(10),IN cod_pers INT(15),IN cod_grup VARCHAR(15),IN cod_suc VARCHAR(15),IN cod_dep VARCHAR(5),in estad varchar(1))
BEGIN
UPDATE usuario SET cod_persona=cod_pers,cod_grupo=cod_grup,cod_sucursal=cod_suc,cod_deposito=cod_dep,estado=estad WHERE cod_usuario=cod;
END */$$
DELIMITER ;

/* Procedure structure for procedure `actualiza_exist_art_borr_compra` */

/*!50003 DROP PROCEDURE IF EXISTS  `actualiza_exist_art_borr_compra` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `actualiza_exist_art_borr_compra`(IN art VARCHAR(100),IN un VARCHAR(100),IN lot VARCHAR(100),IN cant DECIMAL(10,2),IN suc VARCHAR(5),IN dep VARCHAR(5),IN tipcom VARCHAR(5),IN trans INT(5))
BEGIN
IF tipcom IN('FCR','FCO') THEN
	UPDATE  existencia_articulo
	SET cantidad = (cantidad-cant)
	WHERE cod_sucursal = suc
	AND cod_deposito = dep
	AND cod_articulo = art
	AND cod_un_medida = un
	AND nro_lote = lot
	AND tipo_transacc = 3
	AND sub_tipo_transacc = 7;
ELSEIF 	tipcom = 'AJU' THEN
	IF trans = 3 THEN
		UPDATE  existencia_articulo
		SET cantidad = (cantidad-cant)
		WHERE cod_sucursal = suc
		AND cod_deposito = dep
		AND cod_articulo = art
		AND cod_un_medida = un
		AND nro_lote = lot
		AND tipo_transacc = 3
		AND sub_tipo_transacc = 8;
	END IF;
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `actualiza_exist_art_borr_venta` */

/*!50003 DROP PROCEDURE IF EXISTS  `actualiza_exist_art_borr_venta` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `actualiza_exist_art_borr_venta`(IN art VARCHAR(100),IN un VARCHAR(100),IN lot VARCHAR(100),IN cant DECIMAL(10,2),IN suc VARCHAR(5),IN dep VARCHAR(5),IN tipcom VARCHAR(5),IN trans INT(5))
BEGIN
IF tipcom IN('FCR','FCO') THEN
	UPDATE  existencia_articulo
	SET cantidad = (cantidad-cant)
	WHERE cod_sucursal = suc
	AND cod_deposito = dep
	AND cod_articulo = art
	AND cod_un_medida = un
	AND nro_lote = lot 
	AND tipo_transacc = 4
	AND sub_tipo_transacc = 10;
ELSEIF 	tipcom = 'AJU' THEN
	IF trans = 4 THEN
		UPDATE  existencia_articulo
		SET cantidad = (cantidad-cant)
		WHERE cod_sucursal = suc
		AND cod_deposito = dep
		AND cod_articulo = art
		AND cod_un_medida = un
		AND nro_lote = lot
		AND tipo_transacc = 4
		AND sub_tipo_transacc = 11;
	END IF;
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `act_exist_anul_comp_venta` */

/*!50003 DROP PROCEDURE IF EXISTS  `act_exist_anul_comp_venta` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `act_exist_anul_comp_venta`(IN p_tipo_comp VARCHAR(3),IN p_ser_comp VARCHAR(2),IN p_nro_comp INTEGER(10),IN p_suc VARCHAR(5),IN p_dep VARCHAR(5))
BEGIN
 
 DECLARE v_finished INTEGER DEFAULT 0;
 DECLARE v_art VARCHAR(100) DEFAULT NULL;
 DECLARE v_un VARCHAR(100) DEFAULT NULL;
 DECLARE v_lot VARCHAR(100) DEFAULT NULL;
 DECLARE v_cant DECIMAL(10,2) DEFAULT 0.0;
 
 -- declare cursor for employee email
 DECLARE email_cursor CURSOR FOR 
 SELECT cod_articulo,cod_un_med,nro_lote,cantidad 
 FROM comprobante_detalle_venta
 WHERE tipo_comprobante = p_tipo_comp
	AND ser_comprobante = p_ser_comp
	AND nro_comprobante = p_nro_comp;
 
 -- declare NOT FOUND handler
 DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET v_finished = 1;
 
 OPEN email_cursor;
 
 get_email: LOOP
 
 FETCH email_cursor INTO v_art,v_un,v_lot,v_cant;
 
 IF v_finished = 1 THEN 
 LEAVE get_email;
 END IF;
 
 -- build email list
 CALL actualiza_exist_art_borr_venta(v_art,v_un,v_lot,v_cant,p_suc,p_dep,p_tipo_comp,4);
 
 END LOOP get_email;
 
 CLOSE email_cursor;
 
END */$$
DELIMITER ;

/* Procedure structure for procedure `anular_comprob_venta` */

/*!50003 DROP PROCEDURE IF EXISTS  `anular_comprob_venta` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `anular_comprob_venta`(IN tipcon VARCHAR(10),IN sercom VARCHAR(50),IN nuncom INT,IN motanu INT)
BEGIN
UPDATE comprobante_cabecera_venta SET estado='A',cod_motivo_anul=motanu WHERE tipo_comprobante=tipcon AND ser_comprobante=sercom AND nro_comprobante=nuncom;
END */$$
DELIMITER ;

/* Procedure structure for procedure `cancelacion_auto_saldo_cliente` */

/*!50003 DROP PROCEDURE IF EXISTS  `cancelacion_auto_saldo_cliente` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `cancelacion_auto_saldo_cliente`(
)
BEGIN
  DECLARE v_tipo_comp VARCHAR(5);
  DECLARE v_ser_comp VARCHAR(2);
  DECLARE v_nro_comp int(10);
  declare v_nro_cuota INT(5);
  DECLARE fin INTEGER DEFAULT 0;
  DECLARE saldo_cliente CURSOR FOR 
    SELECT s.tipo_comprobante,s.ser_comprobante,s.nro_comprobante,s.nro_cuota
    FROM saldo_cliente s
    WHERE s.cod_tipo_estado = 7
      AND s.cod_estado = 15
      AND s.fecha_vencimiento <= CURDATE();
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET fin=1;
  OPEN saldo_cliente;
  get_sald_client: LOOP
    FETCH saldo_cliente INTO v_tipo_comp,v_ser_comp,v_nro_comp,v_nro_cuota;
    IF fin = 1 THEN
       LEAVE get_sald_client;
    END IF;
	update saldo_cliente s
	set s.cod_estado = 16,saldo_cuota = 0
	where s.tipo_comprobante = v_tipo_comp
		and s.ser_comprobante = v_ser_comp
		and s.nro_comprobante = v_nro_comp
		and s.nro_cuota = v_nro_cuota;
  END LOOP get_sald_client;
  CLOSE saldo_cliente;
END */$$
DELIMITER ;

/* Procedure structure for procedure `cerrar_caja_cobro` */

/*!50003 DROP PROCEDURE IF EXISTS  `cerrar_caja_cobro` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `cerrar_caja_cobro`(IN nrohab VARCHAR(10),IN codcaj VARCHAR(10),IN codsuc VARCHAR(10),IN codusu VARCHAR(10),IN feccie VARCHAR(20))
BEGIN
UPDATE habilitacion_caja SET fecha_cierre=feccie,estado='C' WHERE nro_habilitacion=nrohab AND cod_caja=codcaj AND cod_sucursal=codsuc AND cod_usuario=codusu;
END */$$
DELIMITER ;

/* Procedure structure for procedure `cursorTest` */

/*!50003 DROP PROCEDURE IF EXISTS  `cursorTest` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `cursorTest`(
)
BEGIN
  DECLARE v_nombre VARCHAR(120);
  DECLARE v_codigo BIGINT;
  DECLARE v_penalty1 BIGINT;
  DECLARE v_penalty2 BIGINT;
  DECLARE fin INTEGER DEFAULT 0;
  DECLARE runners_cursor CURSOR FOR 
    SELECT cod_persona,nombre FROM persona;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET fin=1;
  OPEN runners_cursor;
  get_runners: LOOP
    FETCH runners_cursor INTO v_codigo,v_nombre;
    IF fin = 1 THEN
       LEAVE get_runners;
    END IF;
	INSERT INTO prueba(id_prueba,objeto_prueba) values(v_codigo,v_nombre);
  /*SELECT v_name, v_time, v_penalty1, v_penalty2;*/
  END LOOP get_runners;
  CLOSE runners_cursor;
END */$$
DELIMITER ;

/* Procedure structure for procedure `eliminar_acceso` */

/*!50003 DROP PROCEDURE IF EXISTS  `eliminar_acceso` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_acceso`(IN codigo VARCHAR(10),IN modulo VARCHAR(10),IN form VARCHAR(10))
BEGIN
DELETE FROM acceso_grupo WHERE cod_grupo=codigo and cod_modulo=modulo and desc_formulario=form;
END */$$
DELIMITER ;

/* Procedure structure for procedure `eliminar_articulo` */

/*!50003 DROP PROCEDURE IF EXISTS  `eliminar_articulo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_articulo`(IN codigo VARCHAR(10),IN cod_un VARCHAR(5),in lote VARCHAR(100))
BEGIN
DELETE FROM articulo WHERE cod_articulo=codigo AND cod_un_med=cod_un and nro_lote=lote;
END */$$
DELIMITER ;

/* Procedure structure for procedure `eliminar_cliente` */

/*!50003 DROP PROCEDURE IF EXISTS  `eliminar_cliente` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_cliente`(IN codigo VARCHAR(10))
BEGIN
DELETE FROM cliente WHERE cod_cliente=codigo;
END */$$
DELIMITER ;

/* Procedure structure for procedure `eliminar_condicion` */

/*!50003 DROP PROCEDURE IF EXISTS  `eliminar_condicion` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_condicion`(IN codigo int(10))
BEGIN
DELETE FROM condicion_venta WHERE cod_condicion=codigo;
END */$$
DELIMITER ;

/* Procedure structure for procedure `eliminar_persona` */

/*!50003 DROP PROCEDURE IF EXISTS  `eliminar_persona` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_persona`(IN codigo Varchar(10))
BEGIN
DELETE FROM persona WHERE cod_persona=codigo;
END */$$
DELIMITER ;

/* Procedure structure for procedure `eliminar_proveedor` */

/*!50003 DROP PROCEDURE IF EXISTS  `eliminar_proveedor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_proveedor`(in cod int(10))
BEGIN
delete from proveedor  where cod_proveedor=cod;
END */$$
DELIMITER ;

/* Procedure structure for procedure `elimina_comprobante_compra` */

/*!50003 DROP PROCEDURE IF EXISTS  `elimina_comprobante_compra` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `elimina_comprobante_compra`(tpcom VARCHAR(5),secom VARCHAR(15),nucom INT )
BEGIN
DELETE FROM comprobante_cabecera_compra WHERE cod_tipo_comp=tpcom AND ser_timb_comp=secom AND nro_comprob_comp=nucom;
END */$$
DELIMITER ;

/* Procedure structure for procedure `elimina_comprobante_venta` */

/*!50003 DROP PROCEDURE IF EXISTS  `elimina_comprobante_venta` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `elimina_comprobante_venta`(tpcom VARCHAR(5),secom VARCHAR(5),nucom INT )
BEGIN
DELETE FROM comprobante_cabecera_venta WHERE tipo_comprobante=tpcom AND ser_comprobante=secom AND nro_comprobante=nucom;
END */$$
DELIMITER ;

/* Procedure structure for procedure `elimina_mov_caja_compra` */

/*!50003 DROP PROCEDURE IF EXISTS  `elimina_mov_caja_compra` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `elimina_mov_caja_compra`(tpcom VARCHAR(5),secom VARCHAR(5),nucom INT )
BEGIN
DELETE FROM movimiento_caja_compra WHERE tipo_mov_caja_com=tpcom AND ser_mov_caja_com=secom AND nro_mov_caja_com=nucom;
END */$$
DELIMITER ;

/* Procedure structure for procedure `elimina_mov_caja_venta` */

/*!50003 DROP PROCEDURE IF EXISTS  `elimina_mov_caja_venta` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `elimina_mov_caja_venta`(tpcom VARCHAR(5),secom VARCHAR(5),nucom INT )
BEGIN
DELETE FROM movimiento_caja_venta WHERE tipo_mov_caja=tpcom AND ser_mov_caja=secom AND nro_mov_caja=nucom;
END */$$
DELIMITER ;

/* Procedure structure for procedure `elimina_recibo_compra` */

/*!50003 DROP PROCEDURE IF EXISTS  `elimina_recibo_compra` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `elimina_recibo_compra`(tpcom VARCHAR(5),secom VARCHAR(5),nucom INT )
BEGIN
DELETE FROM recibo_compra_cabecera WHERE tipo_rec_comp=tpcom AND ser_rec_comp=secom AND nro_rec_comp=nucom;
END */$$
DELIMITER ;

/* Procedure structure for procedure `elimina_recibo_venta` */

/*!50003 DROP PROCEDURE IF EXISTS  `elimina_recibo_venta` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `elimina_recibo_venta`(tpcom VARCHAR(5),secom VARCHAR(5),nucom INT )
BEGIN
DELETE FROM recibo_venta_cabecera WHERE tipo_recibo=tpcom AND ser_recibo=secom AND nro_recibo=nucom;
END */$$
DELIMITER ;

/* Procedure structure for procedure `generar_saldo_cliente` */

/*!50003 DROP PROCEDURE IF EXISTS  `generar_saldo_cliente` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `generar_saldo_cliente`(IN tipo VARCHAR(3),IN ser VARCHAR(2),IN numero INT,in cant_cuo int, in suc varchar(2),IN cliente INT,IN fecha DATE,IN monto decimal(10,2),IN mon VARCHAR(5),IN saldo decimal(10,2),in us varchar(10),in ref varchar(100))
BEGIN
DECLARE i INT;
DECLARE f DATE;
SET i=1;
WHILE i <= cant_cuo DO
INSERT INTO saldo_cliente(tipo_comprobante,ser_comprobante,nro_comprobante,nro_cuota,cod_sucursal,cod_cliente,fecha_vencimiento,monto_cuota,cod_moneda,saldo_cuota,cod_usuario,cod_referencia) VALUES(tipo,ser,numero,i,suc,cliente,ADDDATE(fecha,INTERVAL I MONTH),monto,mon,saldo,us,ref);
SET i = i + 1;
END WHILE;
END */$$
DELIMITER ;

/* Procedure structure for procedure `generar_saldo_proveedor` */

/*!50003 DROP PROCEDURE IF EXISTS  `generar_saldo_proveedor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `generar_saldo_proveedor`(IN tipo VARCHAR(3),IN ser VARCHAR(15),IN numero INT,IN cant_cuo INT, IN suc VARCHAR(5),IN cliente INT,IN fecha DATE,IN monto DECIMAL(10,2),IN mon VARCHAR(5),IN saldo INT,us VARCHAR(10))
BEGIN
DECLARE i INT;
DECLARE f DATE;
SET i=1;
/*WHILE i <= cant_cuo DO*/
INSERT INTO saldo_proveedor(tipo_comprobante,ser_comprobante,nro_comprobante,nro_cuota,cod_sucursal,cod_proveedor,fecha_vencimiento,monto_cuota,cod_moneda,saldo_cuota,cod_usuario) VALUES(tipo,ser,numero,1,suc,cliente,ADDDATE(fecha,INTERVAL cant_cuo MONTH),monto,mon,saldo,us);
/*SET i = i + 1;
END WHILE;*/
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_acceso` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_acceso` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_acceso`(IN cod_grupo VARCHAR(10),IN cod_modulo VARCHAR(5),IN desc_formulario VARCHAR(10),IN puede_insert VARCHAR(1),IN puede_modif VARCHAR(1),IN puede_borrar VARCHAR(1),IN puede_consul VARCHAR(1),IN mostrar_en_menu VARCHAR(1))
BEGIN
INSERT INTO acceso_grupo(cod_grupo,cod_modulo,desc_formulario,puede_insert,puede_modif,puede_borrar,puede_consul,mostrar_en_menu) VALUES(cod_grupo,cod_modulo,desc_formulario,puede_insert,puede_modif,puede_borrar,puede_consul,mostrar_en_menu);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_ajuste_stock_cab` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_ajuste_stock_cab` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_ajuste_stock_cab`(IN tipo_comprobante VARCHAR(3),IN ser_comprobante VARCHAR(2),IN nro_comprobante INT(15),IN cod_sucursal VARCHAR(5),IN cod_depos VARCHAR(5),IN fecha_comprobante DATE,IN estado VARCHAR(1),IN cod_usuario VARCHAR(10),IN mot_ent_sal_art INT(5),IN sub_mot_ent_sal_art INT(5),IN transac INT(5))
BEGIN
IF transac = 3 THEN
	INSERT INTO comprobante_cabecera_compra(cod_tipo_comp,ser_timb_comp,nro_comprob_comp,cod_sucursal,cod_deposito,fecha_comprob_comp,estado,cod_usuario,cod_mot_ent_sal_art,cod_sub_mot_ent_sal_art) VALUES(tipo_comprobante,ser_comprobante,nro_comprobante,cod_sucursal,cod_depos,fecha_comprobante,estado,cod_usuario,mot_ent_sal_art,sub_mot_ent_sal_art);
ELSEIF transac = 4 THEN
	INSERT INTO comprobante_cabecera_venta(tipo_comprobante,ser_comprobante,nro_comprobante,cod_sucursal,cod_deposito,fecha_comprobante,estado,cod_usuario,cod_mot_ent_sal_art,cod_sub_mot_ent_sal_art) VALUES(tipo_comprobante,ser_comprobante,nro_comprobante,cod_sucursal,cod_depos,fecha_comprobante,estado,cod_usuario,mot_ent_sal_art,sub_mot_ent_sal_art);
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_ajuste_stock_det` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_ajuste_stock_det` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_ajuste_stock_det`(IN tipo_comprobante VARCHAR(3),IN ser_comprobante VARCHAR(2),IN nro_comprobante INT(15),IN cod_articulo VARCHAR(50),IN cod_un_med VARCHAR(5),IN nro_lo VARCHAR(100),IN cantidad INT(2),IN descripcion VARCHAR(80),IN transac INT(5))
BEGIN
IF transac = 3 THEN
	INSERT INTO comprobante_detalle_compra(cod_tipo_comp,ser_timb_comp,nro_comprob_comp,cod_producto,cod_un_med,nro_lote,cantidad_prod,descripcion_prod) VALUES(tipo_comprobante,ser_comprobante,nro_comprobante,cod_articulo,cod_un_med,nro_lo,cantidad,descripcion);
ELSEIF transac = 4 THEN
	INSERT INTO comprobante_detalle_venta(tipo_comprobante,ser_comprobante,nro_comprobante,cod_articulo,cod_un_med,nro_lote,cantidad,descripcion) VALUES(tipo_comprobante,ser_comprobante,nro_comprobante,cod_articulo,cod_un_med,nro_lo,cantidad,descripcion);
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_articulo` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_articulo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_articulo`(IN cod_articulo VARCHAR(10),IN cod_un_med VARCHAR(5),IN nro_lote VARCHAR(100),IN desc_articulo VARCHAR(80),IN cod_proveedor VARCHAR(10),IN cod_marca VARCHAR(10),IN cod_categoria VARCHAR(10),IN precio_compra int(10),IN precio_venta int(10),IN cantidad int(10),IN cod_iva VARCHAR(10),IN estado VARCHAR(1),IN maneja_stock VARCHAR(1))
BEGIN
INSERT INTO articulo(cod_articulo,cod_un_med,nro_lote,desc_articulo,cod_proveedor,cod_marca,cod_categoria,precio_compra,precio_venta,cantidad,cod_iva,estado,maneja_stock) VALUES(cod_articulo,cod_un_med,nro_lote,desc_articulo,cod_proveedor,cod_marca,cod_categoria,precio_compra,precio_venta,cantidad,cod_iva,estado,maneja_stock);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_categoria_articulo` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_categoria_articulo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_categoria_articulo`(IN cod_cat VARCHAR(5),IN desc_cat VARCHAR(80))
BEGIN
INSERT INTO categoria(cod_categoria,desc_categoria) VALUES(cod_cat,desc_cat);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_cliente` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_cliente` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_cliente`(IN cod_persona INT(15),IN cod_moneda VARCHAR(5),IN cod_cobrador VARCHAR(20),IN cod_vendedor VARCHAR(20),IN limite_credito INT(10),IN cod_condicion_venta INT(10),IN tipo_cliente VARCHAR(10),IN estado VARCHAR(1),IN comentario VARCHAR(80),IN sucursal VARCHAR(5))
BEGIN
INSERT INTO cliente(cod_persona,cod_moneda,cod_cobrador,cod_vendedor,limite_credito,cod_condicion_venta,tipo_cliente,estado,comentario,cod_sucursal) VALUES(cod_persona,cod_moneda,cod_cobrador,cod_vendedor,limite_credito,cod_condicion_venta,tipo_cliente,estado,comentario,sucursal);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_compra_cabecera` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_compra_cabecera` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_compra_cabecera`(IN tipo_comp VARCHAR(3),IN ser_timb VARCHAR(15),IN nro_comprob INT(15),in nro_timb varchar(30),IN fecha_comprobante DATE,IN cod_us VARCHAR(10),IN cod_suc VARCHAR(5),IN cod_dep VARCHAR(5),IN cod_proveedor INT(10),IN cod_cond INT(5),in cant_cuo int(5),in fec_inic_comp date,in mont_cuo decimal(10,2),IN total_comprobante DECIMAL(10,2),IN total_iva DECIMAL(10,2),IN total_gravada DECIMAL(10,2),IN cod_moneda VARCHAR(5),in ti_camb DECIMAL(10,2),IN est VARCHAR(1))
BEGIN
INSERT INTO comprobante_cabecera_compra(cod_tipo_comp,ser_timb_comp,nro_comprob_comp,nro_timbrado,fecha_comprob_comp,cod_usuario,cod_sucursal,cod_deposito,cod_proveedor,cod_cond_comp,cant_cuota,fecha_inic_comp,monto_cuota,total_comprob_comp,iva_comp,gravada,cod_moneda,tipo_cambio,estado) VALUES(tipo_comp,ser_timb,nro_comprob,nro_timb,fecha_comprobante,cod_us,cod_suc,cod_dep,cod_proveedor,cod_cond,cant_cuo,fec_inic_comp,mont_cuo,total_comprobante,total_iva,total_gravada,cod_moneda,ti_camb,est);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_compra_detalle` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_compra_detalle` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_compra_detalle`(IN tipo_comprobante VARCHAR(3),IN ser_comprobante VARCHAR(15),IN nro_comprobante INT(15),IN cod_articulo VARCHAR(100),cod_un varchar(5),lo varchar(100),in desc_articulo varchar(100),IN cantidad DECIMAL(10,2),IN precio_unitario DECIMAL(10,2),IN descuento DECIMAL(10,2),IN importe DECIMAL(10,2),IN total_iva5 DECIMAL(10,2),IN total_iva10 DECIMAL(10,2),IN gravada_5 DECIMAL(10,2),IN gravada_10 DECIMAL(10,2))
BEGIN
INSERT INTO comprobante_detalle_compra(cod_tipo_comp,ser_timb_comp,nro_comprob_comp,cod_producto,cod_un_med,nro_lote,descripcion_prod,cantidad_prod,precio_unitario,descuento,importe,total_iva_5,total_iva_10,gravada_5,gravada_10) VALUES(tipo_comprobante,ser_comprobante,nro_comprobante,cod_articulo,cod_un,lo,desc_articulo,cantidad,precio_unitario,descuento,importe,total_iva5,total_iva10,gravada_5,gravada_10);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_comprobante_cabecera` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_comprobante_cabecera` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_comprobante_cabecera`(IN tipo_comprobante VARCHAR(3),IN ser_comprobante VARCHAR(2),IN nro_comprobante int(15),IN cod_sucursal VARCHAR(5),IN cod_depos VARCHAR(5),IN fecha_comprobante date,IN cod_cliente int(10),IN cod_cobrador varchar(10),IN cod_vendedor varchar(10),IN cod_condicion_venta INT(5),IN cod_moneda VARCHAR(5),IN total_comprobante decimal(10,2),IN total_gravada decimal(10,2),IN total_iva decimal(10,2),IN estado varchar(1),IN cod_usuario varchar(10),IN comentario varchar(50),in monto_cuo decimal(10,2),IN descuent DECIMAL(10,2))
BEGIN
INSERT INTO comprobante_cabecera_venta(tipo_comprobante,ser_comprobante,nro_comprobante,cod_sucursal,cod_deposito,fecha_comprobante,cod_cliente,cod_cobrador,cod_vendedor,cod_condicion_venta,cod_moneda,total_comprobante,total_gravada,total_iva,estado,cod_usuario,comentario,monto_cuota,descuento) VALUES(tipo_comprobante,ser_comprobante,nro_comprobante,cod_sucursal,cod_depos,fecha_comprobante,cod_cliente,cod_cobrador,cod_vendedor,cod_condicion_venta,cod_moneda,total_comprobante,total_gravada,total_iva,estado,cod_usuario,comentario,monto_cuo,descuent);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_comprobante_detalle` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_comprobante_detalle` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_comprobante_detalle`(IN tipo_comprobante VARCHAR(3),IN ser_comprobante VARCHAR(2),IN nro_comprobante int(15),IN cod_articulo VARCHAR(50),in cod_un_med varchar(5),in nro_lo varchar(100),IN cantidad INT(2),IN precio_unitario decimal(10,2),IN descuento decimal(10,2),IN gravada_10 decimal(10,2),IN gravada_5 decimal(10,2),IN importe_total decimal(10,2),IN total_iva10 decimal(10,2),IN total_iva5 decimal(10,2),IN porcentaje_iva INT(2),IN cod_iva int(2),IN porcentaje_descuento int(2),IN nro_cuota int(2),in descripcion varchar(80))
BEGIN
INSERT INTO comprobante_detalle_venta(tipo_comprobante,ser_comprobante,nro_comprobante,cod_articulo,cod_un_med,nro_lote,cantidad,precio_unitario,descuento,gravada_10,gravada_5,importe_total,total_iva10,total_iva5,porcentaje_iva,cod_iva,porcentaje_descuento,nro_cuota,descripcion) VALUES(tipo_comprobante,ser_comprobante,nro_comprobante,cod_articulo,cod_un_med,nro_lo,cantidad,precio_unitario,descuento,gravada_10,gravada_5,importe_total,total_iva10,total_iva5,porcentaje_iva,cod_iva,porcentaje_descuento,nro_cuota,descripcion);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_condicion_venta` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_condicion_venta` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_condicion_venta`(IN cod_condicion int(10),IN descripcion VARCHAR(80),IN numero_cuota int(5),IN dia_inicial INT(5),IN plazo int(10),IN estado VARCHAR(1))
BEGIN
INSERT INTO condicion_venta(cod_condicion,descripcion,numero_cuota,dia_inicial,plazo,estado) VALUES(cod_condicion,descripcion,numero_cuota,dia_inicial,plazo,estado);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_exist_articulo` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_exist_articulo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_exist_articulo`(IN cod_suc VARCHAR(5),IN cod_dep VARCHAR(5),IN cod_art VARCHAR(100),in cod_un varchar(5),in lot varchar(100),in tip_tra int(5),in sub_tip int(5),in cant_art int(5))
BEGIN
INSERT INTO existencia_articulo(cod_sucursal,cod_deposito,cod_articulo,cod_un_medida,nro_lote,tipo_transacc,sub_tipo_transacc,cantidad) VALUES(cod_suc,cod_dep,cod_art,cod_un,lot,tip_tra,sub_tip,cant_art);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_forma_cobro_venta` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_forma_cobro_venta` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_forma_cobro_venta`(IN tipo_mov_cja VARCHAR(3),IN ser_mov_cja VARCHAR(3),IN nro_mov_cja INT(15),IN tipo_tran int(5),IN su_tip_tra int(5),IN cod_pers_juridic INT(10),IN nro_val VARCHAR(30),IN nro_cuen VARCHAR(30),IN mot decimal(10,2))
BEGIN
INSERT INTO forma_cobro_venta(tipo_mov_caja,ser_mov_caja,nro_mov_caja,tipo_transaccion,sub_tipo_transaccion,cod_persona_juridica,nro_valor,nro_cuenta,monto)VALUES(tipo_mov_cja,ser_mov_cja,nro_mov_cja,tipo_tran,su_tip_tra,cod_pers_juridic,nro_val,nro_cuen,mot);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_forma_pago` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_forma_pago` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_forma_pago`(IN tipo_mov_cja VARCHAR(3),IN ser_mov_cja VARCHAR(3),IN nro_mov_cja INT(15),IN tipo_tran INT(5),IN su_tip_tra INT(5),IN cod_pers_juridic INT(10),IN nro_val VARCHAR(30),IN nro_cuen VARCHAR(30),IN mot decimal(10,2))
BEGIN
INSERT INTO forma_pago_compra(tipo_mov_caja_com,ser_mov_caja_com,nro_mov_caja_com,tipo_transaccion,sub_tipo_transaccion,cod_persona_juridica,nro_valor,nro_cuenta,monto)VALUES(tipo_mov_cja,ser_mov_cja,nro_mov_cja,tipo_tran,su_tip_tra,cod_pers_juridic,nro_val,nro_cuen,mot);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_hab_caja_ventas` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_hab_caja_ventas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_hab_caja_ventas`(IN fecha_hab_caj VARCHAR(20),IN saldo_inicial_caj INT(10),IN cod_caja_hab VARCHAR(20),IN cod_sucursal_hab VARCHAR(20),IN cod_usuario_hab VARCHAR(20),IN estado_hab VARCHAR(1))
BEGIN
INSERT INTO habilitacion_caja(fecha_hab,saldo_inicial,cod_caja,cod_sucursal,cod_usuario,estado) VALUES(fecha_hab_caj,saldo_inicial_caj,cod_caja_hab,cod_sucursal_hab,cod_usuario_hab,estado_hab);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_marca_articulo` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_marca_articulo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_marca_articulo`(IN cod_mar VARCHAR(5),IN desc_mar VARCHAR(80))
BEGIN
INSERT INTO marca(cod_marca,desc_marca) VALUES(cod_mar,desc_mar);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_movimiento_caja_compra` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_movimiento_caja_compra` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_movimiento_caja_compra`(IN tipo_mov VARCHAR(3),IN ser_mov VARCHAR(3),IN nro_mov INT(10),IN fecha_mov DATE,IN cod_suc VARCHAR(5),IN cod_prov INT(10),IN cod_usu VARCHAR(10),IN total_mov decimal(10,2))
BEGIN
INSERT INTO movimiento_caja_compra(tipo_mov_caja_com,ser_mov_caja_com,nro_mov_caja_com,fecha_mov_caja_com,cod_sucursal,cod_proveedor,cod_usuario,total_mov_caja_com)VALUES(tipo_mov,ser_mov,nro_mov,fecha_mov,cod_suc,cod_prov,cod_usu,total_mov);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_movimiento_caja_venta` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_movimiento_caja_venta` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_movimiento_caja_venta`(IN tipo_mov_caja VARCHAR(3),IN ser_mov_caja VARCHAR(3),in nro_mov_caja INT(10),IN fecha_mov_caja_venta DATE,IN cod_sucursal VARCHAR(5),IN cod_cliente INT(10),IN cod_usuario VARCHAR(10),IN cod_caja VARCHAR(10),IN numero_hab INT(10),IN total_mov_caja decimal(10,2))
BEGIN
INSERT INTO movimiento_caja_venta(tipo_mov_caja,ser_mov_caja,nro_mov_caja,fecha_mov_caja_venta,cod_sucursal,cod_cliente,cod_usuario,cod_caja,numero_hab,total_mov_caja)VALUES(tipo_mov_caja,ser_mov_caja,nro_mov_caja,fecha_mov_caja_venta,cod_sucursal,cod_cliente,cod_usuario,cod_caja,numero_hab,total_mov_caja);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_movimiento_comprobante_compra` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_movimiento_comprobante_compra` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_movimiento_comprobante_compra`(IN tipo_mov VARCHAR(3),IN ser_mov VARCHAR(3),IN nro_mov INT(15),IN cod_suc VARCHAR(5),in tipo_trans int(5),in sub_tipo_trans int(5),IN tipo_comprob VARCHAR(3),IN ser_comprob VARCHAR(15),IN nro_comprob INT(10),IN total_comprob decimal(10,2))
BEGIN
INSERT INTO movimiento_comprobante_compra(tipo_mov_caja_com,ser_mov_caja_com,nro_mov_caja_com,cod_sucursal,tipo_transacc,sub_tipo_transacc,tipo_comprobante_com,ser_comprobante_com,nro_comprobante_com,total_comprobante_com)VALUES(tipo_mov,ser_mov,nro_mov,cod_suc,tipo_trans,sub_tipo_trans,tipo_comprob,ser_comprob,nro_comprob,total_comprob);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_movimiento_comprobante_venta` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_movimiento_comprobante_venta` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_movimiento_comprobante_venta`(IN tipo_mov_caja VARCHAR(3),IN ser_mov_caja VARCHAR(3),IN nro_mov_caja INT(15),IN cod_sucursal VARCHAR(5),IN tipo_comprobante VARCHAR(3),IN ser_comprobante VARCHAR(3),IN nro_comprobante INT(10),IN total_comprobante decimal(10,2))
BEGIN
INSERT INTO movimiento_comprobante_venta(tipo_mov_caja,ser_mov_caja,nro_mov_caja,cod_sucursal,tipo_comprobante,ser_comprobante,nro_comprobante,total_comprobante)VALUES(tipo_mov_caja,ser_mov_caja,nro_mov_caja,cod_sucursal,tipo_comprobante,ser_comprobante,nro_comprobante,total_comprobante);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_persona` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_persona` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_persona`(IN nombre VARCHAR(80),IN cod_tipo_doc VARCHAR(10),IN ruc_ci VARCHAR(15),IN cod_ciudad INT(10),IN direccion VARCHAR(100),IN direccion_trabajo VARCHAR(100),IN telefono_domicilio VARCHAR(20),IN telefono_trabajo VARCHAR(20),IN celular VARCHAR(15),IN fecha_nacimiento DATE,IN cod_estado_civil VARCHAR (5),IN cod_pais INTEGER(10),IN es_ban VARCHAR(1),IN gen_cl VARCHAR(1),IN cod_sucur VARCHAR(5))
BEGIN
INSERT INTO persona(nombre,cod_tipo_doc,ruc_ci,cod_ciudad,direccion,direccion_trabajo,telefono_domicilio,telefono_trabajo,celular,fecha_nacimiento,cod_estado_civil,cod_pais,es_banco,gen_cliente,cod_sucursal) VALUES(nombre,cod_tipo_doc,ruc_ci,cod_ciudad,direccion,direccion_trabajo,telefono_domicilio,telefono_trabajo,celular,fecha_nacimiento,cod_estado_civil,cod_pais,es_ban,gen_cl,cod_sucur);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_planes_vigencia` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_planes_vigencia` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_planes_vigencia`(IN plan INT(5),IN fec_desde date,IN fec_hasta date,IN importe decimal(10,2),IN ind VARCHAR(1),IN plan_ren INT(5),IN cant_cuo INT(5))
BEGIN
INSERT INTO planes_vigencia(cod_plan,fecha_desde,fecha_hasta,importe_plan,ind_renov,cod_plan_renov,cant_cuotas) VALUES(plan,fec_desde,fec_hasta,importe,ind,plan_ren,cant_cuo);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_proveedor` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_proveedor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_proveedor`(IN cod_persona INT(15),in cod_tipo_prov varchar(5),in estado varchar(1))
BEGIN
INSERT INTO proveedor(cod_persona,cod_tipo_prov,estado) VALUES(cod_persona,cod_tipo_prov,estado);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_recibo_compra_cabecera` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_recibo_compra_cabecera` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_recibo_compra_cabecera`(IN tipo_recibo VARCHAR(3),IN ser_recibo VARCHAR(7),IN nro_recibo INT(15),IN cod_sucursal VARCHAR(5),IN fecha_recibo DATE,IN cod_prov INT(10),IN cod_moneda VARCHAR(5),IN cod_usuario VARCHAR(10),IN estado VARCHAR(1),IN total_recibo INT(15),IN comentario VARCHAR(50))
BEGIN
INSERT INTO recibo_compra_cabecera(tipo_rec_comp,ser_rec_comp,nro_rec_comp,cod_sucursal,fecha_rec_comp,cod_proveedor,cod_moneda,cod_usuario,estado,total_rec_comp,comentario) VALUES(tipo_recibo,ser_recibo,nro_recibo,cod_sucursal,fecha_recibo,cod_prov,cod_moneda,cod_usuario,estado,total_recibo,comentario);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_recibo_compra_detalle` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_recibo_compra_detalle` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_recibo_compra_detalle`(IN tipo_recibo VARCHAR(3),IN ser_recibo VARCHAR(7),IN nro_recibo INT(15),IN tipo_transaccion INT(5),IN sub_tipo_transac INT(5),IN tipo_comprobante_ref VARCHAR(3),IN ser_comprobante_ref VARCHAR(7),IN nro_comprobante_ref INT(15),IN nro_cuota INT(5),IN fecha_vencimiento DATE,IN monto_cuota INT(15),IN importe_total INT(15))
BEGIN
INSERT INTO recibo_detalle_compra(`tipo_rec_comp`,`ser_rec_comp`,`nro_rec_comp`,tipo_transaccion,sub_tipo_transac,tipo_comprobante_ref,ser_comprobante_ref,nro_comprobante_ref,nro_cuota,fecha_vencimiento,monto_cuota,importe_total) VALUES(tipo_recibo,ser_recibo,nro_recibo,tipo_transaccion,sub_tipo_transac,tipo_comprobante_ref,ser_comprobante_ref,nro_comprobante_ref,nro_cuota,fecha_vencimiento,monto_cuota,importe_total);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_recibo_venta_cabecera` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_recibo_venta_cabecera` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_recibo_venta_cabecera`(IN tipo_recibo VARCHAR(3),IN ser_recibo VARCHAR(2),IN nro_recibo INT(15),IN cod_sucursal VARCHAR(5),IN fecha_recibo DATE,IN cod_cliente INT(10),IN cod_cobrador VARCHAR(10),IN cod_moneda VARCHAR(5),IN cod_usuario VARCHAR(10),IN estado VARCHAR(1),IN total_recibo decimal(10,2),IN comentario VARCHAR(50))
BEGIN
INSERT INTO recibo_venta_cabecera(tipo_recibo,ser_recibo,nro_recibo,cod_sucursal,fecha_recibo,cod_cliente,cod_cobrador,cod_moneda,cod_usuario,estado,total_recibo,comentario) VALUES(tipo_recibo,ser_recibo,nro_recibo,cod_sucursal,fecha_recibo,cod_cliente,cod_cobrador,cod_moneda,cod_usuario,estado,total_recibo,comentario);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_recibo_venta_detalle` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_recibo_venta_detalle` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_recibo_venta_detalle`(IN tipo_recibo VARCHAR(3),IN ser_recibo VARCHAR(2),IN nro_recibo INT(15),IN tipo_transaccion INT(5),IN sub_tipo_transac INT(5),IN tipo_comprobante_ref VARCHAR(3),IN ser_comprobante_ref VARCHAR(2),IN nro_comprobante_ref INT(15),IN nro_cuota INT(5),IN fecha_vencimiento date,IN monto_cuota decimal(10,2),IN importe_total decimal(10,2))
BEGIN
INSERT INTO recibo_detalle_venta(tipo_recibo,ser_recibo,nro_recibo,tipo_transaccion,sub_tipo_transac,tipo_comprobante_ref,ser_comprobante_ref,nro_comprobante_ref,nro_cuota,fecha_vencimiento,monto_cuota,importe_total) VALUES(tipo_recibo,ser_recibo,nro_recibo,tipo_transaccion,sub_tipo_transac,tipo_comprobante_ref,ser_comprobante_ref,nro_comprobante_ref,nro_cuota,fecha_vencimiento,monto_cuota,importe_total);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_serie_comprobante` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_serie_comprobante` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_serie_comprobante`(IN tipo_comp VARCHAR(3),IN ser_comp VARCHAR(2),IN cod_suc VARCHAR(5),IN nro_inicial int(15),IN nro_final int(15),IN ser_timb VARCHAR(30),IN nro_timbrado VARCHAR(30),IN fec_vig VARCHAR(20))
BEGIN
INSERT INTO serie_comprobante(tipo_comprobante,ser_comprobante,cod_sucursal,numero_inicial,numero_final,ser_timbrado,numero_timbrado,fecha_vigencia) VALUES(tipo_comp,ser_comp,cod_suc,nro_inicial,nro_final,ser_timb,nro_timbrado,fec_vig);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_talonario` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_talonario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_talonario`(IN tipo_tal VARCHAR(3),IN ser VARCHAR(2),IN cod_suc VARCHAR(5),in nro_tal int(10),IN nro_inicial int(15),IN nro_final int(15),IN estad VARCHAR(1))
BEGIN
INSERT INTO talonario(tipo_talonario,serie,cod_sucursal,nro_talonario,numero_inicial,numero_final,estado) VALUES(tipo_tal,ser,cod_suc,nro_tal,nro_inicial,nro_final,estad);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_talonario_usuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_talonario_usuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_talonario_usuario`(IN tipo_tal VARCHAR(3),IN ser VARCHAR(2),IN cod_suc VARCHAR(5),in nro_tal int(10),IN cod_us varchar(20))
BEGIN
INSERT INTO talonario_usuario(tipo_talonario,serie,cod_sucursal,nro_talonario,cod_usuario) VALUES(tipo_tal,ser,cod_suc,nro_tal,cod_us);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_und_med_articulo` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_und_med_articulo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_und_med_articulo`(IN cod_un VARCHAR(5),IN desc_un VARCHAR(100))
BEGIN
INSERT INTO unidad_med_articulo(cod_un_med,desc_un_med) VALUES(cod_un,desc_un);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_usuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_usuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_usuario`(IN cod_usuario VARCHAR(10),IN clave_usuario VARCHAR(20),IN cod_persona INT(15),IN cod_grupo VARCHAR(15),IN cod_sucursal VARCHAR(5),IN cod_depos VARCHAR(5),IN estado VARCHAR(1))
BEGIN
INSERT INTO usuario(cod_usuario,clave_usuario,cod_persona,cod_grupo,cod_sucursal,cod_deposito,estado) VALUES(cod_usuario,clave_usuario,cod_persona,cod_grupo,cod_sucursal,cod_depos,estado);
END */$$
DELIMITER ;

/* Procedure structure for procedure `prueba_cursor1` */

/*!50003 DROP PROCEDURE IF EXISTS  `prueba_cursor1` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prueba_cursor1`(INOUT email_list varchar(4000))
BEGIN
 
 DECLARE v_finished INTEGER DEFAULT 0;
 DECLARE v_email VARCHAR(100) DEFAULT "";
 
 -- declare cursor for employee email
 DECLARE email_cursor CURSOR FOR 
 SELECT cod_categoria FROM categoria;
 
 -- declare NOT FOUND handler
 DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET v_finished = 1;
 
 OPEN email_cursor;
 
 get_email: LOOP
 
 FETCH email_cursor INTO v_email;
 
 IF v_finished = 1 THEN 
 LEAVE get_email;
 END IF;
 
 -- build email list
 SET email_list = CONCAT(v_email,";",email_list);
 
 END LOOP get_email;
 
 CLOSE email_cursor;
 
END */$$
DELIMITER ;

/*Table structure for table `view_articulo` */

DROP TABLE IF EXISTS `view_articulo`;

/*!50001 DROP VIEW IF EXISTS `view_articulo` */;
/*!50001 DROP TABLE IF EXISTS `view_articulo` */;

/*!50001 CREATE TABLE  `view_articulo`(
 `cod_articulo` varchar(100) ,
 `unidad_med` varchar(100) ,
 `nro_lote` varchar(100) ,
 `desc_articulo` varchar(100) ,
 `cod_proveedor` int(10) ,
 `nombre_prov` varchar(80) ,
 `razon_social` varchar(80) ,
 `cod_marca` varchar(10) ,
 `desc_marca` varchar(80) ,
 `cod_categoria` varchar(10) ,
 `desc_categoria` varchar(80) ,
 `precio_compra` int(10) ,
 `precio_venta` int(10) ,
 `cantidad` int(10) ,
 `cod_iva` varchar(10) ,
 `desc_iva` varchar(50) ,
 `estado` varchar(8) ,
 `man_stock` varchar(2) 
)*/;

/*Table structure for table `view_cliente` */

DROP TABLE IF EXISTS `view_cliente`;

/*!50001 DROP VIEW IF EXISTS `view_cliente` */;
/*!50001 DROP TABLE IF EXISTS `view_cliente` */;

/*!50001 CREATE TABLE  `view_cliente`(
 `cod_cliente` int(15) ,
 `cod_persona` int(15) ,
 `nombre` varchar(80) ,
 `cod_moneda` varchar(5) ,
 `desc_moneda` varchar(50) ,
 `cod_cobrador` varchar(20) ,
 `cobrador` varchar(80) ,
 `cod_vendedor` varchar(20) ,
 `vendedor` varchar(80) ,
 `limite_credito` varchar(11) ,
 `cod_condicion_venta` varchar(11) ,
 `condicion` varchar(80) ,
 `cod_tipo_clien` varchar(10) ,
 `tipo_cliente` varchar(80) ,
 `estado` varchar(8) ,
 `comentario` varchar(80) ,
 `ruc_ci` varchar(20) ,
 `cod_sucursal` varchar(5) 
)*/;

/*Table structure for table `view_comprob_compra_cab_det` */

DROP TABLE IF EXISTS `view_comprob_compra_cab_det`;

/*!50001 DROP VIEW IF EXISTS `view_comprob_compra_cab_det` */;
/*!50001 DROP TABLE IF EXISTS `view_comprob_compra_cab_det` */;

/*!50001 CREATE TABLE  `view_comprob_compra_cab_det`(
 `tipo_comp` varchar(10) ,
 `tipo_comprobante` varchar(20) ,
 `serie_comp` varchar(30) ,
 `nro_comp` int(10) ,
 `nro_timbrado_comp` varchar(30) ,
 `fecha_comprob` varchar(10) ,
 `cod_usuario` varchar(10) ,
 `nomb_usuario` varchar(80) ,
 `cod_sucursal` varchar(5) ,
 `desc_sucursal` varchar(50) ,
 `cod_deposito` varchar(5) ,
 `desc_deposito` varchar(80) ,
 `cod_proveedor` int(10) ,
 `nomb_proveedor` varchar(80) ,
 `cond_comp` int(5) ,
 `descripcion` varchar(80) ,
 `cant_cuota` int(10) ,
 `fecha_inic_comp` varchar(10) ,
 `monto_cuota` decimal(10,2) ,
 `total_comp` decimal(10,2) ,
 `total_iva_comp` decimal(10,2) ,
 `total_grav_comp` decimal(10,2) ,
 `cod_moneda` varchar(5) ,
 `desc_moneda` varchar(50) ,
 `tipo_cambio` decimal(10,2) ,
 `estado` varchar(1) ,
 `cod_articulo` varchar(100) ,
 `unidad_med` varchar(100) ,
 `nro_lote` varchar(100) ,
 `desc_articulo` varchar(100) ,
 `cant_articulo` decimal(10,2) ,
 `precio_unitario` decimal(10,2) ,
 `descuento` decimal(10,2) ,
 `importe` decimal(10,2) ,
 `iva5` decimal(10,2) ,
 `iva10` decimal(10,2) ,
 `gravada5` decimal(10,2) ,
 `gravada10` decimal(10,2) ,
 `trans_ent_sal_art` int(5) ,
 `desc_trans_ent_sal_art` varchar(80) ,
 `sub_trans_ent_sal_art` int(5) ,
 `desc_sub_trans_ent_sal_art` varchar(50) 
)*/;

/*Table structure for table `view_comprob_venta_cab_det` */

DROP TABLE IF EXISTS `view_comprob_venta_cab_det`;

/*!50001 DROP VIEW IF EXISTS `view_comprob_venta_cab_det` */;
/*!50001 DROP TABLE IF EXISTS `view_comprob_venta_cab_det` */;

/*!50001 CREATE TABLE  `view_comprob_venta_cab_det`(
 `cod_sucursal` varchar(5) ,
 `desc_sucursal` varchar(50) ,
 `tipo_comprobante` varchar(20) ,
 `ser_comprobante` varchar(5) ,
 `nro_comprobante` int(15) ,
 `fecha_comprobante` varchar(10) ,
 `cod_cliente` int(10) ,
 `nombre_cliente` varchar(80) ,
 `cod_cobrador` varchar(10) ,
 `nombre_cobrador` varchar(80) ,
 `cod_vendedor` varchar(10) ,
 `nombre_vendedor` varchar(80) ,
 `cod_condicion_venta` int(10) ,
 `descripcion` varchar(80) ,
 `cod_moneda` varchar(5) ,
 `desc_moneda` varchar(50) ,
 `cod_articulo` varchar(50) ,
 `cod_un_med` varchar(100) ,
 `nro_lote` varchar(100) ,
 `cantidad` decimal(10,2) ,
 `desc_articulo` varchar(100) ,
 `precio_unitario` decimal(10,2) ,
 `importe_total` decimal(10,2) ,
 `total_iva5` decimal(10,2) ,
 `total_iva10` decimal(10,2) ,
 `gravada_5` decimal(10,2) ,
 `gravada_10` decimal(10,2) ,
 `total_gravada` decimal(10,2) ,
 `total_iva` decimal(10,2) ,
 `total_comprobante` decimal(10,2) ,
 `cod_deposito` varchar(5) ,
 `desc_deposito` varchar(80) ,
 `estado` varchar(1) ,
 `tip_comp` varchar(5) ,
 `fec_comp` date ,
 `trans_ent_sal_art` int(5) ,
 `desc_trans_ent_sal_art` varchar(80) ,
 `sub_trans_ent_sal_art` int(5) ,
 `desc_sub_trans_ent_sal_art` varchar(50) ,
 `descuento_importe` decimal(10,2) ,
 `total_descuento` decimal(10,2) ,
 `comentario` varchar(80) 
)*/;

/*Table structure for table `view_existencia_articulo` */

DROP TABLE IF EXISTS `view_existencia_articulo`;

/*!50001 DROP VIEW IF EXISTS `view_existencia_articulo` */;
/*!50001 DROP TABLE IF EXISTS `view_existencia_articulo` */;

/*!50001 CREATE TABLE  `view_existencia_articulo`(
 `cod_sucursal` varchar(10) ,
 `desc_sucursal` varchar(50) ,
 `cod_deposito` varchar(10) ,
 `desc_deposito` varchar(80) ,
 `cod_articulo` varchar(100) ,
 `cod_un_medida` varchar(5) ,
 `nro_lote` varchar(100) ,
 `desc_articulo` varchar(100) ,
 `existencia` decimal(41,2) 
)*/;

/*Table structure for table `view_grupo_usuario` */

DROP TABLE IF EXISTS `view_grupo_usuario`;

/*!50001 DROP VIEW IF EXISTS `view_grupo_usuario` */;
/*!50001 DROP TABLE IF EXISTS `view_grupo_usuario` */;

/*!50001 CREATE TABLE  `view_grupo_usuario`(
 `cod_grupo` varchar(15) ,
 `desc_grupo` varchar(50) ,
 `cod_modulo` varchar(5) ,
 `desc_modulo` varchar(50) ,
 `desc_formulario` varchar(10) ,
 `menu` varchar(2) ,
 `borrar` varchar(2) ,
 `consultar` varchar(2) ,
 `insertar` varchar(2) ,
 `modificar` varchar(2) 
)*/;

/*Table structure for table `view_mov_caja_compra` */

DROP TABLE IF EXISTS `view_mov_caja_compra`;

/*!50001 DROP VIEW IF EXISTS `view_mov_caja_compra` */;
/*!50001 DROP TABLE IF EXISTS `view_mov_caja_compra` */;

/*!50001 CREATE TABLE  `view_mov_caja_compra`(
 `tipo_mov_comp` varchar(5) ,
 `ser_mov_comp` varchar(5) ,
 `nro_mov_comp` int(10) ,
 `fecha_mov_comp` varchar(10) ,
 `cod_sucursal` varchar(5) ,
 `desc_sucursal` varchar(50) ,
 `cod_proveedor` int(11) ,
 `nomb_proveedor` varchar(80) ,
 `cod_usuario` varchar(15) ,
 `nomb_usuario` varchar(80) ,
 `total_mov_comp` decimal(10,2) 
)*/;

/*Table structure for table `view_mov_caja_venta` */

DROP TABLE IF EXISTS `view_mov_caja_venta`;

/*!50001 DROP VIEW IF EXISTS `view_mov_caja_venta` */;
/*!50001 DROP TABLE IF EXISTS `view_mov_caja_venta` */;

/*!50001 CREATE TABLE  `view_mov_caja_venta`(
 `tipo_mov_caja` varchar(5) ,
 `ser_mov_caja` varchar(5) ,
 `nro_mov_caja` int(10) ,
 `fecha_mov_caja_venta` varchar(10) ,
 `cod_sucursal` varchar(5) ,
 `desc_sucursal` varchar(50) ,
 `cod_cliente` int(11) ,
 `nomb_cliente` varchar(80) ,
 `cod_usuario` varchar(15) ,
 `nomb_usuario` varchar(80) ,
 `cod_caja` varchar(5) ,
 `desc_caja` varchar(50) ,
 `numero_hab` int(11) ,
 `total_mov_caja` decimal(10,2) ,
 `fecha_movimiento` date 
)*/;

/*Table structure for table `view_persona` */

DROP TABLE IF EXISTS `view_persona`;

/*!50001 DROP VIEW IF EXISTS `view_persona` */;
/*!50001 DROP TABLE IF EXISTS `view_persona` */;

/*!50001 CREATE TABLE  `view_persona`(
 `cod_persona` int(15) ,
 `nombre` varchar(80) ,
 `cod_tipo_doc` varchar(10) ,
 `Desc_tipo_doc` varchar(50) ,
 `ruc_ci` varchar(20) ,
 `cod_ciudad` varchar(11) ,
 `desc_ciudad` varchar(50) ,
 `direccion` varchar(100) ,
 `direccion_trabajo` varchar(100) ,
 `telefono_domicilio` varchar(50) ,
 `telefono_trabajo` varchar(50) ,
 `celular` varchar(50) ,
 `fecha_nacimiento` varchar(10) ,
 `cod_estado_civil` varchar(5) ,
 `desc_estado_civil` varchar(50) ,
 `cod_pais` varchar(11) ,
 `desc_pais` varchar(50) ,
 `es_banco` varchar(1) ,
 `gen_cliente` varchar(1) ,
 `cod_sucursal` varchar(5) 
)*/;

/*Table structure for table `view_recibo_compra` */

DROP TABLE IF EXISTS `view_recibo_compra`;

/*!50001 DROP VIEW IF EXISTS `view_recibo_compra` */;
/*!50001 DROP TABLE IF EXISTS `view_recibo_compra` */;

/*!50001 CREATE TABLE  `view_recibo_compra`(
 `cod_usuario` varchar(10) ,
 `nomb_usuario` varchar(80) ,
 `cod_sucursal` varchar(5) ,
 `desc_sucursal` varchar(50) ,
 `tipo_recibo` varchar(3) ,
 `ser_recibo` varchar(7) ,
 `nro_recibo` int(10) ,
 `fecha_recibo` varchar(10) ,
 `cod_proveedor` int(10) ,
 `nomb_cliente` varchar(80) ,
 `cod_moneda` varchar(3) ,
 `desc_moneda` varchar(50) ,
 `total_recibo` int(10) ,
 `comentario` varchar(80) ,
 `tipo_transaccion` int(5) ,
 `sub_tipo_transac` int(5) ,
 `tipo_comprobante_ref` varchar(3) ,
 `ser_comprobante_ref` varchar(7) ,
 `nro_comprobante_ref` int(10) ,
 `nro_cuota` int(5) ,
 `fecha_vencimiento` date ,
 `monto_cuota` int(10) ,
 `importe_total` int(10) 
)*/;

/*Table structure for table `view_recibo_venta` */

DROP TABLE IF EXISTS `view_recibo_venta`;

/*!50001 DROP VIEW IF EXISTS `view_recibo_venta` */;
/*!50001 DROP TABLE IF EXISTS `view_recibo_venta` */;

/*!50001 CREATE TABLE  `view_recibo_venta`(
 `cod_usuario` varchar(10) ,
 `nomb_usuario` varchar(80) ,
 `cod_sucursal` varchar(5) ,
 `desc_sucursal` varchar(50) ,
 `tipo_recibo` varchar(3) ,
 `ser_recibo` varchar(3) ,
 `nro_recibo` int(10) ,
 `fecha_recibo` varchar(10) ,
 `cod_cliente` int(10) ,
 `nomb_cliente` varchar(80) ,
 `cod_cobrador` varchar(3) ,
 `nomb_cobrador` varchar(80) ,
 `cod_moneda` varchar(3) ,
 `desc_moneda` varchar(50) ,
 `total_recibo` decimal(10,2) ,
 `comentario` varchar(80) ,
 `tipo_transaccion` int(5) ,
 `sub_tipo_transac` int(5) ,
 `tipo_comprobante_ref` varchar(3) ,
 `ser_comprobante_ref` varchar(3) ,
 `nro_comprobante_ref` int(10) ,
 `nro_cuota` int(5) ,
 `fecha_vencimiento` date ,
 `monto_cuota` decimal(10,2) ,
 `importe_total` decimal(10,2) ,
 `fecha_rec` date 
)*/;

/*Table structure for table `view_saldo_cliente` */

DROP TABLE IF EXISTS `view_saldo_cliente`;

/*!50001 DROP VIEW IF EXISTS `view_saldo_cliente` */;
/*!50001 DROP TABLE IF EXISTS `view_saldo_cliente` */;

/*!50001 CREATE TABLE  `view_saldo_cliente`(
 `tipo_comprobante` varchar(3) ,
 `ser_comprobante` varchar(3) ,
 `nro_comprobante` int(10) ,
 `cod_cliente` int(10) ,
 `nombre` varchar(80) ,
 `nro_cuota` int(5) ,
 `fec_venc` date ,
 `fecha_vencimiento` varchar(10) ,
 `saldo_cuota` decimal(10,2) ,
 `ref_comprob` varchar(100) ,
 `fec_ult_recibo` date ,
 `cod_sucursal` varchar(2) 
)*/;

/*Table structure for table `view_saldo_proveedor` */

DROP TABLE IF EXISTS `view_saldo_proveedor`;

/*!50001 DROP VIEW IF EXISTS `view_saldo_proveedor` */;
/*!50001 DROP TABLE IF EXISTS `view_saldo_proveedor` */;

/*!50001 CREATE TABLE  `view_saldo_proveedor`(
 `tipo_comprobante` varchar(3) ,
 `ser_comprobante` varchar(15) ,
 `nro_comprobante` int(10) ,
 `cod_proveedor` int(10) ,
 `nombre` varchar(80) ,
 `nro_cuota` int(5) ,
 `fec_venc` date ,
 `fecha_vencimiento` varchar(10) ,
 `saldo_cuota` decimal(10,2) ,
 `monto_cuota` int(10) 
)*/;

/*Table structure for table `view_serie_comprobante` */

DROP TABLE IF EXISTS `view_serie_comprobante`;

/*!50001 DROP VIEW IF EXISTS `view_serie_comprobante` */;
/*!50001 DROP TABLE IF EXISTS `view_serie_comprobante` */;

/*!50001 CREATE TABLE  `view_serie_comprobante`(
 `tipo_comprobante` varchar(3) ,
 `desc_comp` varchar(30) ,
 `ser_comprobante` varchar(2) ,
 `cod_sucursal` varchar(5) ,
 `desc_sucursal` varchar(50) ,
 `numero_inicial` int(15) ,
 `numero_final` int(15) ,
 `ser_timbrado` varchar(30) ,
 `numero_timbrado` varchar(30) ,
 `fecha_vigencia` varchar(10) 
)*/;

/*Table structure for table `view_talonario_comprobante` */

DROP TABLE IF EXISTS `view_talonario_comprobante`;

/*!50001 DROP VIEW IF EXISTS `view_talonario_comprobante` */;
/*!50001 DROP TABLE IF EXISTS `view_talonario_comprobante` */;

/*!50001 CREATE TABLE  `view_talonario_comprobante`(
 `tipo_talonario` varchar(3) ,
 `desc_talonario` varchar(30) ,
 `serie` varchar(2) ,
 `cod_sucursal` varchar(5) ,
 `desc_sucursal` varchar(50) ,
 `nro_talonario` int(5) ,
 `numero_inicial` int(15) ,
 `numero_final` int(15) ,
 `estado` varchar(1) ,
 `desc_estado` varchar(8) 
)*/;

/*Table structure for table `view_talonario_usuario` */

DROP TABLE IF EXISTS `view_talonario_usuario`;

/*!50001 DROP VIEW IF EXISTS `view_talonario_usuario` */;
/*!50001 DROP TABLE IF EXISTS `view_talonario_usuario` */;

/*!50001 CREATE TABLE  `view_talonario_usuario`(
 `tipo_talonario` varchar(3) ,
 `desc_talonario` varchar(30) ,
 `serie` varchar(2) ,
 `cod_sucursal` varchar(5) ,
 `desc_sucursal` varchar(50) ,
 `nro_talonario` int(5) ,
 `cod_usuario` varchar(20) ,
 `nombre` varchar(80) 
)*/;

/*Table structure for table `view_usuarios` */

DROP TABLE IF EXISTS `view_usuarios`;

/*!50001 DROP VIEW IF EXISTS `view_usuarios` */;
/*!50001 DROP TABLE IF EXISTS `view_usuarios` */;

/*!50001 CREATE TABLE  `view_usuarios`(
 `COD_USUARIO` varchar(10) ,
 `COD_PERSONA` int(15) ,
 `NOMBRE_USUARIO` varchar(80) ,
 `COD_GRUPO` varchar(15) ,
 `DESC_GRUPO` varchar(50) ,
 `COD_SUCURSAL` varchar(15) ,
 `DESC_SUCURSAL` varchar(50) ,
 `COD_DEPOSITO` varchar(15) ,
 `DESC_DEPOSITO` varchar(80) ,
 `ESTADO` varchar(1) ,
 `desc_estado` varchar(8) 
)*/;

/*View structure for view view_articulo */

/*!50001 DROP TABLE IF EXISTS `view_articulo` */;
/*!50001 DROP VIEW IF EXISTS `view_articulo` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_articulo` AS (select `a`.`cod_articulo` AS `cod_articulo`,`un`.`desc_un_med` AS `unidad_med`,`a`.`nro_lote` AS `nro_lote`,`a`.`desc_articulo` AS `desc_articulo`,`a`.`cod_proveedor` AS `cod_proveedor`,`ps`.`nombre` AS `nombre_prov`,`p`.`razon_social` AS `razon_social`,`a`.`cod_marca` AS `cod_marca`,`m`.`desc_marca` AS `desc_marca`,`a`.`cod_categoria` AS `cod_categoria`,`c`.`desc_categoria` AS `desc_categoria`,`a`.`precio_compra` AS `precio_compra`,`a`.`precio_venta` AS `precio_venta`,`a`.`cantidad` AS `cantidad`,`a`.`cod_iva` AS `cod_iva`,`i`.`desc_iva` AS `desc_iva`,(case when (`a`.`estado` = 'A') then 'ACTIVO' else 'INACTIVO' end) AS `estado`,(case when (`a`.`maneja_stock` = 'S') then 'SI' else 'NO' end) AS `man_stock` from ((((((`articulo` `a` left join `proveedor` `p` on((`a`.`cod_proveedor` = `p`.`cod_proveedor`))) left join `persona` `ps` on((`p`.`cod_persona` = `ps`.`cod_persona`))) left join `marca` `m` on((`a`.`cod_marca` = `m`.`cod_marca`))) left join `categoria` `c` on((`a`.`cod_categoria` = `c`.`cod_categoria`))) left join `iva` `i` on((`a`.`cod_iva` = `i`.`cod_iva`))) left join `unidad_med_articulo` `un` on((`un`.`cod_un_med` = `a`.`cod_un_med`)))) */;

/*View structure for view view_cliente */

/*!50001 DROP TABLE IF EXISTS `view_cliente` */;
/*!50001 DROP VIEW IF EXISTS `view_cliente` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_cliente` AS (select `c`.`cod_cliente` AS `cod_cliente`,`c`.`cod_persona` AS `cod_persona`,`p`.`nombre` AS `nombre`,`c`.`cod_moneda` AS `cod_moneda`,`m`.`desc_moneda` AS `desc_moneda`,`c`.`cod_cobrador` AS `cod_cobrador`,`pc`.`nombre` AS `cobrador`,`c`.`cod_vendedor` AS `cod_vendedor`,`pv`.`nombre` AS `vendedor`,ifnull(`c`.`limite_credito`,'') AS `limite_credito`,ifnull(`c`.`cod_condicion_venta`,'') AS `cod_condicion_venta`,`cv`.`descripcion` AS `condicion`,`c`.`tipo_cliente` AS `cod_tipo_clien`,`tc`.`descripcion` AS `tipo_cliente`,(case when (`c`.`estado` = 'A') then 'ACTIVO' else 'INACTIVO' end) AS `estado`,`c`.`comentario` AS `comentario`,`p`.`ruc_ci` AS `ruc_ci`,`c`.`cod_sucursal` AS `cod_sucursal` from ((((((((`cliente` `c` left join `persona` `p` on((`c`.`cod_persona` = `p`.`cod_persona`))) left join `moneda` `m` on((`c`.`cod_moneda` = `m`.`cod_moneda`))) left join `cobrador` `cb` on((`c`.`cod_cobrador` = `cb`.`cod_cobrador`))) left join `persona` `pc` on((`cb`.`cod_persona` = `pc`.`cod_persona`))) left join `vendedor` `v` on((`c`.`cod_vendedor` = `v`.`cod_vendedor`))) left join `persona` `pv` on((`v`.`cod_persona` = `pv`.`cod_persona`))) left join `condicion_venta` `cv` on((`c`.`cod_condicion_venta` = `cv`.`cod_condicion`))) left join `tipo_cliente` `tc` on((`c`.`tipo_cliente` = `tc`.`cod_tipo_cliente`)))) */;

/*View structure for view view_comprob_compra_cab_det */

/*!50001 DROP TABLE IF EXISTS `view_comprob_compra_cab_det` */;
/*!50001 DROP VIEW IF EXISTS `view_comprob_compra_cab_det` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_comprob_compra_cab_det` AS (select `c`.`cod_tipo_comp` AS `tipo_comp`,(case when (`c`.`cod_tipo_comp` = 'FCO') then 'FACTURA CONTADO' when (`c`.`cod_tipo_comp` = 'FCR') then 'FACTURA CREDITO' when (`c`.`cod_tipo_comp` = 'AJU') then 'NOTA DE AJUSTE STOCK' else 'COMP NO ENCONTRADO' end) AS `tipo_comprobante`,`c`.`ser_timb_comp` AS `serie_comp`,`c`.`nro_comprob_comp` AS `nro_comp`,`c`.`nro_timbrado` AS `nro_timbrado_comp`,date_format(`c`.`fecha_comprob_comp`,'%d/%m/%Y') AS `fecha_comprob`,`c`.`cod_usuario` AS `cod_usuario`,`pu`.`nombre` AS `nomb_usuario`,`c`.`cod_sucursal` AS `cod_sucursal`,`s`.`desc_sucursal` AS `desc_sucursal`,`c`.`cod_deposito` AS `cod_deposito`,`da`.`desc_deposito` AS `desc_deposito`,`c`.`cod_proveedor` AS `cod_proveedor`,`pp`.`nombre` AS `nomb_proveedor`,`c`.`cod_cond_comp` AS `cond_comp`,`cv`.`descripcion` AS `descripcion`,`c`.`cant_cuota` AS `cant_cuota`,date_format(`c`.`fecha_inic_comp`,'%d/%m/%Y') AS `fecha_inic_comp`,`c`.`monto_cuota` AS `monto_cuota`,`c`.`total_comprob_comp` AS `total_comp`,`c`.`iva_comp` AS `total_iva_comp`,`c`.`gravada` AS `total_grav_comp`,`c`.`cod_moneda` AS `cod_moneda`,`mo`.`desc_moneda` AS `desc_moneda`,`c`.`tipo_cambio` AS `tipo_cambio`,`c`.`estado` AS `estado`,`d`.`cod_producto` AS `cod_articulo`,`d`.`cod_un_med` AS `unidad_med`,`d`.`nro_lote` AS `nro_lote`,`d`.`descripcion_prod` AS `desc_articulo`,`d`.`cantidad_prod` AS `cant_articulo`,`d`.`precio_unitario` AS `precio_unitario`,`d`.`descuento` AS `descuento`,`d`.`importe` AS `importe`,`d`.`total_iva_5` AS `iva5`,`d`.`total_iva_10` AS `iva10`,`d`.`gravada_5` AS `gravada5`,`d`.`gravada_10` AS `gravada10`,`c`.`cod_mot_ent_sal_art` AS `trans_ent_sal_art`,`tra`.`descripcion` AS `desc_trans_ent_sal_art`,`c`.`cod_sub_mot_ent_sal_art` AS `sub_trans_ent_sal_art`,`sub`.`descripcion` AS `desc_sub_trans_ent_sal_art` from (((((((((((`comprobante_cabecera_compra` `c` left join `comprobante_detalle_compra` `d` on(((`c`.`cod_tipo_comp` = `d`.`cod_tipo_comp`) and (`c`.`ser_timb_comp` = `d`.`ser_timb_comp`) and (`c`.`nro_comprob_comp` = `d`.`nro_comprob_comp`)))) left join `usuario` `u` on((`c`.`cod_usuario` = `u`.`cod_usuario`))) left join `persona` `pu` on((`u`.`cod_persona` = `pu`.`cod_persona`))) left join `sucursal` `s` on((`c`.`cod_sucursal` = `s`.`cod_sucursal`))) left join `deposito_articulo` `da` on((`c`.`cod_deposito` = `da`.`cod_deposito`))) left join `proveedor` `pr` on((`c`.`cod_proveedor` = `pr`.`cod_proveedor`))) left join `persona` `pp` on((`pr`.`cod_persona` = `pp`.`cod_persona`))) left join `condicion_venta` `cv` on((`c`.`cod_cond_comp` = `cv`.`cod_condicion`))) left join `moneda` `mo` on((`c`.`cod_moneda` = `mo`.`cod_moneda`))) left join `tipo_transaccion` `tra` on((`c`.`cod_mot_ent_sal_art` = `tra`.`cod_tipo_trans`))) left join `sub_tipo_transaccion` `sub` on(((`c`.`cod_mot_ent_sal_art` = `sub`.`cod_tipo_trans`) and (`c`.`cod_sub_mot_ent_sal_art` = `sub`.`cod_sub_tipo_trans`))))) */;

/*View structure for view view_comprob_venta_cab_det */

/*!50001 DROP TABLE IF EXISTS `view_comprob_venta_cab_det` */;
/*!50001 DROP VIEW IF EXISTS `view_comprob_venta_cab_det` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_comprob_venta_cab_det` AS (select `com`.`cod_sucursal` AS `cod_sucursal`,`suc`.`desc_sucursal` AS `desc_sucursal`,(case when (`com`.`tipo_comprobante` = 'FCO') then 'FACTURA CONTADO' when (`com`.`tipo_comprobante` = 'FCR') then 'FACTURA CREDITO' when (`com`.`tipo_comprobante` = 'AJU') then 'NOTA DE AJUSTE STOCK' else 'COMP NO ENCONTRADO' end) AS `tipo_comprobante`,`com`.`ser_comprobante` AS `ser_comprobante`,`com`.`nro_comprobante` AS `nro_comprobante`,date_format(`com`.`fecha_comprobante`,'%d/%m/%Y') AS `fecha_comprobante`,`com`.`cod_cliente` AS `cod_cliente`,`per`.`nombre` AS `nombre_cliente`,`com`.`cod_cobrador` AS `cod_cobrador`,`pco`.`nombre` AS `nombre_cobrador`,`com`.`cod_vendedor` AS `cod_vendedor`,`pve`.`nombre` AS `nombre_vendedor`,`com`.`cod_condicion_venta` AS `cod_condicion_venta`,`con`.`descripcion` AS `descripcion`,`com`.`cod_moneda` AS `cod_moneda`,`mon`.`desc_moneda` AS `desc_moneda`,`dco`.`cod_articulo` AS `cod_articulo`,`dco`.`cod_un_med` AS `cod_un_med`,`dco`.`nro_lote` AS `nro_lote`,`dco`.`cantidad` AS `cantidad`,`art`.`desc_articulo` AS `desc_articulo`,`dco`.`precio_unitario` AS `precio_unitario`,`dco`.`importe_total` AS `importe_total`,`dco`.`total_iva5` AS `total_iva5`,`dco`.`total_iva10` AS `total_iva10`,`dco`.`gravada_5` AS `gravada_5`,`dco`.`gravada_10` AS `gravada_10`,`com`.`total_gravada` AS `total_gravada`,`com`.`total_iva` AS `total_iva`,`com`.`total_comprobante` AS `total_comprobante`,`com`.`cod_deposito` AS `cod_deposito`,`dep`.`desc_deposito` AS `desc_deposito`,`com`.`estado` AS `estado`,`com`.`tipo_comprobante` AS `tip_comp`,`com`.`fecha_comprobante` AS `fec_comp`,`com`.`cod_mot_ent_sal_art` AS `trans_ent_sal_art`,`tra`.`descripcion` AS `desc_trans_ent_sal_art`,`com`.`cod_sub_mot_ent_sal_art` AS `sub_trans_ent_sal_art`,`sub`.`descripcion` AS `desc_sub_trans_ent_sal_art`,`dco`.`descuento` AS `descuento_importe`,`com`.`descuento` AS `total_descuento`,`com`.`comentario` AS `comentario` from ((((((((((((((`comprobante_cabecera_venta` `com` left join `comprobante_detalle_venta` `dco` on(((`com`.`tipo_comprobante` = `dco`.`tipo_comprobante`) and (`com`.`ser_comprobante` = `dco`.`ser_comprobante`) and (`com`.`nro_comprobante` = `dco`.`nro_comprobante`)))) left join `articulo` `art` on(((`dco`.`cod_articulo` = `art`.`cod_articulo`) and (`dco`.`cod_un_med` = `art`.`cod_un_med`) and (`dco`.`nro_lote` = `art`.`nro_lote`)))) left join `cliente` `cli` on((`com`.`cod_cliente` = `cli`.`cod_cliente`))) left join `persona` `per` on((`cli`.`cod_persona` = `per`.`cod_persona`))) left join `sucursal` `suc` on((`com`.`cod_sucursal` = `suc`.`cod_sucursal`))) left join `deposito_articulo` `dep` on((`com`.`cod_deposito` = `dep`.`cod_deposito`))) left join `cobrador` `cob` on((`com`.`cod_cobrador` = `cob`.`cod_cobrador`))) left join `persona` `pco` on((`cob`.`cod_persona` = `pco`.`cod_persona`))) left join `vendedor` `ven` on((`com`.`cod_vendedor` = `ven`.`cod_vendedor`))) left join `persona` `pve` on((`ven`.`cod_persona` = `pve`.`cod_persona`))) left join `condicion_venta` `con` on((`com`.`cod_condicion_venta` = `con`.`cod_condicion`))) left join `moneda` `mon` on((`cli`.`cod_moneda` = `mon`.`cod_moneda`))) left join `tipo_transaccion` `tra` on((`com`.`cod_mot_ent_sal_art` = `tra`.`cod_tipo_trans`))) left join `sub_tipo_transaccion` `sub` on(((`com`.`cod_mot_ent_sal_art` = `sub`.`cod_tipo_trans`) and (`com`.`cod_sub_mot_ent_sal_art` = `sub`.`cod_sub_tipo_trans`))))) */;

/*View structure for view view_existencia_articulo */

/*!50001 DROP TABLE IF EXISTS `view_existencia_articulo` */;
/*!50001 DROP VIEW IF EXISTS `view_existencia_articulo` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_existencia_articulo` AS (select `e`.`cod_sucursal` AS `cod_sucursal`,`e`.`desc_sucursal` AS `desc_sucursal`,`e`.`cod_deposito` AS `cod_deposito`,`e`.`desc_deposito` AS `desc_deposito`,`e`.`cod_articulo` AS `cod_articulo`,`e`.`cod_un_medida` AS `cod_un_medida`,`e`.`nro_lote` AS `nro_lote`,`e`.`desc_articulo` AS `desc_articulo`,(sum(`e`.`cant_compra`) - sum(`e`.`cant_venta`)) AS `existencia` from (select `exi`.`cod_sucursal` AS `cod_sucursal`,`suc`.`desc_sucursal` AS `desc_sucursal`,`exi`.`cod_deposito` AS `cod_deposito`,`dar`.`desc_deposito` AS `desc_deposito`,`exi`.`cod_articulo` AS `cod_articulo`,`exi`.`cod_un_medida` AS `cod_un_medida`,`exi`.`nro_lote` AS `nro_lote`,`art`.`desc_articulo` AS `desc_articulo`,ifnull(`exi`.`cantidad`,0) AS `cant_compra`,0 AS `cant_venta` from (((`alenha_carbon`.`existencia_articulo` `exi` left join `alenha_carbon`.`articulo` `art` on(((`exi`.`cod_articulo` = `art`.`cod_articulo`) and (`exi`.`cod_un_medida` = `art`.`cod_un_med`) and (`exi`.`nro_lote` = `art`.`nro_lote`)))) left join `alenha_carbon`.`sucursal` `suc` on((`exi`.`cod_sucursal` = `suc`.`cod_sucursal`))) left join `alenha_carbon`.`deposito_articulo` `dar` on((`exi`.`cod_deposito` = `dar`.`cod_deposito`))) where (`exi`.`tipo_transacc` = 3) union select `exi`.`cod_sucursal` AS `cod_sucursal`,`suc`.`desc_sucursal` AS `desc_sucursal`,`exi`.`cod_deposito` AS `cod_deposito`,`dar`.`desc_deposito` AS `desc_deposito`,`exi`.`cod_articulo` AS `cod_articulo`,`exi`.`cod_un_medida` AS `cod_un_medida`,`exi`.`nro_lote` AS `nro_lote`,`art`.`desc_articulo` AS `desc_articulo`,0 AS `cant_compra`,ifnull(`exi`.`cantidad`,0) AS `cant_venta` from (((`alenha_carbon`.`existencia_articulo` `exi` left join `alenha_carbon`.`articulo` `art` on(((`exi`.`cod_articulo` = `art`.`cod_articulo`) and (`exi`.`cod_un_medida` = `art`.`cod_un_med`) and (`exi`.`nro_lote` = `art`.`nro_lote`)))) left join `alenha_carbon`.`sucursal` `suc` on((`exi`.`cod_sucursal` = `suc`.`cod_sucursal`))) left join `alenha_carbon`.`deposito_articulo` `dar` on((`exi`.`cod_deposito` = `dar`.`cod_deposito`))) where (`exi`.`tipo_transacc` = 4)) `e` group by `e`.`cod_sucursal`,`e`.`desc_sucursal`,`e`.`cod_deposito`,`e`.`desc_deposito`,`e`.`cod_articulo`,`e`.`cod_un_medida`,`e`.`nro_lote`,`e`.`desc_articulo` order by `e`.`cod_sucursal`,`e`.`cod_articulo`) */;

/*View structure for view view_grupo_usuario */

/*!50001 DROP TABLE IF EXISTS `view_grupo_usuario` */;
/*!50001 DROP VIEW IF EXISTS `view_grupo_usuario` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_grupo_usuario` AS (select `ag`.`cod_grupo` AS `cod_grupo`,`gu`.`desc_grupo` AS `desc_grupo`,`ag`.`cod_modulo` AS `cod_modulo`,`ms`.`desc_modulo` AS `desc_modulo`,`ag`.`desc_formulario` AS `desc_formulario`,(case when (`ag`.`mostrar_en_menu` = 'S') then 'SI' else 'NO' end) AS `menu`,(case when (`ag`.`puede_borrar` = 'S') then 'SI' else 'NO' end) AS `borrar`,(case when (`ag`.`puede_consul` = 'S') then 'SI' else 'NO' end) AS `consultar`,(case when (`ag`.`puede_insert` = 'S') then 'SI' else 'NO' end) AS `insertar`,(case when (`ag`.`puede_modif` = 'S') then 'SI' else 'NO' end) AS `modificar` from ((`acceso_grupo` `ag` left join `grupo_usuario` `gu` on((`ag`.`cod_grupo` = `gu`.`cod_grupo`))) left join `modulo_sistema` `ms` on((`ag`.`cod_modulo` = `ms`.`cod_modulo`)))) */;

/*View structure for view view_mov_caja_compra */

/*!50001 DROP TABLE IF EXISTS `view_mov_caja_compra` */;
/*!50001 DROP VIEW IF EXISTS `view_mov_caja_compra` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_mov_caja_compra` AS (select `mcaj`.`tipo_mov_caja_com` AS `tipo_mov_comp`,`mcaj`.`ser_mov_caja_com` AS `ser_mov_comp`,`mcaj`.`nro_mov_caja_com` AS `nro_mov_comp`,date_format(`mcaj`.`fecha_mov_caja_com`,'%d/%m/%Y') AS `fecha_mov_comp`,`mcaj`.`cod_sucursal` AS `cod_sucursal`,`suc`.`desc_sucursal` AS `desc_sucursal`,`mcaj`.`cod_proveedor` AS `cod_proveedor`,`p`.`nombre` AS `nomb_proveedor`,`mcaj`.`cod_usuario` AS `cod_usuario`,`pu`.`nombre` AS `nomb_usuario`,`mcaj`.`total_mov_caja_com` AS `total_mov_comp` from (((((`movimiento_caja_compra` `mcaj` left join `proveedor` `c` on((`mcaj`.`cod_proveedor` = `c`.`cod_proveedor`))) left join `persona` `p` on((`p`.`cod_persona` = `c`.`cod_persona`))) left join `usuario` `us` on((`mcaj`.`cod_usuario` = `us`.`cod_usuario`))) left join `persona` `pu` on((`us`.`cod_persona` = `pu`.`cod_persona`))) left join `sucursal` `suc` on((`mcaj`.`cod_sucursal` = `suc`.`cod_sucursal`)))) */;

/*View structure for view view_mov_caja_venta */

/*!50001 DROP TABLE IF EXISTS `view_mov_caja_venta` */;
/*!50001 DROP VIEW IF EXISTS `view_mov_caja_venta` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_mov_caja_venta` AS (select `mcaj`.`tipo_mov_caja` AS `tipo_mov_caja`,`mcaj`.`ser_mov_caja` AS `ser_mov_caja`,`mcaj`.`nro_mov_caja` AS `nro_mov_caja`,date_format(`mcaj`.`fecha_mov_caja_venta`,'%d/%m/%Y') AS `fecha_mov_caja_venta`,`mcaj`.`cod_sucursal` AS `cod_sucursal`,`suc`.`desc_sucursal` AS `desc_sucursal`,`mcaj`.`cod_cliente` AS `cod_cliente`,`p`.`nombre` AS `nomb_cliente`,`mcaj`.`cod_usuario` AS `cod_usuario`,`pu`.`nombre` AS `nomb_usuario`,`mcaj`.`cod_caja` AS `cod_caja`,`cj`.`desc_caja` AS `desc_caja`,`mcaj`.`numero_hab` AS `numero_hab`,`mcaj`.`total_mov_caja` AS `total_mov_caja`,`mcaj`.`fecha_mov_caja_venta` AS `fecha_movimiento` from ((((((`movimiento_caja_venta` `mcaj` left join `cliente` `c` on((`mcaj`.`cod_cliente` = `c`.`cod_cliente`))) left join `caja` `cj` on(((`mcaj`.`cod_caja` = `cj`.`cod_caja`) and (`mcaj`.`cod_sucursal` = `cj`.`cod_sucursal`)))) left join `persona` `p` on((`p`.`cod_persona` = `c`.`cod_persona`))) left join `usuario` `us` on((`mcaj`.`cod_usuario` = `us`.`cod_usuario`))) left join `persona` `pu` on((`us`.`cod_persona` = `pu`.`cod_persona`))) left join `sucursal` `suc` on((`mcaj`.`cod_sucursal` = `suc`.`cod_sucursal`)))) */;

/*View structure for view view_persona */

/*!50001 DROP TABLE IF EXISTS `view_persona` */;
/*!50001 DROP VIEW IF EXISTS `view_persona` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_persona` AS (select `per`.`cod_persona` AS `cod_persona`,`per`.`nombre` AS `nombre`,`per`.`cod_tipo_doc` AS `cod_tipo_doc`,`tdoc`.`Desc_tipo_doc` AS `Desc_tipo_doc`,`per`.`ruc_ci` AS `ruc_ci`,ifnull(`per`.`cod_ciudad`,'') AS `cod_ciudad`,`ciu`.`desc_ciudad` AS `desc_ciudad`,`per`.`direccion` AS `direccion`,`per`.`direccion_trabajo` AS `direccion_trabajo`,`per`.`telefono_domicilio` AS `telefono_domicilio`,`per`.`telefono_trabajo` AS `telefono_trabajo`,`per`.`celular` AS `celular`,date_format(`per`.`fecha_nacimiento`,'%d/%m/%Y') AS `fecha_nacimiento`,`per`.`cod_estado_civil` AS `cod_estado_civil`,`ecv`.`desc_estado_civil` AS `desc_estado_civil`,ifnull(`per`.`cod_pais`,'') AS `cod_pais`,`p`.`desc_pais` AS `desc_pais`,ifnull(`per`.`es_banco`,'N') AS `es_banco`,ifnull(`per`.`gen_cliente`,'N') AS `gen_cliente`,`per`.`cod_sucursal` AS `cod_sucursal` from ((((`persona` `per` left join `tipo_documento` `tdoc` on((`per`.`cod_tipo_doc` = `tdoc`.`cod_tipo_doc`))) left join `ciudad` `ciu` on((`per`.`cod_ciudad` = `ciu`.`cod_ciudad`))) left join `estado_civil` `ecv` on((`per`.`cod_estado_civil` = `ecv`.`cod_estado_civil`))) left join `pais` `p` on((`per`.`cod_pais` = `p`.`cod_pais`)))) */;

/*View structure for view view_recibo_compra */

/*!50001 DROP TABLE IF EXISTS `view_recibo_compra` */;
/*!50001 DROP VIEW IF EXISTS `view_recibo_compra` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_recibo_compra` AS (select `rec`.`cod_usuario` AS `cod_usuario`,`pus`.`nombre` AS `nomb_usuario`,`rec`.`cod_sucursal` AS `cod_sucursal`,`suc`.`desc_sucursal` AS `desc_sucursal`,`rec`.`tipo_rec_comp` AS `tipo_recibo`,`rec`.`ser_rec_comp` AS `ser_recibo`,`rec`.`nro_rec_comp` AS `nro_recibo`,date_format(`rec`.`fecha_rec_comp`,'%d/%m/%Y') AS `fecha_recibo`,`rec`.`cod_proveedor` AS `cod_proveedor`,`pcl`.`nombre` AS `nomb_cliente`,`rec`.`cod_moneda` AS `cod_moneda`,`mon`.`desc_moneda` AS `desc_moneda`,`rec`.`total_rec_comp` AS `total_recibo`,`rec`.`comentario` AS `comentario`,`dre`.`tipo_transaccion` AS `tipo_transaccion`,`dre`.`sub_tipo_transac` AS `sub_tipo_transac`,`dre`.`tipo_comprobante_ref` AS `tipo_comprobante_ref`,`dre`.`ser_comprobante_ref` AS `ser_comprobante_ref`,`dre`.`nro_comprobante_ref` AS `nro_comprobante_ref`,`dre`.`nro_cuota` AS `nro_cuota`,`dre`.`fecha_vencimiento` AS `fecha_vencimiento`,`dre`.`monto_cuota` AS `monto_cuota`,`dre`.`importe_total` AS `importe_total` from (((((((`recibo_compra_cabecera` `rec` left join `recibo_detalle_compra` `dre` on(((`rec`.`tipo_rec_comp` = `dre`.`tipo_rec_comp`) and (`rec`.`ser_rec_comp` = `dre`.`ser_rec_comp`) and (`rec`.`nro_rec_comp` = `dre`.`nro_rec_comp`)))) left join `proveedor` `pro` on((`rec`.`cod_proveedor` = `pro`.`cod_proveedor`))) left join `moneda` `mon` on((`rec`.`cod_moneda` = `mon`.`cod_moneda`))) left join `sucursal` `suc` on((`rec`.`cod_sucursal` = `suc`.`cod_sucursal`))) left join `usuario` `usu` on((`rec`.`cod_usuario` = `usu`.`cod_usuario`))) left join `persona` `pcl` on((`pro`.`cod_persona` = `pcl`.`cod_persona`))) left join `persona` `pus` on((`usu`.`cod_persona` = `pus`.`cod_persona`)))) */;

/*View structure for view view_recibo_venta */

/*!50001 DROP TABLE IF EXISTS `view_recibo_venta` */;
/*!50001 DROP VIEW IF EXISTS `view_recibo_venta` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_recibo_venta` AS (select `rec`.`cod_usuario` AS `cod_usuario`,`pus`.`nombre` AS `nomb_usuario`,`rec`.`cod_sucursal` AS `cod_sucursal`,`suc`.`desc_sucursal` AS `desc_sucursal`,`rec`.`tipo_recibo` AS `tipo_recibo`,`rec`.`ser_recibo` AS `ser_recibo`,`rec`.`nro_recibo` AS `nro_recibo`,date_format(`rec`.`fecha_recibo`,'%d/%m/%Y') AS `fecha_recibo`,`rec`.`cod_cliente` AS `cod_cliente`,`pcl`.`nombre` AS `nomb_cliente`,`rec`.`cod_cobrador` AS `cod_cobrador`,`pco`.`nombre` AS `nomb_cobrador`,`rec`.`cod_moneda` AS `cod_moneda`,`mon`.`desc_moneda` AS `desc_moneda`,`rec`.`total_recibo` AS `total_recibo`,`rec`.`comentario` AS `comentario`,`dre`.`tipo_transaccion` AS `tipo_transaccion`,`dre`.`sub_tipo_transac` AS `sub_tipo_transac`,`dre`.`tipo_comprobante_ref` AS `tipo_comprobante_ref`,`dre`.`ser_comprobante_ref` AS `ser_comprobante_ref`,`dre`.`nro_comprobante_ref` AS `nro_comprobante_ref`,`dre`.`nro_cuota` AS `nro_cuota`,`dre`.`fecha_vencimiento` AS `fecha_vencimiento`,`dre`.`monto_cuota` AS `monto_cuota`,`dre`.`importe_total` AS `importe_total`,`rec`.`fecha_recibo` AS `fecha_rec` from (((((((((`recibo_venta_cabecera` `rec` left join `recibo_detalle_venta` `dre` on(((`rec`.`tipo_recibo` = `dre`.`tipo_recibo`) and (`rec`.`ser_recibo` = `dre`.`ser_recibo`) and (`rec`.`nro_recibo` = `dre`.`nro_recibo`)))) left join `cliente` `cli` on((`rec`.`cod_cliente` = `cli`.`cod_cliente`))) left join `cobrador` `cob` on((`rec`.`cod_cobrador` = `cob`.`cod_cobrador`))) left join `moneda` `mon` on((`rec`.`cod_moneda` = `mon`.`cod_moneda`))) left join `sucursal` `suc` on((`rec`.`cod_sucursal` = `suc`.`cod_sucursal`))) left join `usuario` `usu` on((`rec`.`cod_usuario` = `usu`.`cod_usuario`))) left join `persona` `pcl` on((`cli`.`cod_persona` = `pcl`.`cod_persona`))) left join `persona` `pco` on((`cob`.`cod_persona` = `pco`.`cod_persona`))) left join `persona` `pus` on((`usu`.`cod_persona` = `pus`.`cod_persona`)))) */;

/*View structure for view view_saldo_cliente */

/*!50001 DROP TABLE IF EXISTS `view_saldo_cliente` */;
/*!50001 DROP VIEW IF EXISTS `view_saldo_cliente` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_saldo_cliente` AS (select `s`.`tipo_comprobante` AS `tipo_comprobante`,`s`.`ser_comprobante` AS `ser_comprobante`,`s`.`nro_comprobante` AS `nro_comprobante`,`s`.`cod_cliente` AS `cod_cliente`,`p`.`nombre` AS `nombre`,`s`.`nro_cuota` AS `nro_cuota`,`s`.`fecha_vencimiento` AS `fec_venc`,date_format(`s`.`fecha_vencimiento`,'%d/%m/%Y') AS `fecha_vencimiento`,`s`.`saldo_cuota` AS `saldo_cuota`,`s`.`cod_referencia` AS `ref_comprob`,`fn_ult_fec_recibo`(`s`.`cod_cliente`,`s`.`tipo_comprobante`,`s`.`ser_comprobante`,`s`.`nro_comprobante`) AS `fec_ult_recibo`,`s`.`cod_sucursal` AS `cod_sucursal` from ((`saldo_cliente` `s` left join `cliente` `c` on((`s`.`cod_cliente` = `c`.`cod_cliente`))) left join `persona` `p` on((`c`.`cod_persona` = `p`.`cod_persona`))) order by `s`.`ser_comprobante`,`s`.`nro_comprobante`,`s`.`nro_cuota`) */;

/*View structure for view view_saldo_proveedor */

/*!50001 DROP TABLE IF EXISTS `view_saldo_proveedor` */;
/*!50001 DROP VIEW IF EXISTS `view_saldo_proveedor` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_saldo_proveedor` AS (select `s`.`tipo_comprobante` AS `tipo_comprobante`,`s`.`ser_comprobante` AS `ser_comprobante`,`s`.`nro_comprobante` AS `nro_comprobante`,`s`.`cod_proveedor` AS `cod_proveedor`,`p`.`nombre` AS `nombre`,`s`.`nro_cuota` AS `nro_cuota`,`s`.`fecha_vencimiento` AS `fec_venc`,date_format(`s`.`fecha_vencimiento`,'%d/%m/%Y') AS `fecha_vencimiento`,`s`.`saldo_cuota` AS `saldo_cuota`,`s`.`monto_cuota` AS `monto_cuota` from ((`saldo_proveedor` `s` left join `proveedor` `c` on((`s`.`cod_proveedor` = `c`.`cod_proveedor`))) left join `persona` `p` on((`c`.`cod_persona` = `p`.`cod_persona`))) order by `s`.`ser_comprobante`,`s`.`nro_comprobante`,`s`.`nro_cuota`) */;

/*View structure for view view_serie_comprobante */

/*!50001 DROP TABLE IF EXISTS `view_serie_comprobante` */;
/*!50001 DROP VIEW IF EXISTS `view_serie_comprobante` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_serie_comprobante` AS (select `s`.`tipo_comprobante` AS `tipo_comprobante`,`t`.`descripcion` AS `desc_comp`,`s`.`ser_comprobante` AS `ser_comprobante`,`s`.`cod_sucursal` AS `cod_sucursal`,`sc`.`desc_sucursal` AS `desc_sucursal`,`s`.`numero_inicial` AS `numero_inicial`,`s`.`numero_final` AS `numero_final`,`s`.`ser_timbrado` AS `ser_timbrado`,`s`.`numero_timbrado` AS `numero_timbrado`,date_format(`s`.`fecha_vigencia`,'%d/%m/%Y') AS `fecha_vigencia` from ((`serie_comprobante` `s` left join `tipo_comprobante` `t` on((`s`.`tipo_comprobante` = `t`.`tipo_comprobante`))) left join `sucursal` `sc` on((`s`.`cod_sucursal` = `sc`.`cod_sucursal`))) order by `s`.`tipo_comprobante`,`s`.`ser_comprobante`) */;

/*View structure for view view_talonario_comprobante */

/*!50001 DROP TABLE IF EXISTS `view_talonario_comprobante` */;
/*!50001 DROP VIEW IF EXISTS `view_talonario_comprobante` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_talonario_comprobante` AS (select `ta`.`tipo_talonario` AS `tipo_talonario`,`tc`.`descripcion` AS `desc_talonario`,`ta`.`serie` AS `serie`,`ta`.`cod_sucursal` AS `cod_sucursal`,`su`.`desc_sucursal` AS `desc_sucursal`,`ta`.`nro_talonario` AS `nro_talonario`,`ta`.`numero_inicial` AS `numero_inicial`,`ta`.`numero_final` AS `numero_final`,`ta`.`estado` AS `estado`,(case when (`ta`.`estado` = 'A') then 'ACTIVO' else 'INACTIVO' end) AS `desc_estado` from ((`talonario` `ta` left join `tipo_comprobante` `tc` on((`ta`.`tipo_talonario` = `tc`.`tipo_comprobante`))) left join `sucursal` `su` on((`ta`.`cod_sucursal` = `su`.`cod_sucursal`))) order by `ta`.`tipo_talonario`,`ta`.`serie`) */;

/*View structure for view view_talonario_usuario */

/*!50001 DROP TABLE IF EXISTS `view_talonario_usuario` */;
/*!50001 DROP VIEW IF EXISTS `view_talonario_usuario` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_talonario_usuario` AS (select `tu`.`tipo_talonario` AS `tipo_talonario`,`tc`.`descripcion` AS `desc_talonario`,`tu`.`serie` AS `serie`,`tu`.`cod_sucursal` AS `cod_sucursal`,`su`.`desc_sucursal` AS `desc_sucursal`,`tu`.`nro_talonario` AS `nro_talonario`,`tu`.`cod_usuario` AS `cod_usuario`,`pe`.`nombre` AS `nombre` from ((((`talonario_usuario` `tu` left join `tipo_comprobante` `tc` on((`tu`.`tipo_talonario` = `tc`.`tipo_comprobante`))) left join `sucursal` `su` on((`tu`.`cod_sucursal` = `su`.`cod_sucursal`))) left join `usuario` `us` on((`tu`.`cod_usuario` = `us`.`cod_usuario`))) left join `persona` `pe` on((`us`.`cod_persona` = `pe`.`cod_persona`))) order by `tu`.`tipo_talonario`,`tu`.`serie`) */;

/*View structure for view view_usuarios */

/*!50001 DROP TABLE IF EXISTS `view_usuarios` */;
/*!50001 DROP VIEW IF EXISTS `view_usuarios` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_usuarios` AS (select `u`.`cod_usuario` AS `COD_USUARIO`,`p`.`cod_persona` AS `COD_PERSONA`,`p`.`nombre` AS `NOMBRE_USUARIO`,`u`.`cod_grupo` AS `COD_GRUPO`,`g`.`desc_grupo` AS `DESC_GRUPO`,`u`.`cod_sucursal` AS `COD_SUCURSAL`,`s`.`desc_sucursal` AS `DESC_SUCURSAL`,`u`.`cod_deposito` AS `COD_DEPOSITO`,`d`.`desc_deposito` AS `DESC_DEPOSITO`,`u`.`estado` AS `ESTADO`,(case when (`u`.`estado` = 'A') then 'ACTIVO' else 'INACTIVO' end) AS `desc_estado` from ((((`usuario` `u` left join `persona` `p` on((`u`.`cod_persona` = `p`.`cod_persona`))) left join `grupo_usuario` `g` on((`u`.`cod_grupo` = `g`.`cod_grupo`))) left join `sucursal` `s` on((`u`.`cod_sucursal` = `s`.`cod_sucursal`))) left join `deposito_articulo` `d` on((`u`.`cod_deposito` = `d`.`cod_deposito`)))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
