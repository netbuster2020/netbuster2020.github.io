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
   ID_PELICULA             int not null,
   ID_COMENTARIO        int not null,
   primary key (ID_COM_PEL, ID_COMENTARIO)
);

/*==============================================================*/
/* Table: COMENTARIO_SERIE                                      */
/*==============================================================*/
create table COMENTARIO_SERIE
(
   ID_COM_SER		int not null AUTO_INCREMENT,
   ID_SERIE          int not null,
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

('anonima', 'anonimo', 'a', '1991-05-17', '69', 'anonimo', 0)
('Santiago', 'Gelladuga', 'mrgelladuga@gmail.com', '1991-05-17', 'admin69', 'masterzeta', 1),
('Pablo', 'Lay', 'pablolaym@gmail.com', '1985-09-07', 'admin69', 'Play', 1),
('Bastian', 'Monje', 'basmonje@gmail.com', '1995-02-05', 'admin69', 'basmonje', 1),
('Franco', 'Muñoz', 'francomuñoz@gmail.com', '1991-05-20', 'admin69', 'Mister', 1),
('Catalina', 'Gonzalez', 'catagonzalez@gmail.com', '2000-01-17', 'admin69', 'Catalaqueataca', 1),
('Mario', 'Larenas', 'mlarenas@gmail.com', '1873-12-24', 'admin69', 'masterjava', 1);



INSERT INTO pelicula (nombre_p, fecha_estreno, pais_o, genero_p, actor_p, premios, resena, foto, video)

VALUES

('Joker', '2019-10-03', 'Estados Unidos', 'Drama/comedia', 'Joaquin Phoenix', 'se gano mi corazon', 'Muy wena la wea', 'https://pics.filmaffinity.com/joker-790658206-large.jpg', 'https://www.youtube.com/embed/GShOSM9ihZc'),
('Pulp Fiction', '1995-03-01', 'Estados Unidos', 'Crimen/Drama', 'John Travolta', 'se gano mi corazon', 'Muy wena la wea', 'https://i.pinimg.com/564x/36/b1/0a/36b10aa4b63950458999594ca442178e.jpg', 'https://www.youtube.com/embed/s7EdQ4FqbhY'),
('Bad Education', '1995-03-01', 'Estados Unidos', 'Drama/comedia', 'Hugh Jackman', 'se gano mi corazon', 'Muy wena la wea', 'https://img.over-blog-kiwi.com/4/80/52/47/20200504/ob_1df905_dvas.jpg', 'https://www.youtube.com/embed/mHNng3hb4co'),
('Happiness Continues', '2020-04-24', 'Estados Unidos', 'Documental', 'Jonas Brothers', 'pa las minas', 'ni al metro', 'https://miro.medium.com/max/1400/1*jpqEnKz0KBEvKisreSkj9A.jpeg', 'https://www.youtube.com/embed/U6nVSANTsjM'),
('Onward', '2020-03-06', 'Estados Unidos', 'Animacion', 'Tom Holland', 'se gano mi corazon', 'Muy wena la wea', 'https://i.pinimg.com/564x/90/0a/6e/900a6ebc4da3e19c1310a6753f7da626.jpg', 'https://www.youtube.com/embed/jk26pDvHtNw'),
('The wolf of wall street', '2014-01-02', 'Estados Unidos', 'Drama/biografico/Crimen', 'Leonardo DiCaprio', 'se gano mi corazon', 'Muy wena la wea', 'https://i.pinimg.com/564x/a7/6b/b1/a76bb1cff32875cebca74fc0466268a3.jpg', 'https://www.youtube.com/embed/PaAvUOXUohk'),
('The Godfather', '1972-03-24', 'Estados Unidos', 'Drama/Crimen', 'Marlon Brando', 'se gano mi corazon', 'Muy wena la wea', 'https://i.pinimg.com/originals/11/99/dc/1199dc6273680f175fd9b06c9c36d08a.jpg', 'https://www.youtube.com/embed/gCVj1LeYnsc'),
('Avengers: End Game', '2019-04-25', 'Estados Unidos', 'Accion/Ciencia Ficcion', 'Robert Downey Jr.', 'se gano mi corazon', 'Muy wena la wea', 'https://lumiere-a.akamaihd.net/v1/images/690x0w_f1b0509a.jpeg', 'https://www.youtube.com/embed/TcMBFSGVi1c'),
('The Matrix', '1999-03-31', 'Estados Unidos', 'Accion/Ciencia Ficcion', 'Keanu Reeves', 'se gano mi corazon', 'Muy wena la wea', 'https://pics.filmaffinity.com/Matrix-155050517-large.jpg', 'https://www.youtube.com/embed/vKQi3bBA1y8'),
('Fight Club', '1999-10-15', 'Estados Unidos', 'Drama/Comedia Negra', 'Edward Norton', 'se gano mi corazon', 'Muy wena la wea', 'https://i.pinimg.com/736x/ce/8f/03/ce8f03ee851f9f72b69782a4ddeb67b7.jpg', 'https://www.youtube.com/embed/R7aiJtcJ0AQ');





INSERT INTO serie (nombre_s, ano_estreno, n_temporadas, ideoma_original, genero_s, plataforma, estado, resena_s, foto_s, video_s)

VALUES

('La Casa de Papel', '2017-05-02', 2, 'Español', 'Accion/Crimen/Misterio', 'Netflix', 'Activa', 'me han contado que es meeeehh', 'https://s2.eestatic.com/2019/07/23/cultura/series/Netflix-Series-Ursula_Corbero-Series_415970383_130773540_1706x1706.jpg', 'https://www.youtube.com/embed/To_kVMMu-Ls'),
('Academy Umbrella', '2019-02-15', 1, 'Ingles', 'Accion/Aventura/Comedia', 'Netflix', 'Activa', 'No la he visto aun', 'https://pics.filmaffinity.com/The_Umbrella_Academy_Serie_de_TV-422973449-large.jpg', 'https://www.youtube.com/embed/KHucKOK-Vik'),
('S-H-I-E-L-D-S', '2013-09-24', 7, 'Ingles','Accion/Aventura/Drama', 'Netflix', 'Activa', 'pendiente por ver pero si es de marvel es weno', 'https://es.web.img3.acsta.net/pictures/20/04/27/09/31/5224933.jpg', 'https://www.youtube.com/embed/T3T-evQZiQo'),
('Mr Robot', '2015-11-02', 4, 'Ingles', 'Crimen/Drama/Thriller', 'Prime Video', 'Activa', 'Wena pero crazy', 'https://www.muycomputer.com/wp-content/uploads/2019/09/MrRobot.jpg', 'https://www.youtube.com/embed/NcgfoRpWLTs'),
('Sillicon Valley', '2014-04-06', 6, 'Ingles', 'Comedia', 'Netflix/Hbo', 'Activa', 'pendiente por ver', 'https://static-blogs.diariovasco.com/wp-content/uploads/sites/37/2020/02/destacada.jpg', 'https://www.youtube.com/embed/suHAySTvWBw'),
('Titanes', '2018-10-12', 2, 'Ingles', 'Accion/Crimen/Aventura', 'Netflix', 'Activa', 'pendiente por ver pero me gustaban los dibujos animados', 'https://i.pinimg.com/originals/73/b4/6d/73b46daa9a19d36227d909149ea87e60.jpg', 'https://www.youtube.com/embed/_JX89CWH5MU'),
('13 Reasons Why?', '2019-03-31', 4, 'Ingles', 'Drama/Misterio', 'Netflix', 'Activa', 'pendiente por ver per a mi parecer entera tofle esta wea', 'https://i.pinimg.com/originals/04/9d/5d/049d5d1f08f0af6e93bd53010b78e4bd.jpg', 'https://www.youtube.com/embed/KMv28IzioSs'),
('Reality Z', '2020-06-10', 1, 'Portugues', 'Comedia/Horror', 'Netflix', 'Activa', 'pendiente por ver', 'https://cdn.cinepop.com.br/2020/06/reality-z.jpg', 'https://www.youtube.com/embed/iS2oucjbgiQ'),
('Yo soy betty la fea', '1999-10-25', 1, 'Español', 'Comedia/Drama/Romance', 'Netflix', 'Activa', 'esta wea la daban cuando hiba en 3ero basico', 'https://www.eluniversal.com.mx/sites/default/files/2019/12/06/betty_la_fea.jpg', 'https://www.youtube.com/embed/nGB5UcBquLk'),
('Curon', '2020-06-10', 1, 'Ingles', 'Fantasia/Misterio/Thriller', 'Netflix', 'Activa', 'Pendiente por ver', 'http://www.culturaencadena.com/images/stories/contenidodesescalada/CURON.jpg', 'https://www.youtube.com/embed/w_EaVne6uVM');