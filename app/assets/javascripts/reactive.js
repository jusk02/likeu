
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

   $("#ninguno-m").click(function(evento){
    
      if (
        $("#ninguno-m").is(":checked")){
        console.log('hola')
         $("p#opcion-m").show(true);
         $(".ocultodiv").slideUp();
      }
      else{
         $("p#opcion-m").hide(true);
         $('.seleccion').hide();
      }

   
    });

   var controlStart = 0;

    $("input").click(function(evento){
    
      $("#form-head").slideUp();
      $("#form-head-m").slideUp();
      
      if (controlStart == 0) {
        $('html, body').animate({scrollTop:0}, 'slow');
          controlStart=1;
      }
      

   
    });



    $(".botonE").click(function(){

              $(".ocultodiv").slideDown();
              
              $("p#opcion").hide();

      });


    $(".botonE").click(function(){

              $(".ocultodiv").slideDown();
              
              $("p#opcion-m").hide();

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


/*js para movil*/

$("#si-m").click(function(evento){
    
      if (
        $("#si-m").is(":checked")){
        console.log('hola')
        $("#no-laboral-text-m").slideDown();
        
      }
      

   
    });

$("#no-m").click(function(evento){
    
      if (
        $("#no").is(":checked")){
        console.log('hola')
        $("#no-laboral-text-m").slideUp();
        $("#text-no-contract-m").val("No he tenido");
        
      }
      

   
    });

$("#aumentar-m").click(function(evento){
     if ($("#aumentar-m").is(":checked")){
        console.log('hola')
        $("#achievement-m").val("Aumentar las ventas"); 
      }
    });
$("#herramientas-m").click(function(evento){
     if ($("#herramientas-m").is(":checked")){
        console.log('hola')
        $("#achievement-m").val("Aprender nuevas Herramientas"); 
      }
    });
$("#servicio-m").click(function(evento){
     if ($("#servicio-m").is(":checked")){
        console.log('hola')
        $("#achievement-m").val("Mejorar servicio"); 
      }
    });
$("#otro-m").click(function(evento){
     if ($("#otro-m").is(":checked")){
        console.log('hola')
        $("#achievement-m").val("otro"); 
      }
    });
$("#ninguno-m").click(function(evento){
     if ($("#ninguno-m").is(":checked")){
        var ninguno = $("#select-reto-m").val();
        $("#achievement-m").val(ninguno); 
      }
    });
$("#select-reto-m").click(function(evento){


        var ninguno = $("#select-reto-m").val();
        $("#achievement-m").val(ninguno); 
      
    });

$('input#hobby-time-m').bind('input propertychange',function(){

        var horas =   $('input#hobby-time-m').val();
         //Si ha introducido nada en el campo
      if(horas > 0){
          $('#validacion-hobby-m').slideDown();
          
      }
      //si no ha introducido valor
      else {
         $('#validacion-hobby-m').slideUp();
      } 

  });

$("#sala-m").click(function(evento){
     if ($("#sala-m").is(":checked")){      
        $("#lugar-trabajo-m").val("sala"); 
      }
    });
$("#universidad-m").click(function(evento){
     if ($("#universidad-m").is(":checked")){      
        $("#lugar-trabajo-m").val("universidad"); 
      }
    });
$("#habitacion-m").click(function(evento){
     if ($("#habitacion-m").is(":checked")){      
        $("#lugar-trabajo-m").val("habitacion"); 
      }
    });
$("#oficina-m").click(function(evento){
     if ($("#oficina-m").is(":checked")){      
        $("#lugar-trabajo-m").val("oficina"); 
      }
    });
$("#biblioteca-m").click(function(evento){
     if ($("#biblioteca-m").is(":checked")){      
        $("#lugar-trabajo-m").val("biblioteca"); 
      }
    });
$("#otros-m").click(function(evento){
     if ($("#otros-m").is(":checked")){      
        $("#lugar-trabajo-m").val(""); 
      }
    });

});

