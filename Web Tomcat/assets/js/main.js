var peliculas = ["Joker", "Pulp Fictio", "Bad Education", "Happiness Continues", "Onward", "The wolf of wall street", "The Godfather", "Avengers: End Game", "The Matrix", "Fight Club", "Saving Private Ryan", "Back to the Future"];
var pelicula = {
    "Joker": {
        tituloChile: "Guazon",
        genero: "Crimen/Drama/Thriller",
        estreno: "3 de octubre de 2019",
        director: "Todd Phillips",
        productor: "Todd Phillips",
        guionista: "Todd Phillips",
        protagonista: "Joaquin Phoenix",
        pais: "	Estados Unidos",
        ideomaO: "Ingles",
        foto: "https://m.media-amazon.com/images/M/MV5BNGVjNWI4ZGUtNzE0MS00YTJmLWE0ZDctN2ZiYTk2YmI3NTYyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UX182_CR0,0,182,268_AL_.jpg",
        reseña: "Muy buena la wea",
        trailer: "https://www.youtube.com/embed/GShOSM9ihZc"
    },

    "Pulp Fiction": {
        tituloChile: "Tiempos violentos",
        genero: "Crimen/Drama",
        estreno: "1 de marzo de 1995",
        director: "Quentin Tarantino",
        productor: "Lawrence Bender",
        guionista: "Quentin Tarantino",
        protagonista: "John Travolta",
        pais: "	Estados Unidos",
        ideomaO: "Ingles",
        foto: "https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY268_CR1,0,182,268_AL_.jpg",
        reseña: "Wenisima",
        trailer: "https://www.youtube.com/embed/s7EdQ4FqbhY"
    },


    "Bad Education": {
        tituloChile: "La estafa",
        genero: "drama/comedia",
        estreno: "8 de septiembre de 2019",
        director: "Cory Finley",
        productor: "Fred Berger",
        guionista: "Robert Kolker",
        protagonista: "Hugh Jackman",
        pais: "	Estados Unidos",
        ideomaO: "Ingles",
        foto: "https://m.media-amazon.com/images/M/MV5BYmE2NDNlMDktOTA5YS00ZmYyLWE1ZjUtN2QzZGIzNzI1MGVmXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UX182_CR0,0,182,268_AL_.jpg",
        reseña: "Aun no la veo",
        trailer: "https://www.youtube.com/embed/mHNng3hb4co"
    },


    "Happiness Continues": {
        tituloChile: "Happiness Continues: A Jonas Brothers Concert Film",
        genero: "Documental",
        estreno: "24 de abril de 2020",
        director: "Jonas Brothers",
        productor: "Jonas Brothers",
        guionista: "Jonas Brothers",
        protagonista: "Jonas Brothers",
        pais: "	Estados Unidos",
        ideomaO: "Ingles",
        foto: "https://m.media-amazon.com/images/M/MV5BNWNiYmRiYjEtNmE0OC00NzVmLWI3MzgtMWNhZDY5YjFkODc5XkEyXkFqcGdeQXVyMDc2NTEzMw@@._V1_UY268_CR9,0,182,268_AL_.jpg",
        reseña: "Me tinca pa minas esta wea",
        trailer: "https://www.youtube.com/embed/U6nVSANTsjM"
    },


    "Onward": {
        tituloChile: "Unidos",
        genero: "Animacion",
        estreno: "6 de marzo de 2020",
        director: "Dan Scanlon",
        productor: "Kori Rae",
        guionista: "Dan Scanlon",
        protagonista: "Tom Holland",
        pais: "	Estados Unidos",
        ideomaO: "Ingles",
        foto: "https://m.media-amazon.com/images/M/MV5BMTZlYzk3NzQtMmViYS00YWZmLTk5ZTEtNWE0NGVjM2MzYWU1XkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_UX182_CR0,0,182,268_AL_.jpg",
        reseña: "Piola",
        trailer: "https://www.youtube.com/embed/jk26pDvHtNw"
    },

    "The wolf of wall street": {
        tituloChile: "El lobo de Wall Street",
        genero: "drama/biografico/crimen",
        estreno: "2 de enero de 2014",
        director: "Martin Scorsese",
        productor: "Riza Aziz",
        guionista: "Terence Winter",
        protagonista: "Leonardo DiCaprio",
        pais: "	Estados Unidos",
        ideomaO: "Ingles",
        foto: "https://m.media-amazon.com/images/M/MV5BMjIxMjgxNTk0MF5BMl5BanBnXkFtZTgwNjIyOTg2MDE@._V1_UX182_CR0,0,182,268_AL_.jpg",
        reseña: "Wenisima esta weaita",
        trailer: "https://www.youtube.com/embed/PaAvUOXUohk"
    },

    "The Godfather": {
        tituloChile: "El padrino",
        genero: "drama/crimen",
        estreno: "24 de marzo de 1972",
        director: "Francis Ford Coppola",
        productor: "Albert S. Ruddy",
        guionista: "Francis Ford Coppola",
        protagonista: "Marlon Brando",
        pais: "	Estados Unidos",
        ideomaO: "Ingles",
        foto: "https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY268_CR3,0,182,268_AL_.jpg",
        reseña: "De culto",
        trailer: "https://www.youtube.com/embed/gCVj1LeYnsc"
    },


    "Avengers: End Game": {
        tituloChile: "Vengadores: Endgame",
        genero: "Accion/Ciencia Ficcion",
        estreno: "25 de abril de 2019",
        director: "Anthony y Joe Russo",
        productor: "Kevin Feige",
        guionista: "Christopher Markus",
        protagonista: "Robert Downey Jr.",
        pais: "	Estados Unidos",
        ideomaO: "Ingles",
        foto: "https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_UX182_CR0,0,182,268_AL_.jpg",
        reseña: "Wena para todo publico",
        trailer: "https://www.youtube.com/embed/TcMBFSGVi1c"
    },

    "The Matrix": {
        tituloChile: "The matrix",
        genero: "Accion/Ciencia Ficcion",
        estreno: "31 de marzo de 1999",
        director: "Hermanas Wachowski",
        productor: "Joel Silver",
        guionista: "Hermanas Wachowski",
        protagonista: "Keanu Reeves",
        pais: "	Estados Unidos",
        ideomaO: "Ingles",
        foto: "https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg",
        reseña: "De culto",
        trailer: "https://www.youtube.com/embed/vKQi3bBA1y8"
    },

    "Fight Club": {
        tituloChile: "El club de la pelea",
        genero: "drama/comedianegra",
        estreno: "15 de octubre de 1999",
        director: "David Fincher",
        productor: "Ross Grayson Bell",
        guionista: "Jim Uhls",
        protagonista: "Edward Norton",
        pais: "	Estados Unidos",
        ideomaO: "Ingles",
        foto: "https://m.media-amazon.com/images/M/MV5BMmEzNTkxYjQtZTc0MC00YTVjLTg5ZTEtZWMwOWVlYzY0NWIwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX182_CR0,0,182,268_AL_.jpg",
        reseña: "De culto",
        trailer: "https://www.youtube.com/embed/R7aiJtcJ0AQ"
    },

    "Saving Private Ryan": {
        tituloChile: "Rescatando al soldado Ryan",
        genero: "drama/Belico",
        estreno: "24 de julio de 1998",
        director: "Steven Spielberg",
        productor: "Steven Spielberg",
        guionista: "Robert Rodat",
        protagonista: "Tom Hanks",
        pais: "	Estados Unidos",
        ideomaO: "Ingles",
        foto: "https://m.media-amazon.com/images/M/MV5BZjhkMDM4MWItZTVjOC00ZDRhLThmYTAtM2I5NzBmNmNlMzI1XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_UY268_CR0,0,182,268_AL_.jpg",
        reseña: "es wena",
        trailer: "https://www.youtube.com/embed/pWhQvZJiU0Q"
    },

    "Back to the Future": {
        tituloChile: "Volver al futuro",
        genero: "Ciencia ficcion/comedia/aventura",
        estreno: "3 de julio de 1985",
        director: "Robert Zemeckis",
        productor: "Neil Canton",
        guionista: "Robert Zemeckis",
        protagonista: "Michael J. Fox",
        pais: "	Estados Unidos",
        ideomaO: "Ingles",
        foto: "https://m.media-amazon.com/images/M/MV5BZmU0M2Y1OGUtZjIxNi00ZjBkLTg1MjgtOWIyNThiZWIwYjRiXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg",
        reseña: "de Culto",
        trailer: "https://www.youtube.com/embed/qvsgGtivCgs"
    }

};

