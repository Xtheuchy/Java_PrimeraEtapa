create database aldeanth;
use aldeanth;
create table productos(
idProducto int primary key auto_increment not null,
Nombre varchar(30) not null,
Precio decimal(10,2) not null,
imagen text
);
use aldeanth;
insert into productos(Nombre,Precio,imagen)
values
('Helado de Fresa',5, 'https://cdn.pixabay.com/photo/2017/04/18/15/10/strawberry-ice-cream-2239377_1280.jpg'),
('Helado de Cafe',8, 'https://cdn.pixabay.com/photo/2019/11/23/20/04/coffee-4648041_1280.jpg'),
('Helado de Aguaymanto',6, 'https://cdn.pixabay.com/photo/2018/08/16/22/59/ice-cream-3611698_1280.jpg'),
('Chicha jora',6, 'https://chichadejora.net.pe/wp-content/themes/themeChichaLima/img/chicha-de-jora-lima-peru.png'),
('Chicha Morada',5, 'https://cdn.pixabay.com/photo/2021/07/17/00/55/chicha-morada-6472032_1280.jpg'),
('Pisco Sour',15.50, 'https://www.partybox.pe/cdn/shop/articles/receta-coctel-pisco-sour.jpg?v=1733459620')
;
CREATE TABLE venta (
    idVenta INT PRIMARY KEY AUTO_INCREMENT,
    idProducto INT,
    cantidad INT NOT NULL,
    precioUnitario DECIMAL(10,2) NOT NULL,
    total DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (idProducto) REFERENCES productos(idProducto)
);
alter table venta add column fecha DATE DEFAULT (CURRENT_DATE);