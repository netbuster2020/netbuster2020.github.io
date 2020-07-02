$("#formulario").validate({
    rules: {
        name: {
            required: true,
            minlength: 5,
            maxlength: 25
        },
        marca: {
            required: true,
            maxlength: 30
        },
        modelo: {
            minlength: 5,
            maxlength: 20
        },
        stock: {
            required: true,
            number: true,
            min: 0,
            max: 1000,
            rangelength: [0, 1000],
            digits: true
        },
        color: {
            digits: false,
            maxlength: 20,
            lettersonly: true
        }
    },
    messages: {
        name: {
            required: "Debe ingresar nombre de producto",
            minlength: "Mínimo 5",
            maxlength: "Máximo 25"
        },
        marca: {
            required: "Debe ingresar una marca",
            maxlength: "Puede tener hasta un máximo de 30 caracteres"
        },
        modelo: {
            minlength: "Debe tener mínimo 5 caracteres",
            maxlength: "Puede tener hasta un máximo de 30 caracteres"
        },
        stock: {
            required: "Ingrese un valor de stock",
            number: "Debe ser un numero",
            min: "Debe ser un numero mayor o igual a cero",
            max: "Debe ser un numero menor o igual a 1000"
        }
    }
});