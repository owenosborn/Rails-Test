
console.log("included stuff");

//$( document ).on('turbolinks:load', function() {
$( document ).ready(function() {
    console.log("turbo links load at " + window.location.href);
    
    $('#upload-field').change(function() {
        num = document.getElementById("upload-field").files.length;
		$('#file-stat').html(' ' + num + ' Files Selected');
    });

    if ( $( "#md-target" ).length ) {
        $( "#md-target" ).html(marked ( $("#markdown").html(), {sanitize:false}) );
    }
});


