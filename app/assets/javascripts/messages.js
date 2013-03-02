$(function(){

	$('.userlist li').click(function() {
    $(this).siblings('li').removeClass('active');
    $(this).addClass('active');
    var test = $('.active a').attr('class')
    $('input[name="message[reciever]"]').val(test)
    $('#chat').empty();
    
});
});
