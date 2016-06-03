/*!
 * Start Bootstrap - Creative Bootstrap Theme (http://startbootstrap.com)
 * Code licensed under the Apache License v2.0.
 * For details, see http://www.apache.org/licenses/LICENSE-2.0.
 */

 $(document).ready( function () {

(function($) {
    "use strict"; // Start of use strict

        //secciones escondidas del formulario
        $("p#opcion").hide(true);
        $("p#mas").hide(true);
        // $("div#no_trabajador").hide(true);
        // $("div#datos_personales").hide(true);
        // $("div#experiencia").hide(true);
        // $("div#expectativas").hide(true);
        // $("div#contactof").hide(true);
        //secciones escondidas del formulario
        
        

    $('a').click(function() {
      this.blur();
    });


        

    // jQuery for page scrolling feature - requires jQuery Easing plugin
    $('a.page-scroll').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: ($($anchor.attr('href')).offset().top - 50)
        }, 1250, 'easeInOutExpo');
        event.preventDefault();
        
    });

   

    // Highlight the top nav as scrolling occurs
    $('body').scrollspy({
        target: '.navbar-fixed-top',
        offset: 51
    })

    // Closes the Responsive Menu on Menu Item Click
    $('.navbar-collapse ul li a').click(function() {
        $('.navbar-toggle:visible').click();
    });

    // Fit Text Plugin for Main Header
    $("h1").fitText(
        1.2, {
            minFontSize: '35px',
            maxFontSize: '65px'
        }
    );

    // Offset for Main Navigation
    $('#mainNav').affix({
        offset: {
            top: 100
        }
    })

    // Initialize WOW.js Scrolling Animations
    new WOW().init();

     
    //activador de dropdown//
   $(document).ready(function () {
        $('.dropdown-toggle').dropdown();
    });
    // Prallax//

//formulario validación celular//

var cellphone = $("#cellphone");
//Numerico//

$(document).ready(function(){
    $('input#cellphone').numeric(); 
});

//detectar cantidad numeros//
$(document).ready(function () {

    $('input#cellphone').bind('input propertychange',function(){

       //Si ha introducido nada en el campo
        if(cellphone.val().length == 10){
            $('img#cellphoneInfo').addClass("validacion");
            return true;
        }
        //si no ha introducido valor
        else {
            $('img#cellphoneInfo').removeClass("validacion");
            return false;
        } 

    });

});


//Formulario validacion Email//

var email= $("#user_email");

//detectar email//
$(document).ready(function () {

    $('input#user_email').bind('input propertychange',function(){
    var a = email.val();
    var filter = /^[a-zA-Z0-9]+[a-zA-Z0-9_.-]+[a-zA-Z0-9_-]+@[a-zA-Z0-9]+[a-zA-Z0-9.-]+[a-zA-Z0-9]+.[a-z]{2,4}$/;

       //Si es valido
        if(filter.test(a)){
            $('img#emailInfo').addClass("validacion");
            return true;
        }
        //si es invalido
        else {
             $('img#emailInfo').removeClass("validacion");
            return false;
        } 

    });

});
//mostrar select de ninguno //







})(jQuery); // End of use strict
});