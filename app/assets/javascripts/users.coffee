# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# edit.html.erb

$ ->
  $('.useful-things-textarea').bind('keydown keyup keypress chnage', ->
    countMax = 500;
    thisValueLength = $(this).val().length;
    countDown = (countMax)-(thisValueLength);

    $('#count-useful-things').html(countDown);

    if thisValueLength < countMax
      $('#count-useful-things').html(countMax - thisValueLength).removeClass("text-danger")
      $('#count-useful-things').css({color:'#000'})
    else
      $('#count-useful-things').html(countMax - thisValueLength).addClass("text-danger")
      $('#count-useful-things').css({color:'#f00'})
  ).keyup()

$ ->
  $('.note-textarea').bind('keydown keyup keypress chnage', ->
    countMax = 500;
    thisValueLength = $(this).val().length;
    countDown = (countMax)-(thisValueLength);
    $('#count-note').html(countDown);

    if thisValueLength < countMax
      $('#count-note').html(countMax - thisValueLength).removeClass("text-danger")
      $('#count-note').css({color:'#000'})
    else
      $('#count-note').html(countMax - thisValueLength).addClass("text-danger")
      $('#count-note').css({color:'#f00'})
  ).keyup()
