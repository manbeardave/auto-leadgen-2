# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# jQuery ->
#$(document).ready(function (){
#  $('.button-popover').popover();
#});
#jQuery ->
#  $(window).resize(function () {
#    $('.foot-traffic-caption').css('font-size', ($(window).width()*.0565)+'px');
#  });
jQuery ->
  # dynamically resize the "we drive foot traffic" caption so it always fits
  captionResize = ->
    $('.foot-traffic-caption').css('font-size', ($(window).width()*0.0565)+'px')
  # also dynamically set the position of the "we drive foot traffic" caption
  #
  captionPosition = ->
    #totalHeight = $('#carousel-drive-foot-traffic').height()
    #the carousel gets populated after documentready x.x
    #instead calculate from window width
    #aspect ratio: 320x96
    totalHeight = ($(window).width()*0.3)
    captionFontSize = ($(window).width()*0.0565)
    captionTotalSize = (captionFontSize * 2) + 20
    captionTopPadding = (totalHeight - captionTotalSize) / 2
    $('.caption-top').css('padding-top', captionTopPadding)

  verticallyCenter = (parentId, childId) ->
    parentHeight = $("#" + parentId).height()
    childHeight = $("#" + childId).height()
    topPadding  = (parentHeight - childHeight) / 2
    $("#" + childId).css('margin-top', topPadding)
    $("#" + childId).css('margin-bot', topPadding)

  sameHeight = (leftId, rightId) ->
    leftH = $('#' + leftId).innerHeight()
    rightH = $('#' + rightId).innerHeight()
    if leftH > rightH
      rightPadding = (leftH - rightH) / 2
      $('#' + rightId).css('margin-top', rightPadding)
      $('#' + rightId).css('margin-bot', rightPadding)
      $('#' + leftId).css('margin-top', 0)
      $('#' + rightId).css('margin-bot', 0)
    else
      leftPadding = (rightH - leftH) / 2
      $('#' + leftId).css('margin-top', leftPadding)
      $('#' + leftId).css('margin-bot', leftPadding)
      $('#' + rightId).css('margin-top', 0)
      $('#' + rightId).css('margin-bot', 0)

  testimonialCenter = (parentId, quoteId, paddingId) ->
    parentHeight = $("#" + parentId).height()
    quoteHeight  = $("#" + quoteId).height()
    topPadding   = (parentHeight - quoteHeight) / 3
    $("#" + paddingId).css('height', topPadding)

  centerAllTestimonials = ->
    #testimonialCenter("testimonial-1-row", "testimonial-1-quote", "testimonial-1-padding")
    #testimonialCenter("testimonial-2-row", "testimonial-2-quote", "testimonial-2-padding")
    1

  centerRows = ->
    sameHeight('geofencing-copy', 'geofencing-image')
    sameHeight('segments-text', 'segments-image')
    sameHeight('selfserve-text', 'selfserve-image')
    sameHeight('testimonial-1-quote', 'testimonial-1-image')
    sameHeight('testimonial-2-quote', 'testimonial-2-image')
    sameHeight('stateofthemarket-text', 'stateofthemarket-image')


    #verticallyCenter('geofencing-row', 'geofencing-text')
    #verticallyCenter('geofencing-row', 'geofencing-image')

  $(window).resize ->
    captionResize()
    captionPosition()
    centerAllTestimonials()
    centerRows()

  $(window).load ->
    captionResize()
    captionPosition()
    centerAllTestimonials()
    centerRows()

  captionResize()
  captionPosition()
  centerAllTestimonials()
  centerRows()
