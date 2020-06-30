/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     29/6/2020 18:00:54                           */
/*==============================================================*/


drop table if exists COMENTARIO;

drop table if exists COMENTARIO_PELICULA;

drop table if exists COMENTARIO_SERIE;

drop table if exists PELICULA;

drop table if exists SERIE;

drop table if exists USUARIO;

/*==============================================================*/
/* Table: COMENTARIO                                            */
/*==============================================================*/
create table COMENTARIO
(
   ID_COMENTARIO        int not null AUTO_INCREMENT,
   ID_USER              int,
   FECHA_AHORA          datetime not null,
   MENSAJE              varchar(300) not null,
   primary key (ID_COMENTARIO)
);

/*==============================================================*/
/* Table: COMENTARIO_PELICULA                                   */
/*==============================================================*/
create table COMENTARIO_PELICULA
(
   ID_COM_PEL		int not null AUTO_INCREMENT,
   ID_SERIE             int not null,
   ID_COMENTARIO        int not null,
   primary key (ID_COM_PEL, ID_COMENTARIO)
);

/*==============================================================*/
/* Table: COMENTARIO_SERIE                                      */
/*==============================================================*/
create table COMENTARIO_SERIE
(
   ID_COM_SER		int not null AUTO_INCREMENT,
   ID_PELICULA          int not null,
   ID_COMENTARIO        int not null,
   primary key (ID_COM_SER, ID_COMENTARIO)
);

/*==============================================================*/
/* Table: PELICULA                                              */
/*==============================================================*/
create table PELICULA
(
   ID_PELICULA          int not null AUTO_INCREMENT,
   NOMBRE_P             varchar(50) not null,
   FECHA_ESTRENO        date not null,
   PAIS_O               varchar(20) not null,
   GENERO_P             varchar(40) not null,
   ACTOR_P              varchar(20) not null,
   PREMIOS              varchar(100) not null,
   RESENA               varchar(500) not null,
   FOTO                 varchar(300) not null,
   VIDEO                varchar(300) not null,
   primary key (ID_PELICULA)
);

/*==============================================================*/
/* Table: SERIE                                                 */
/*==============================================================*/
create table SERIE
(
   ID_SERIE             int not null AUTO_INCREMENT,
   NOMBRE_S             varchar(30) not null,
   ANO_ESTRENO          date not null,
   N_TEMPORADAS         int not null,
   IDEOMA_ORIGINAL      varchar(20) not null,
   GENERO_S             varchar(40) not null,
   PLATAFORMA           varchar(100) not null,
   ESTADO               varchar(20) not null,
   RESENA_S             varchar(500) not null,
   FOTO_S               varchar(300) not null,
   VIDEO_S              varchar(100) not null,
   primary key (ID_SERIE)
);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO
(
   ID_USER              int not null AUTO_INCREMENT,
   NOMBRE               varchar(20) not null,
   APELLIDO             varchar(50) not null,
   EMAIL                varchar(60) not null,
   NACIMIENTO           date not null,
   PASSWORD             varchar(8) not null,
   USERNAME             varchar(20) not null,
   ADMIN                char not null,
   primary key (ID_USER)
);

alter table COMENTARIO add constraint FK_DA foreign key (ID_USER)
      references USUARIO (ID_USER) on delete restrict on update restrict;

alter table COMENTARIO_PELICULA add constraint FK_PARA foreign key (ID_COMENTARIO)
      references COMENTARIO (ID_COMENTARIO) on delete restrict on update restrict;

alter table COMENTARIO_PELICULA add constraint FK_RELATIONSHIP_5 foreign key (ID_SERIE)
      references SERIE (ID_SERIE) on delete restrict on update restrict;

alter table COMENTARIO_SERIE add constraint FK_DE foreign key (ID_COMENTARIO)
      references COMENTARIO (ID_COMENTARIO) on delete restrict on update restrict;

alter table COMENTARIO_SERIE add constraint FK_EN foreign key (ID_PELICULA)
      references PELICULA (ID_PELICULA) on delete restrict on update restrict;



INSERT INTO usuario (nombre, apellido, email, nacimiento, password, username, admin) 

VALUES 

('Santiago', 'Gelladuga', 'mrgelladuga@gmail.com', '1991-05-17', 'admin69', 'masterzeta', 1),
('Pablo', 'Lay', 'pablolaym@gmail.com', '1985-09-07', 'admin69', 'Play', 1),
('Bastian', 'Monje', 'basmonje@gmail.com', '1995-02-05', 'admin69', 'basmonje', 1),
('Franco', 'Muñoz', 'francomuñoz@gmail.com', '1991-05-20', 'admin69', 'Mister', 1),
('Catalina', 'Gonzalez', 'catagonzalez@gmail.com', '2000-01-17', 'admin69', 'Catalaqueataca', 1),
('Mario', 'Larenas', 'mlarenas@gmail.com', '1873-12-24', 'admin69', 'masterjava', 1);



