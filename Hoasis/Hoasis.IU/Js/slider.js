var indicador = 0;
$(document).on('ready', function () {

    setInterval(moverSlider2, 3000);

    $('.left').on('click', function (e) {
        e.preventDefault();
        moverSlider('left');
    });
    $('.right').on('click', function (e) {
        e.preventDefault();
        moverSlider('right');
    });
    definirTamaño();

});
$(window).on('resize', definirTamaño);

function definirTamaño() {
    $('.form_container .slide').each(function (i, el) {
        $(el).css({
            'background-image': "url(" + $(el).data("background") + ")",
            'height': ($('.form_container').width() * 0.35) + 'px',
            'width': ($('.form_container').width()) + 'px'
        });
    });
    $('.form_container .slideContainer').css({
        'margin-left': -(indicador * $('.form_container').width()) + 'px'
    });
}
function moverSlider(direccion) {
    var limite = $('.form_container .slide').length;
    indicador = (direccion == 'right') ? indicador + 1 : indicador - 1;
    indicador = (indicador >= limite) ? 0 : indicador;
    indicador = (indicador < 0) ? limite - 1 : indicador;
    $('.form_container .slideContainer').animate({
        'margin-left': -(indicador * $('.form_container').width()) + 'px'
    });

}


function moverSlider2() {
    var limite = $('.form_container .slide').length;
    indicador = indicador + 1;
    indicador = (indicador >= limite) ? 0 : indicador;
    indicador = (indicador < 0) ? limite - 1 : indicador;
    $('.form_container .slideContainer').animate({
        'margin-left': -(indicador * $('.form_container').width()) + 'px'
    });

}