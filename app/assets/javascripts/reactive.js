
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


 