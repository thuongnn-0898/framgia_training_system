//= require jquery
//= require bootstrap
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require i18n
//= require i18n.js
//= require i18n/translations
//= require_tree .
$(document).ready(function(){
  setTimeout(function(){
    $("#flash_messages").slideUp();
  },2000);
});
