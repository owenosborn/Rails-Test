
$( document ).on('turbolinks:load', function() {
//$( document ).ready(function() {
    $('#upload-field').change(function() {
        num = document.getElementById("upload-field").files.length;
		$('#file-stat').html(' ' + num + ' Files Selected');
    });
});


