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
//= require bootstrap-sprockets
//= require jquery_ujs
//= require underscore
//= require gmaps/google
//= require cocoon
//= require_tree .

// Navbar color change when scrolling down
$(document).ready(function(){
  setInterval(function(){
    if ($(this).scrollTop() > 50) {
      $('#navbar').css('background-color', '#808786');
    } else {
      $('#navbar').css('background-color', 'transparent');
    }
  });

  $('.home-footer').css('top',$(document).height() + 'px')

})
