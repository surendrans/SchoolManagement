// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function() {
    $('#user_password,#user_old_password,#user_password_confirmation,#user_session_password').bind('cut copy paste', function (e) {  
        e.preventDefault();  
        alert('You cannot ' + e.type + ' text!');
    });  
    
    $('input[rel="name"]').alpha({allow:". "});
    $('input[rel="allow_alphanumeric"]').alphanumeric({allow:" "});
    $('input[rel="allow_alpha_only"]').alpha({allow:" "});
    $('input[rel="allow_numeric_only"]').numeric();
  	$('input[rel="phone_number"]').numeric({allow:"+-"});
    $('input[rel="address"]').alphanumeric({allow:"/#-.,\:@ "});
    $('input[rel="company"]').alpha({allow:"., "});
     
    $('textarea').elastic();
   
    $("#flash_notice").fadeIn('normal').fadeOut('fast').fadeIn('normal').fadeOut('fast').fadeIn('normal').fadeOut('fast').fadeIn('normal').fadeOut('fast').fadeIn('normal');
    $("#flash_error").fadeIn('normal').fadeOut('fast').fadeIn('normal').fadeOut('fast').fadeIn('normal').fadeOut('fast').fadeIn('normal').fadeOut('fast').fadeIn('normal');
    $(".flash").fadeIn('normal').fadeOut('fast').fadeIn('normal').fadeOut('fast').fadeIn('normal').fadeOut('fast').fadeIn('normal').fadeOut('fast').fadeIn('normal');
    
    $('a#close_flash').click(function(){
        $('#flash_notice').fadeOut("1000");
   	    $('#flash_error').hide('slow');
	})

    $('input[title!=""]').hint();

    $('textarea[title!=""]').hint();
    
    
});
