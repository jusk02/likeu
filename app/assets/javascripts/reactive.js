



      $(function() {
  		$('input#show_trabajador').change(function(event){
    		if( $(this).is(':checked') ) ;
    		event.preventDefault();
    		console.log("hola")
    		$('div#trabajador').toggle(true);
    		$('div#no_trabajador').toggle(false);
  			console.log("hola2")
  		});
	});   

	$(function() {
	  		$('input#show_no_trabajador').change(function(event){
	    		if( $(this).is(':checked') ) ;
	    		event.preventDefault();
	    		console.log("hola")
	    		$('div#no_trabajador').toggle(true);
	    		$('div#trabajador').toggle(false);
	  			console.log("hola2")
	  		});
		});   

	$(function() {
  		$('a#show_datos_personales').click(function(event){
    		
        if( $('div#datos_personales').toggle(false) ) ;
        event.preventDefault();
    	
    		$('div#datos_personales').toggle(true);
        $('div#experiencia').toggle(false);
        $('div#expectativas').toggle(false);

  		});
	});   

  $(function() {
      $('a#show_experiencia').click(function(event){
        
        if( $('div#experiencia').toggle(false) ) ;
        event.preventDefault();
        $('div#experiencia').toggle(true);
        $('div#datos_personales').toggle(false);
        $('div#expectativas').toggle(false);

      });
  });  

$(function() {
      $('a#show_expectativas').click(function(event){
        
        if( $('div#expectativas').toggle(false) ) ;
        event.preventDefault();
        $('div#expectativas').toggle(true);
        $('div#datos_personales').toggle(false);
        $('div#experiencia').toggle(false);

      });
  });  
 