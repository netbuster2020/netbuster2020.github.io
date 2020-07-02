$(document).ready(function() {
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
                <button class="buttoninfo" onclick="abrir()">Ver Más</button>
            </div>
    </div>`;
        serieList.appendChild(element);
        num++;
    }
});