/* Base de datos Series */


var series = ["Casa de papel", "Academy Umbrella", "S-H-I-E-L-D-S", "Mr Robot", "Sillicon Valley", "Titanes", "13 Reasons Why?", "Reality Z", "Yo soy betty la fea", "Curon"];
var serie = {

    "Casa de papel": {
        genero: "Accion/Crimen/Misterio",
        estreno: "2 de mayo de 2017",
        creador: "Álex Pina",
        pais: "España",
        ideomaO: "Español",
        foto: "https://m.media-amazon.com/images/M/MV5BZDcxOGI0MDYtNTc5NS00NDUzLWFkOTItNDIxZjI0OTllNTljXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX182_CR0,0,182,268_AL_.jpg",
        reseña: "Pendiente por ver",
        trailer: "https://www.youtube.com/embed/To_kVMMu-Ls"
    },

    "Academy Umbrella": {
        genero: "Accion/Aventura/Comedia",
        estreno: "15 de febrero de 2019",
        creador: "Steve Blackman",
        pais: "	Estados Unidos",
        ideomaO: "Ingles",
        foto: "https://m.media-amazon.com/images/M/MV5BNWQ3NjBlMDktNzQ0NC00NzQ3LWFlNjYtZTg5NTllNTgwZGMyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UX182_CR0,0,182,268_AL_.jpg",
        reseña: "Pendiente por ver",
        trailer: "https://www.youtube.com/embed/KHucKOK-Vik"
    },

    "S-H-I-E-L-D-S": {
        genero: "Accion/Aventura/Drama",
        estreno: "24 de septiembre de 2013",
        creador: "Maurissa Tancharoen",
        pais: "Estados Unidos",
        ideomaO: "Ingles",
        foto: "https://m.media-amazon.com/images/M/MV5BOTJhMjhhZDItZTQxMi00NGM3LTliZjYtMjcyMWE2YzYwNTA0XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UY268_CR16,0,182,268_AL_.jpg",
        reseña: "Pendiente por ver",
        trailer: "https://www.youtube.com/embed/T3T-evQZiQo"
    },

    "Mr Robot": {
        genero: "Crimen/Drama/Thriller",
        estreno: "2 de noviembre de 2015",
        creador: "Álex Pina",
        pais: "	Estados Unidos",
        ideomaO: "Ingles",
        foto: "https://m.media-amazon.com/images/M/MV5BMzgxMmQxZjQtNDdmMC00MjRlLTk1MDEtZDcwNTdmOTg0YzA2XkEyXkFqcGdeQXVyMzQ2MDI5NjU@._V1_UX182_CR0,0,182,268_AL_.jpg",
        reseña: "mas loca que una cabra",
        trailer: "https://www.youtube.com/embed/NcgfoRpWLTs"
    },

    "Sillicon Valley": {
        genero: "Comedia",
        estreno: "6 de abril de 2014",
        creador: "John Altschuler",
        pais: "	Estados Unidos",
        ideomaO: "Ingles",
        foto: "https://m.media-amazon.com/images/M/MV5BOTcwNzU2MGEtMzUzNC00MzMwLWJhZGItNDY3NDllYjU5YzAyXkEyXkFqcGdeQXVyMzQ2MDI5NjU@._V1_UX182_CR0,0,182,268_AL_.jpg",
        reseña: "Pendiente por ver",
        trailer: "https://www.youtube.com/embed/suHAySTvWBw"
    },

    "Titanes": {
        genero: "Accion/Crimen/Aventura",
        estreno: "12 de octubre de 2018",
        creador: "Greg Berlanti",
        pais: "	Estados Unidos",
        ideomaO: "Ingles",
        foto: "https://m.media-amazon.com/images/M/MV5BOGIxMzE1MTEtMzViYi00MWI5LTllOTUtMmZkYzM3NmIyNTZlXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UX182_CR0,0,182,268_AL_.jpg",
        reseña: "Pendiente por ver",
        trailer: "https://www.youtube.com/embed/_JX89CWH5MU"
    },

    "13 Reasons Why?": {
        genero: "Drama/Misterio",
        estreno: "31 de marzo de 2017",
        creador: "Brian Yorkey",
        pais: "	Estados Unidos",
        ideomaO: "Ingles",
        foto: "https://m.media-amazon.com/images/M/MV5BMDYzZTRlNGEtZDc2Mi00ZGNjLTlmZDAtMmVjMDZkOThiODEwXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UX182_CR0,0,182,268_AL_.jpg",
        reseña: "Pendiente por ver",
        trailer: "https://www.youtube.com/embed/KMv28IzioSs"
    },

    "Reality Z": {
        genero: "Comedia/Horror",
        estreno: "10 de junio de 2020",
        creador: "João Costa",
        pais: "Brazil",
        ideomaO: "Portuguez",
        foto: "https://m.media-amazon.com/images/M/MV5BMTBmZjc5YTgtZjQ1OC00OTFlLWIzYWEtYjVkMjFlM2IxMGRkXkEyXkFqcGdeQXVyMTk2NDE3Mzc@._V1_UY268_CR4,0,182,268_AL_.jpg",
        reseña: "Pendiente por ver",
        trailer: "https://www.youtube.com/embed/iS2oucjbgiQ"
    },

    "Yo soy betty la fea": {
        genero: "Comedia/Drama/Romance",
        estreno: "25 de octubre de 1999",
        creador: "Mario Riber",
        pais: "colombia",
        ideomaO: "Español",
        foto: "https://m.media-amazon.com/images/M/MV5BM2U4YzM5ZTItNGFmZi00MDRhLTgyMjUtZDJjMTI2ZmU5ZjNlXkEyXkFqcGdeQXVyMTcxNTYyMjM@._V1_UY268_CR9,0,182,268_AL_.jpg",
        reseña: "Pendiente por ver",
        trailer: "https://www.youtube.com/embed/nGB5UcBquLk"
    },

    "Curon": {
        genero: "Fantasia/Misterio/Thriller",
        estreno: "10 de junio de 2020",
        creador: "Ezio Abbate",
        pais: "	Estados Unidos",
        ideomaO: "Ingles",
        foto: "https://m.media-amazon.com/images/M/MV5BZjQ1NTQ5MTAtMDgwZi00Njc2LTk5MGEtM2NmNDIxYTJiNzA2XkEyXkFqcGdeQXVyNjEwNTM2Mzc@._V1_UY268_CR3,0,182,268_AL_.jpg",
        reseña: "Pendiente por ver",
        trailer: "https://www.youtube.com/embed/w_EaVne6uVM"
    }
};

