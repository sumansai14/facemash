$(function () {
	$('.edit_profile input[type=submit]').hide();
	$('.edit_profile input[type=checkbox]').hide();
	$('.edit_profile input[type=file]').change(function(){
		$(".edit_profile").trigger("submit")});
		
});


