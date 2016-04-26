



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