function cargarCarruzel() {
    for (let i = (peliculas.length - 10); i < peliculas.length; i++) {
        var tituloPelicula = peliculas[i];
        const carrucel = document.getElementById("carrucel");
        const div = document.createElement("div");
        div.className = "item-movie";
        div.id = `div-${i}`;
        carrucel.appendChild(div);
        const img = document.createElement("img");
        img.id = `img-${i}`;
        img.name = tituloPelicula;
        img.src = pelicula[tituloPelicula].foto;
        div.appendChild(img);
    }

    $('.owl-carousel').owlCarousel({
        lazyLoad: true,
        loop: true,
        margin: 10,
        nav: true,
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 3,
                margin: 10
            },
            1000: {
                items: 5
            }
        }
    })
};


function Res(id) {
    var tituloOriginal = id;
    document.getElementById("vent").style.display = "block";
    document.getElementById("tituloo").innerHTML = tituloOriginal;
    document.getElementById("tituloChile").innerHTML = pelicula[tituloOriginal].tituloChile;
    document.getElementById("genero").innerHTML = pelicula[tituloOriginal].genero;
    document.getElementById("fecha").innerHTML = pelicula[tituloOriginal].estreno;
    document.getElementById("director").innerHTML = pelicula[tituloOriginal].director;
    document.getElementById("productor").innerHTML = pelicula[tituloOriginal].productor;
    document.getElementById("guionista").innerHTML = pelicula[tituloOriginal].guionista;
    document.getElementById("protagonista").innerHTML = pelicula[tituloOriginal].protagonista;
    document.getElementById("pais").innerHTML = pelicula[tituloOriginal].pais;
    document.getElementById("ideomaO").innerHTML = pelicula[tituloOriginal].ideomaO;
    document.getElementById("fotop").src = pelicula[tituloOriginal].foto;
    document.getElementById("trailer").src = pelicula[tituloOriginal].trailer;
    document.getElementById("reseña").innerHTML = pelicula[tituloOriginal].reseña;
}

