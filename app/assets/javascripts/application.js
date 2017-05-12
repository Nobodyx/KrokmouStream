// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require jquery.ui.widget
//= require jquery.iframe-transport
//= require jquery.fileupload
//= require cloudinary/jquery.cloudinary
//= require attachinary
//= require_tree .
//= require bootstrap-sprockets

$(document).ready(function(){
    $('#Seasons').hide();
    
    $( "#info_season" ).hover(
      function() {
        $( this ).css("color","white");
      }, function() {
        $( this ).css("color","black");
      }
    );

    $('#info_season').click(function(){
        if(!$('#Seasons').is(":visible")){
            $('#Seasons').fadeIn('medium');
        }
        else{
            $('#Seasons').fadeOut('medium');
        }
    });
    
    function handler( event ) {
      var target = $( event.target );
      if ( target.is( "div" ) ) {
        target.children().toggle();
      }
    }
    $( "ul" ).click( handler ).find( "ul" ).hide();
});