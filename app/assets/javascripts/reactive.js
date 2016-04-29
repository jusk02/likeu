



      $(function() {
  		$('input#show_trabajador').change(function(event){
    		if( $(this).is(':checked') ) ;
    		event.preventDefault();
    		
    		$('div#trabajador').toggle(true);
    		$('div#no_trabajador').toggle(false);
  			
  		});
	});   

	$(function() {
	  		$('input#show_no_trabajador').change(function(event){
	    		if( $(this).is(':checked') ) ;
	    		event.preventDefault();
	    			    		
	    		$('div#trabajador').toggle(false);
	  			$('div#no_trabajador').toggle(true);
	  		});
		});   

	$(function() {
  		$('a#show_datos_personales').click(function(event){
    		
        if( $('div#datos_personales').toggle(false) ) ;
        event.preventDefault();
    
        $('div#experiencia').toggle(false);
        $('div#expectativas').toggle(false);
        $('div#contactof').toggle(false);
        $('div#datos_personales').toggle(true);

  		});
	});   

  $(function() {
      $('a#show_experiencia').click(function(event){
        
        if( $('div#experiencia').toggle(false) ) ;
        event.preventDefault();
        
        $('div#datos_personales').toggle(false);
        $('div#expectativas').toggle(false);
        $('div#contactof').toggle(false);
        $('div#experiencia').toggle(true);
      });
  });  

$(function() {
      $('a#show_expectativas').click(function(event){
        
        if( $('div#expectativas').toggle(false) ) ;
        event.preventDefault();
        
        $('div#datos_personales').toggle(false);
        $('div#experiencia').toggle(false);
        $('div#contactof').toggle(false);
        $('div#expectativas').toggle(true);

      });
  });  


$(function() {
      $('a#show_contacto').click(function(event){
        
        if( $('div#contactof').toggle(false) ) ;
        event.preventDefault();
        
        $('div#datos_personales').toggle(false);
        $('div#experiencia').toggle(false);
        $('div#expectativas').toggle(false);
        $('div#contactof').toggle(true);

      });
  });  
 