$(document).ready(function(){

  $(function() {
                jeoquery.defaultData.userName = 'jusk';
                $("#city").jeoCityAutoComplete();
                $("#city2").jeoCityAutoComplete();

            });
  
   $("#ninguno2").click(function(){
    
        $("#ninguno2").is(":checked")
         $(".checkB").prop('checked', false);
         $("#special-capture").val("Ninguno"); 
        
    });
   
$(window).keydown(function(event){
    if(event.keyCode == 13) {
      event.preventDefault();
      return false;
    }
  });



   $(".checkB").click(function(){
    
        $(".checkB").is(":checked")
         $("#ninguno2").prop('checked', false);
        
    });

   var center = "";
   var servicio = "";
   var ventas = "";
   var soporte = "";
   var catalogo = "";
   var teletrabajo = "";
   var expEspecial = "";

  $("#catalogo").click(function(){

       
        catalogo = $("#catalogo-f").val();
        if (expEspecial == "Ninguno") {
          expEspecial="";
         }
         if (catalogo == "Catalogo") {
          catalogo="";
          $("#catalogo-f").val(catalogo); 
         }else{
          catalogo="Catalogo";
          $("#catalogo-f").val(catalogo);
         }

         $("#special-capture").val(catalogo +" "+ teletrabajo +" "+ servicio +" "+ soporte +" "+ ventas +" "+ center);   
       
        
    });
  $("#teletrabajo").click(function(){
     
        
        teletrabajo = $("#teletrabajo-f").val();
        if (expEspecial == "Ninguno") {
          expEspecial="";
         }
         if (teletrabajo == "Teletrabajo") {
          teletrabajo="";
          $("#teletrabajo-f").val(teletrabajo); 
         }else{
          teletrabajo="Teletrabajo";
          $("#teletrabajo-f").val(teletrabajo);
         }

       $("#special-capture").val(catalogo +" "+ teletrabajo +" "+ servicio +" "+ soporte +" "+ ventas +" "+ center); 
        
    });
  $("#servicio2").click(function(){
     
        
        servicio = $("#servicio2-f").val();
        if (expEspecial == "Ninguno") {
          expEspecial="";
         }
         if (servicio == "Servicio al cliente") {
          servicio="";
          $("#servicio2-f").val(servicio); 
         }else{
          servicio="Servicio al cliente";
          $("#servicio2-f").val(servicio);
         }

        $("#special-capture").val(catalogo +" "+ teletrabajo +" "+ servicio +" "+ soporte +" "+ ventas +" "+ center);  
       
        
    });
  $("#soporte").click(function(){
     
       
        soporte = $("#soporte-f").val();
        if (expEspecial == "Ninguno") {
          expEspecial="";
         }
         if (soporte == "Soporte tecnico") {
          soporte="";
          $("#soporte-f").val(soporte); 
         }else{
          soporte="Soporte tecnico";
          $("#soporte-f").val(soporte);
         }

        $("#special-capture").val(catalogo +" "+ teletrabajo +" "+ servicio +" "+ soporte +" "+ ventas +" "+ center);  
        
    });
  $("#ventas").click(function(){
     
       
        ventas = $("#ventas-f").val();
        if (expEspecial == "Ninguno") {
          expEspecial="";
         }
         if (ventas == "Ventas") {
          ventas="";
          $("#ventas-f").val(ventas); 
         }else{
          ventas="Ventas";
          $("#ventas-f").val(ventas);
         }

        $("#special-capture").val(catalogo +" "+ teletrabajo +" "+ servicio +" "+ soporte +" "+ ventas +" "+ center); 
       
        
    });
  $("#center").click(function(){
     
       
        center = $("#center-f").val();
        if (expEspecial == "Ninguno") {
          expEspecial="";
         }
         if (center == "Call center") {
          center="";
          $("#center-f").val(center); 
         }else{
          center="Call center";
          $("#center-f").val(center);
         }

         $("#special-capture").val(catalogo +" "+ teletrabajo +" "+ servicio +" "+ soporte +" "+ ventas +" "+ center); 
       
        
    });






});