INSERT INTO pelicula (nombre_p, fecha_estreno, pais_o, genero_p, actor_p, premios, resena, foto, video)

VALUES

('Joker', '2019-10-03', 'Estados Unidos', 'Drama/comedia', 'Joaquin Phoenix', 'se gano mi corazon', 'Muy wena la wea', 'https://m.media-amazon.com/images/M/MV5BNGVjNWI4ZGUtNzE0MS00YTJmLWE0ZDctN2ZiYTk2YmI3NTYyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UX182_CR0,0,182,268_AL_.jpg', 'https://www.youtube.com/embed/GShOSM9ihZc'),
('Pulp Fiction', '1995-03-01', 'Estados Unidos', 'Crimen/Drama', 'John Travolta', 'se gano mi corazon', 'Muy wena la wea', 'https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY268_CR1,0,182,268_AL_.jpg', 'https://www.youtube.com/embed/s7EdQ4FqbhY'),
('Bad Education', '1995-03-01', 'Estados Unidos', 'Drama/comedia', 'Hugh Jackman', 'se gano mi corazon', 'Muy wena la wea', 'https://m.media-amazon.com/images/M/MV5BYmE2NDNlMDktOTA5YS00ZmYyLWE1ZjUtN2QzZGIzNzI1MGVmXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UX182_CR0,0,182,268_AL_.jpg', 'https://www.youtube.com/embed/mHNng3hb4co'),
('Happiness Continues', '2020-04-24', 'Estados Unidos', 'Documental', 'Jonas Brothers', 'pa las minas', 'ni al metro', 'https://m.media-amazon.com/images/M/MV5BNWNiYmRiYjEtNmE0OC00NzVmLWI3MzgtMWNhZDY5YjFkODc5XkEyXkFqcGdeQXVyMDc2NTEzMw@@._V1_UY268_CR9,0,182,268_AL_.jpg', 'https://www.youtube.com/embed/U6nVSANTsjM'),
('Onward', '2020-03-06', 'Estados Unidos', 'Animacion', 'Tom Holland', 'se gano mi corazon', 'Muy wena la wea', 'https://m.media-amazon.com/images/M/MV5BMTZlYzk3NzQtMmViYS00YWZmLTk5ZTEtNWE0NGVjM2MzYWU1XkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_UX182_CR0,0,182,268_AL_.jpg', 'https://www.youtube.com/embed/jk26pDvHtNw'),
('The wolf of wall street', '2014-01-02', 'Estados Unidos', 'Drama/biografico/Crimen', 'Leonardo DiCaprio', 'se gano mi corazon', 'Muy wena la wea', 'https://m.media-amazon.com/images/M/MV5BMjIxMjgxNTk0MF5BMl5BanBnXkFtZTgwNjIyOTg2MDE@._V1_UX182_CR0,0,182,268_AL_.jpg', 'https://www.youtube.com/embed/PaAvUOXUohk'),
('The Godfather', '1972-03-24', 'Estados Unidos', 'Drama/Crimen', 'Marlon Brando', 'se gano mi corazon', 'Muy wena la wea', 'https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY268_CR3,0,182,268_AL_.jpg', 'https://www.youtube.com/embed/gCVj1LeYnsc'),
('Avengers: End Game', '2019-04-25', 'Estados Unidos', 'Accion/Ciencia Ficcion', 'Robert Downey Jr.', 'se gano mi corazon', 'Muy wena la wea', 'https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_UX182_CR0,0,182,268_AL_.jpg', 'https://www.youtube.com/embed/TcMBFSGVi1c'),
('The Matrix', '1999-03-31', 'Estados Unidos', 'Accion/Ciencia Ficcion', 'Keanu Reeves', 'se gano mi corazon', 'Muy wena la wea', 'https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg', 'https://www.youtube.com/embed/vKQi3bBA1y8'),
('Fight Club', '1999-10-15', 'Estados Unidos', 'Drama/Comedia Negra', 'Edward Norton', 'se gano mi corazon', 'Muy wena la wea', 'https://m.media-amazon.com/images/M/MV5BMmEzNTkxYjQtZTc0MC00YTVjLTg5ZTEtZWMwOWVlYzY0NWIwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX182_CR0,0,182,268_AL_.jpg', 'https://www.youtube.com/embed/R7aiJtcJ0AQ');





INSERT INTO serie (nombre_s, ano_estreno, n_temporadas, ideoma_original, genero_s, plataforma, estado, resena_s, foto_s, video_s)

VALUES

