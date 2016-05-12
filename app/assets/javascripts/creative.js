/*!
 * Start Bootstrap - Creative Bootstrap Theme (http://startbootstrap.com)
 * Code licensed under the Apache License v2.0.
 * For details, see http://www.apache.org/licenses/LICENSE-2.0.
 */

 $(document).ready( function () {

(function($) {
    "use strict"; // Start of use strict

        //secciones escondidas del formulario
        // $("div#trabajador").hide(true);
        // $("div#no_trabajador").hide(true);
        // $("div#datos_personales").hide(true);
        // $("div#experiencia").hide(true);
        // $("div#expectativas").hide(true);
        // $("div#contactof").hide(true);
        //secciones escondidas del formulario
        
    
        

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







})(jQuery); // End of use strict
});