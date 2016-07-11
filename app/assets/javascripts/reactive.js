
$(document).ready(function() {
  

    $('.collapse').on('show.bs.collapse', function() {
        var id = $(this).attr('id');
        $('a[href="#' + id + '"]').closest('.panel-heading').addClass('active-faq');
        $('a[href="#' + id + '"] .panel-title span').html('<i class="glyphicon glyphicon-minus"></i>');
        $('div.open').removeClass('open');
    });

    $('.collapse').on('hide.bs.collapse', function() {
        var id = $(this).attr('id');
        $('a[href="#' + id + '"]').closest('.panel-heading').removeClass('active-faq');
        $('a[href="#' + id + '"] .panel-title span').html('<i class="glyphicon glyphicon-plus"></i>');

    });


    $(function() {

        $('a').click(function(event){
            var id = $(this).attr('id');
            console.log(id);
            $('div.open').collapse("toggle").removeClass('open');
            console.log('div.open' + id + '');

            $('div.' + id + '').collapse("toggle").addClass('open');
            console.log('div."' + id + '');

        });


    });

    $(function() {
        $('button.cerrar').click(function(event){
            var id = $(this).attr('id');
            console.log(id);
            $('div.open').collapse("toggle").removeClass('open');
            console.log('div.' + !id + '');
        });
    });

    $(document).keyup(function(e) {
     if (e.keyCode == 27) { 
        $('div.open').collapse("toggle").removeClass('open');
            console.log('div.' + !id + '');
        }
    });

    $('#myModal').on('hidden.bs.modal', function () {
        $('div.open').collapse("toggle").removeClass('open');   
    })
    
     $(function() {
        $('a.video-iniciar').click(function(event){
            
            var id = $(this).attr('id');
            
            $('input.guarda-video').removeClass('hidden');
            
            $('a.video-iniciar').addClass('hidden');
            
        });
    });

     $('a#startAll').click(function(event){
      console.log("clickity")

      $("#startButton").trigger('click');    
});

});



$(document).ready(function(){
   $("#ninguno").click(function(evento){
    
      if (
        $("#ninguno").is(":checked")){
        console.log('hola')
         $("p#opcion").show(true);
         $(".ocultodiv").slideUp();
      }
      else{
         $("p#opcion").hide(true);
         $('.seleccion').hide();
      }

   
    });


    $(".botonE").click(function(){

              $(".ocultodiv").slideDown();
              
              $("p#opcion").hide();

      });

$("#si").click(function(evento){
    
      if (
        $("#si").is(":checked")){
        console.log('hola')
        $("#no-laboral-text").slideDown();
        
      }
      

   
    });

$("#no").click(function(evento){
    
      if (
        $("#no").is(":checked")){
        console.log('hola')
        $("#no-laboral-text").slideUp();
        $("#text-no-contract").val("No he tenido");
        
      }
      

   
    });

$("#aumentar").click(function(evento){
     if ($("#aumentar").is(":checked")){
        console.log('hola')
        $("#achievement").val("Aumentar las ventas"); 
      }
    });
$("#herramientas").click(function(evento){
     if ($("#herramientas").is(":checked")){
        console.log('hola')
        $("#achievement").val("Aprender nuevas Herramientas"); 
      }
    });
$("#servicio").click(function(evento){
     if ($("#servicio").is(":checked")){
        console.log('hola')
        $("#achievement").val("Mejorar servicio"); 
      }
    });
$("#otro").click(function(evento){
     if ($("#otro").is(":checked")){
        console.log('hola')
        $("#achievement").val("otro"); 
      }
    });
$("#ninguno").click(function(evento){
     if ($("#ninguno").is(":checked")){
        var ninguno = $("#select-reto").val();
        $("#achievement").val(ninguno); 
      }
    });
$("#select-reto").click(function(evento){


        var ninguno = $("#select-reto").val();
        $("#achievement").val(ninguno); 
      
    });

$('input#hobby-time').bind('input propertychange',function(){

        var horas =   $('input#hobby-time').val();
         //Si ha introducido nada en el campo
      if(horas > 0){
          $('#validacion-hobby').slideDown();
          
      }
      //si no ha introducido valor
      else {
         $('#validacion-hobby').slideUp();
      } 

  });

$("#sala").click(function(evento){
     if ($("#sala").is(":checked")){      
        $("#lugar-trabajo").val("sala"); 
      }
    });
$("#universidad").click(function(evento){
     if ($("#universidad").is(":checked")){      
        $("#lugar-trabajo").val("universidad"); 
      }
    });
$("#habitacion").click(function(evento){
     if ($("#habitacion").is(":checked")){      
        $("#lugar-trabajo").val("habitacion"); 
      }
    });
$("#oficina").click(function(evento){
     if ($("#oficina").is(":checked")){      
        $("#lugar-trabajo").val("oficina"); 
      }
    });
$("#biblioteca").click(function(evento){
     if ($("#biblioteca").is(":checked")){      
        $("#lugar-trabajo").val("biblioteca"); 
      }
    });
$("#otros").click(function(evento){
     if ($("#otros").is(":checked")){      
        $("#lugar-trabajo").val(""); 
      }
    });


});

$(document).ready(function(){
   $("#ninguno2").click(function(){
    
        $("#ninguno2").is(":checked")
         $(".checkB").prop('checked', false);
        
    });
   
$(window).keydown(function(event){
    if(event.keyCode == 13) {
      event.preventDefault();
      return false;
    }
  });


});

$(document).ready(function(){
   $(".checkB").click(function(){
    
        $(".checkB").is(":checked")
         $("#ninguno2").prop('checked', false);
        
    });



});

$(document).ready(function(){
   $("#otros").click(function(evento){
    
      if (
        $("#otros").is(":checked")){
        console.log('hola')
         $("p#mas").show(true);
      }
      else{
         $("p#mas").hide(true);
      }
   });

   $(".lugar").click(function(){

              
              $("p#mas").hide();

      });



});






 