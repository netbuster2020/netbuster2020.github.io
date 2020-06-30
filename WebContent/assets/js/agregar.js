// Serie Constructor
class Serie {
    constructor(nombre, comentario, email) {
        this.nombre = nombre;
        this.comentario = comentario;
        this.email = email;
    }
}

// UI Constructor
class UI {
    addProduct(serie) {
        const serieList = document.getElementById('series');
        const element = document.createElement('div');
        element.innerHTML = `
            <div class="card text-center">
                <div class="card-body dark">
                    <h1>Alias: ${serie.nombre}</h1>
                    <p>Comentario: ${serie.comentario}</p>
                </div>
            </div>
            
        `;
        serieList.appendChild(element);
    }

    resetForm() {
        document.getElementById('comentario').reset();
    }
}

// DOM Events
document.getElementById('comentario')
    .addEventListener('submit', function(e) {

        const nombre = document.getElementById('nombre').value,
            comentario = document.getElementById('comentarios').value,
            email = document.getElementById('email').value;

        // Create a new Oject Product
        const serie = new Serie(nombre, comentario, email);

        // Create a new UI
        const ui = new UI();

        // Save Product

        ui.addProduct(serie);
        ui.resetForm();
        e.preventDefault();
    });