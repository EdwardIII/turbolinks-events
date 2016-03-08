# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:request-start', ->
    if(!$('.spinner-wrap').length)
        $('body').prepend($('.spinner-tpl').html())


$(document).on 'turbolinks:request-end', ->
    $('body').remove('.spinner-wrap')

$(document).on 'turbolinks:before-cache', ->
    $('body').remove('.spinner-wrap')

$(document).on 'turbolinks:render',  ->
    $('body').remove('.spinner-wrap')

$(document).on 'turbolinks:load', ->
    $('body').remove('.spinner-wrap')
