/* Primer carusel de nuestro index */
$(document).ready(function() {

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

});