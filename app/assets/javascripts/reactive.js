
$(document).ready(function() {


    $('.collapse').on('show.bs.collapse', function() {
        var id = $(this).attr('id');
        $('a[href="#' + id + '"]').closest('.panel-heading').addClass('active-faq');
        $('a[href="#' + id + '"] .panel-title span').html('<i class="glyphicon glyphicon-minus"></i>');

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



});

$(document).ready(function(){
   $("#ninguno2").click(function(){
    
        $("#ninguno2").is(":checked")
         $(".checkB").prop('checked', false);
        
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





 