function Reserie(id) {
    var tituloserie = id;
    document.getElementById("vent").style.display = "block";
    document.getElementById("tituloo").innerHTML = tituloserie;
    document.getElementById("genero").innerHTML = serie[tituloserie].genero;
    document.getElementById("fecha").innerHTML = serie[tituloserie].estreno;
    document.getElementById("creador").innerHTML = serie[tituloserie].creador;
    document.getElementById("pais").innerHTML = serie[tituloserie].pais;
    document.getElementById("ideomaO").innerHTML = serie[tituloserie].ideomaO;
    document.getElementById("fotop").src = serie[tituloserie].foto;
    document.getElementById("trailer").src = serie[tituloserie].trailer;
    document.getElementById("reseña").innerHTML = serie[tituloserie].reseña;
}

function Pagpeliculas() {
    var peliculas = {
        1: {
            "titulo": "Joker",
            "Fecha": "3 de octubre de 2019",
            "Genero": "Crimen/Drama/Thriller",
            "img": "src/img/peliculas/joker.jpg"
        },
        2: {
            "titulo": "Pulp Fiction",
            "Fecha": "1 de marzo de 1995",
            "Genero": "Crimen/Drama",
            "img": "src/img/peliculas/pulp.jpg"
        },
        3: {
            "titulo": "Bad Education",
            "Fecha": "8 de septiembre de 2019",
            "Genero": "drama/comedia",
            "img": "src/img/peliculas/bad.jpg"
        },
        4: {
            "titulo": "Happiness Continues",
            "Fecha": "24 de abril de 2020",
            "Genero": "Documental",
            "img": "src/img/peliculas/jonas.jpg"
        },
        5: {
            "titulo": "Onward",
            "Fecha": "6 de marzo de 2020",
            "Genero": "Animacion",
            "img": "src/img/peliculas/onward.jpg"

        },
        6: {
            "titulo": "The wolf of wall street",
            "Fecha": "2 de enero de 2014",
            "Genero": "Drama/Biografico/Crimen",
            "img": "src/img/peliculas/wolf.jpg"
        },
        7: {
            "titulo": "The Godfather",
            "Fecha": "24 de marzo de 1972",
            "Genero": "Drama/Crimen",
            "img": "src/img/peliculas/padrino.jpg"
        },
        8: {
            "titulo": "Avengers: End Game",
            "Fecha": "25 de abril de 2019",
            "Genero": "Accion/Ciencia Ficcion",
            "img": "src/img/peliculas/vengadores.jpg"
        },
        9: {
            "titulo": "The Matrix",
            "Fecha": "31 de marzo de 1999",
            "Genero": "Accion/Ciencia Ficcion",
            "img": "src/img/peliculas/matrix.jpg"
        },
        10: {
            "titulo": "Back to the Future",
            "Fecha": "3 de julio de 1985",
            "Genero": "Ciencia ficcion/comedia/aventura",
            "img": "src/img/peliculas/marty.jpg"
        }
    }
    var num = 1;
    for (let i = 0; i < 10; i++) {
        const serieList = document.getElementById('contenido');
        const element = document.createElement('div');
        element.innerHTML = `
        <div class="serie-contenedor">
            <div class="list-series">
                <img width="200px" src="${peliculas[num].img}" alt="">
                <h1>${peliculas[num].titulo}</h1> 
                <span>Fecha: ${peliculas[num].Fecha}</span>
                <p>Genero: ${peliculas[num].Genero}</p>
                <br>
                <button id="${peliculas[num].titulo}" class="buttoninfo" onclick="Res(this.id)">Ver Más</button>
            </div>
    </div>`;
        serieList.appendChild(element);
        num++;
    }
}

