CREATE TABLE CLIENTES (
	idCLIENTE int primary key not null auto_increment,
    nombre_cliente varchar(30),
    apellido_cliente varchar(30),
    dni_cliente int,
    direccion_cliente varchar(40),
    fecha_nac datetime
    );
CREATE TABLE FACTURA (
idFACTURA int primary key not null auto_increment,
fecha_factura datetime,
CLIENTES_idCLIENTE int,
foreign key (CLIENTES_idCLIENTE) references CLIENTES(idCLIENTE)
);

CREATE TABLE CATEGORIAS (
idCATEGORIAS int primary key not null auto_increment,
categoria varchar(45),
descripcion varchar(45)
);

CREATE TABLE PRODUCTOS (
idPRODUCTOS int primary key not null auto_increment,
precio_producto float,
nombre_producto varchar(45),
marca varchar(45),
CATEGORIAS_idCATEGORIAS int,
foreign key (CATEGORIAS_idCATEGORIAS) references CATEGORIAS(idCATEGORIAS)
);

CREATE TABLE DETALLE_FACTURA (
cantidad_prod int,
total decimal,
FACTURA_idFACTURA int,
PRODUCTOS_idPRODUCTOS int,
foreign key (FACTURA_idFACTURA) references FACTURA(idFACTURA),
foreign key (PRODUCTOS_idPRODUCTOS) references PRODUCTOS(idPRODUCTOS)
);




