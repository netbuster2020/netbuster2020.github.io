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
        </div>
    </div>`;
        serieList.appendChild(element);
        num++;
    }
}