('La Casa de Papel', '2017-05-02', 2, 'Español', 'Accion/Crimen/Misterio', 'Netflix', 'Activa', 'me han contado que es meeeehh', 'https://m.media-amazon.com/images/M/MV5BZDcxOGI0MDYtNTc5NS00NDUzLWFkOTItNDIxZjI0OTllNTljXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX182_CR0,0,182,268_AL_.jpg', 'https://www.youtube.com/embed/To_kVMMu-Ls'),
('Academy Umbrella', '2019-02-15', 1, 'Ingles', 'Accion/Aventura/Comedia', 'Netflix', 'Activa', 'No la he visto aun', 'https://m.media-amazon.com/images/M/MV5BNWQ3NjBlMDktNzQ0NC00NzQ3LWFlNjYtZTg5NTllNTgwZGMyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UX182_CR0,0,182,268_AL_.jpg', 'https://www.youtube.com/embed/KHucKOK-Vik'),
('S-H-I-E-L-D-S', '2013-09-24', 7, 'Ingles','Accion/Aventura/Drama', 'Netflix', 'Activa', 'pendiente por ver pero si es de marvel es weno', 'https://m.media-amazon.com/images/M/MV5BOTJhMjhhZDItZTQxMi00NGM3LTliZjYtMjcyMWE2YzYwNTA0XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UY268_CR16,0,182,268_AL_.jpg', 'https://www.youtube.com/embed/T3T-evQZiQo'),
('Mr Robot', '2015-11-02', 4, 'Ingles', 'Crimen/Drama/Thriller', 'Prime Video', 'Activa', 'Wena pero crazy', 'https://m.media-amazon.com/images/M/MV5BMzgxMmQxZjQtNDdmMC00MjRlLTk1MDEtZDcwNTdmOTg0YzA2XkEyXkFqcGdeQXVyMzQ2MDI5NjU@._V1_UX182_CR0,0,182,268_AL_.jpg', 'https://www.youtube.com/embed/NcgfoRpWLTs'),
('Sillicon Valley', '2014-04-06', 6, 'Ingles', 'Comedia', 'Netflix/Hbo', 'Activa', 'pendiente por ver', 'https://m.media-amazon.com/images/M/MV5BOTcwNzU2MGEtMzUzNC00MzMwLWJhZGItNDY3NDllYjU5YzAyXkEyXkFqcGdeQXVyMzQ2MDI5NjU@._V1_UX182_CR0,0,182,268_AL_.jpg', 'https://www.youtube.com/embed/suHAySTvWBw'),
('Titanes', '2018-10-12', 2, 'Ingles', 'Accion/Crimen/Aventura', 'Netflix', 'Activa', 'pendiente por ver pero me gustaban los dibujos animados', 'https://m.media-amazon.com/images/M/MV5BOGIxMzE1MTEtMzViYi00MWI5LTllOTUtMmZkYzM3NmIyNTZlXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UX182_CR0,0,182,268_AL_.jpg', 'https://www.youtube.com/embed/_JX89CWH5MU'),
('13 Reasons Why?', '2019-03-31', 4, 'Ingles', 'Drama/Misterio', 'Netflix', 'Activa', 'pendiente por ver per a mi parecer entera tofle esta wea', 'https://m.media-amazon.com/images/M/MV5BMDYzZTRlNGEtZDc2Mi00ZGNjLTlmZDAtMmVjMDZkOThiODEwXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UX182_CR0,0,182,268_AL_.jpg', 'https://www.youtube.com/embed/KMv28IzioSs'),
('Reality Z', '2020-06-10', 1, 'Portugues', 'Comedia/Horror', 'Netflix', 'Activa', 'pendiente por ver', 'https://m.media-amazon.com/images/M/MV5BMTBmZjc5YTgtZjQ1OC00OTFlLWIzYWEtYjVkMjFlM2IxMGRkXkEyXkFqcGdeQXVyMTk2NDE3Mzc@._V1_UY268_CR4,0,182,268_AL_.jpg', 'https://www.youtube.com/embed/iS2oucjbgiQ'),
('Yo soy betty la fea', '1999-10-25', 1, 'Español', 'Comedia/Drama/Romance', 'Netflix', 'Activa', 'esta wea la daban cuando hiba en 3ero basico', 'https://m.media-amazon.com/images/M/MV5BM2U4YzM5ZTItNGFmZi00MDRhLTgyMjUtZDJjMTI2ZmU5ZjNlXkEyXkFqcGdeQXVyMTcxNTYyMjM@._V1_UY268_CR9,0,182,268_AL_.jpg', 'https://www.youtube.com/embed/nGB5UcBquLk'),
('Curon', '2020-06-10', 1, 'Ingles', 'Fantasia/Misterio/Thriller', 'Netflix', 'Activa', 'Pendiente por ver', 'https://m.media-amazon.com/images/M/MV5BZjQ1NTQ5MTAtMDgwZi00Njc2LTk5MGEtM2NmNDIxYTJiNzA2XkEyXkFqcGdeQXVyNjEwNTM2Mzc@._V1_UY268_CR3,0,182,268_AL_.jpg', 'https://www.youtube.com/embed/w_EaVne6uVM');