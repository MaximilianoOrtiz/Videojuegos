drop table if exists videojuego;
drop table if exists distribuidor;
drop table if exists desarrollador;

create table videojuego (
    id int primary key auto_increment,
    nombre varchar(200) not null,
    descripcion varchar(3000),
    imagen_url varchar(500)
);

insert into videojuego 
(nombre,                    descripcion,                                                                                                                                                                    imagen_url) values
('Bioshock Infinite',       'La Ãºltima gran entrega de la saga Bioshock, ahora en una imperdible ciudad de ensueÃ±o entre las nubes.',                                                                       'https://cdn.vox-cdn.com/thumbor/I24jyQjEEDBM4AQrGIbaCk4t2gk=/0x0:1080x720/1200x800/filters:focal(0x0:1080x720)/cdn.vox-cdn.com/uploads/chorus_image/image/4674397/bioshock_infinite_delay.0.jpg'),
('Insurgency: Sandstorm',   'Un FPS tÃ¡ctico por equipos basado en combates letales en espacios reducidos y multijugador centrado en objetivos',                                                             'https://areajugones.sport.es/wp-content/uploads/2018/06/insurgency-e1528802800327.jpg'),
('The Witness',             'Te despiertas, a solas, en una extraÃ±a isla llena de puzles que te retarÃ¡n y sorprenderÃ¡n.',                                                                                   'https://cdn.wccftech.com/wp-content/uploads/2016/11/the-witness-ps4-pro-patch-4k-2060x1288.jpg'),
('Braid',                   'Un juego de rompecabezas con toques plataformeros, donde puedes manipular el flujo del tiempo de unas maneras inusuales y extraÃ±as.',                                          'https://i1.wp.com/braid-game.com/news/wp-content/uploads/banner-420x358-city-1e.png'),
('Borderlands 3',           'Â¡Vuelve el padre de los shooter-looter, con tropecientas mil armas y una aventura caÃ³tica!',                                                                                   'https://cdn.gbposters.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/f/p/fp4825-borderlands-3-cover.jpg'),
('Control',                 'Tras la invasiÃ³n de una agencia secreta de Nueva York por parte de una amenaza de otro mundo, te conviertes en la nueva directora que deberÃ¡ luchar para recuperar Control.',  'https://media.playstation.com/is/image/SCEA/control-poster-01-ps4-us-11sep19?$native_nt$'),
('Subnautica',              'Un juego de aventuras submarinas ambientado en un mundo oceÃ¡nico alienÃ­gena. Â¡Te espera un mundo abierto enorme lleno de maravillas y peligros!',                              'https://store.playstation.com/store/api/chihiro/00_09_000/container/ES/es/999/EP5426-CUSA13893_00-2222444466669999/1568624921000/image?w=240&h=240&bg_color=000000&opacity=100&_version=00_09_000'),
('Firewatch',               'Firewatch es un juego de misterio en primera persona para un jugador que se desarrolla en la selva de Wyoming',                                                                'https://www.mobygames.com/images/covers/l/323028-firewatch-playstation-4-front-cover.jpg');


create table distribuidor(
id int primary key auto_increment,
nombre varchar(200),
sitio_web varchar(200)
);

insert into distribuidor
(id,    nombre,                         sitio_web) values
(1,     '2K',                           'https://2k.com'),
(2,     'Focus Home Interactive',       'https://www.focus-home.com'),
(3,     'Thekla',                       null),
(4,     'Number One',                   null),
(5,     '505 Games',                    'https://505games.com'),
(6,     'Unknown Worlds Entertainment', 'https://unknownworlds.com'),
(7,     'Campo Santo',                  'https://www.camposanto.com');


alter table videojuego
add column distribuidor_id int,
add foreign key (distribuidor_id) references distribuidor(id);

update videojuego set distribuidor_id = 1 where id in (1, 5);
update videojuego set distribuidor_id = 2 where id in (2);
update videojuego set distribuidor_id = 3 where id in (3);
update videojuego set distribuidor_id = 4 where id in (4);
update videojuego set distribuidor_id = 5 where id in (6);
update videojuego set distribuidor_id = 6 where id in (7);
update videojuego set distribuidor_id = 7  where id in (8);

alter table videojuego
modify distribuidor_id int not null;

create table desarrollador(
id int primary key auto_increment,
nombre varchar(150),
cargo varchar(150)
);

insert into desarrollador 
(nombre,                          cargo )values
('Maximiliano Oriz',    'Lider de Proyecto'),
('Mailen Oriuz',         'Programador'),
('Romina Roja',          'Gerente');

alter table videojuego
add column desarrollador_id int,
add foreign key (desarrollador_id) references desarrollador(id);

update videojuego set desarrollador_id = 1 where id in (1,2,3);
update videojuego set desarrollador_id = 2 where id in (4,5);
update videojuego set desarrollador_id = 3 where id in (6,7,8);

alter table videojuego
modify  desarrollador_id int not null;


 