$(document).ready(function(){
   $("#ninguno2-m").click(function(){
    
        $("#ninguno2-m").is(":checked")
         $(".checkB-m").prop('checked', false);
         $("#special-capture-m").val("Ninguno"); 
        
    });
   
$(window).keydown(function(event){
    if(event.keyCode == 13) {
      event.preventDefault();
      return false;
    }
  });



   $(".checkB-m").click(function(){
       
        $(".checkB-m").is(":checked")
         $("#ninguno2-m").prop('checked', false);
         if (expEspecial== "Ninguno") {

         }
        
    });

    var center_m = "";
   var servicio_m = "";
   var ventas_m = "";
   var soporte_m = "";
   var catalogo_m = "";
   var teletrabajo_m = "";
   var expEspecial_m = "";

  $("#catalogo-m").click(function(){

       
        catalogo_m = $("#catalogo-f-m").val();
        if (expEspecial_m == "Ninguno") {
          expEspecial_m="";
         }
         if (catalogo_m == "Catalogo") {
          catalogo_m="";
          $("#catalogo-f-m").val(catalogo_m); 
         }else{
          catalogo_m="Catalogo";
          $("#catalogo-f-m").val(catalogo_m);
         }

         $("#special-capture-m").val(catalogo_m +" "+ teletrabajo_m +" "+ servicio_m +" "+ soporte_m +" "+ ventas_m +" "+ center_m);   
       
        
    });
  $("#teletrabajo-m").click(function(){
     
        
        teletrabajo_m = $("#teletrabajo-f-m").val();
        if (expEspecial_m == "Ninguno") {
          expEspecial_m="";
         }
         if (teletrabajo_m == "Teletrabajo") {
          teletrabajo_m="";
          $("#teletrabajo-f-m").val(teletrabajo_m); 
         }else{
          teletrabajo_m="Teletrabajo";
          $("#teletrabajo-f-m").val(teletrabajo_m);
         }

     $("#special-capture-m").val(catalogo_m +" "+ teletrabajo_m +" "+ servicio_m +" "+ soporte_m +" "+ ventas_m +" "+ center_m); 
        
    });
  $("#servicio2-m").click(function(){
     
        
        servicio_m = $("#servicio2-f-m").val();
        if (expEspecial_m == "Ninguno") {
          expEspecial_m="";
         }
         if (servicio_m == "Servicio al cliente") {
          servicio_m="";
          $("#servicio2-f-m").val(servicio_m); 
         }else{
          servicio_m="Servicio al cliente";
          $("#servicio2-f-m").val(servicio_m);
         }

        $("#special-capture-m").val(catalogo_m +" "+ teletrabajo_m +" "+ servicio_m +" "+ soporte_m +" "+ ventas_m +" "+ center_m); 
       
        
    });
  $("#soporte").click(function(){
     
       
        soporte_m = $("#soporte-f-m").val();
        if (expEspecial == "Ninguno") {
          expEspecial="";
         }
         if (soporte_m == "Soporte tecnico") {
          soporte_m="";
          $("#soporte-f-m").val(soporte_m); 
         }else{
          soporte_m="Soporte tecnico";
          $("#soporte-f-m").val(soporte_m);
         }

        $("#special-capture").val(catalogo_m +" "+ teletrabajo_m +" "+ servicio_m +" "+ soporte_m +" "+ ventas_m +" "+ center_m); 
        
    });
  $("#ventas").click(function(){
     
       
        ventas_m = $("#ventas-f-m").val();
        if (expEspecial_m == "Ninguno") {
          expEspecial_m="";
         }
         if (ventas_m == "Ventas") {
          ventas_m="";
          $("#ventas-f-m").val(ventas_m); 
         }else{
          ventas_m="Ventas";
          $("#ventas-f-m").val(ventas_m);
         }

        $("#special-capture-m").val(catalogo_m +" "+ teletrabajo_m +" "+ servicio_m +" "+ soporte_m +" "+ ventas_m +" "+ center_m); 
       
        
    });
  $("#center").click(function(){
     
       
        center_m = $("#center-f-m").val();
        if (expEspecial_m == "Ninguno") {
          expEspecial_m="";
         }
         if (center_m == "Call center") {
          center_m="";
          $("#center-f-m").val(center_m); 
         }else{
          center_m="Call center";
          $("#center-f-m").val(center_m);
         }

         $("#special-capture-m").val(catalogo_m +" "+ teletrabajo_m +" "+ servicio_m +" "+ soporte_m +" "+ ventas_m +" "+ center_m); 
       
        
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


$(document).ready(function(){
   $("#otros-m").click(function(evento){
    
      if (
        $("#otros-m").is(":checked")){
        console.log('hola')
         $("p#mas-m").show(true);
      }
      else{
         $("p#mas-m").hide(true);
      }
   });

   $(".lugar").click(function(){

              
              $("p#mas-m").hide();

      });



});






 