function cerrar() {
    document.getElementById("vent").style.display = "none";
}

function Pagseries() {
    var series = {
        1: {
            "titulo": "Casa de papel",
            "Fecha": "2 de mayo de 2017",
            "Genero": "Accion / Crimen / Misterio",
            "img": "src/img/serie/casapapel.jpeg"
        },
        2: {
            "titulo": "Academy Umbrella",
            "Fecha": "15 de febrero de 2019",
            "Genero": "Accion/Aventura/Comedia",
            "img": "src/img/serie/umbrella.jpg"
        },
        3: {
            "titulo": "S-H-I-E-L-D-S",
            "Fecha": "24 de septiembre de 2013",
            "Genero": "Accion / Aventura / Drama",
            "img": "src/img/serie/shields.jpg"
        },
        4: {
            "titulo": "Mr Robot",
            "Fecha": "2 de noviembre de 2015",
            "Genero": "Crimen/Drama/Thriller",
            "img": "src/img/serie/mrrobot.jpg"
        },
        5: {
            "titulo": "Sillicon Valley",
            "Fecha": "6 de abril de 2014",
            "Genero": "Comedia",
            "img": "src/img/serie/sillycon.jpg"

        },
        6: {
            "titulo": "Titanes",
            "Fecha": "12 de octubre de 2018",
            "Genero": "Accion/Crimen/Aventura",
            "img": "src/img/serie/titanes.jpg"
        },
        7: {
            "titulo": "13 Reasons Why?",
            "Fecha": "31 de marzo de 2017",
            "Genero": "Drama/Misterio",
            "img": "src/img/serie/13reasons.jpg"
        },
        8: {
            "titulo": "Reality Z",
            "Fecha": "10 de junio de 2020",
            "Genero": "Comedia/Horror",
            "img": "src/img/serie/realiz.jpg"
        },
        9: {
            "titulo": "Yo soy betty la fea",
            "Fecha": "25 de octubre de 1999",
            "Genero": "Comedia/Drama/Romance",
            "img": "src/img/serie/betty.jpg"
        },
        10: {
            "titulo": "Curon",
            "Fecha": "10 de junio de 2020",
            "Genero": "Fantasia/Misterio/Thriller",
            "img": "src/img/serie/kuron.jpg"
        }
    }
    var num = 1;
    for (let i = 0; i < 10; i++) {
        const serieList = document.getElementById('conten');
        const element = document.createElement('div');
        element.innerHTML = `
    <div class="serie-contenedor">
        <div class="list-series">
            <img width="200px" src="${series[num].img}" alt="">
            <h1>${series[num].titulo}</h1> 
            <span>Fecha: ${series[num].Fecha}</span>
            <p>Genero: ${series[num].Genero}</p>
            <br>
            <button id="${series[num].titulo}" class="buttoninfo" onclick="Reserie(this.id)">Ver Más</button>
        </div>
    </div>`;
        serieList.appendChild(element);
        num++;
    }
}