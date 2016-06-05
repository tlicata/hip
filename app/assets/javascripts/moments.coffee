# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(() ->

  startDate = new Date("1950-01-01").getTime();
  pixelsPerDecade = 800;
  millisecondsPerDecade = 1000 * 60 * 60 * 24 * 365 * 10;
  pixelsPerMillisecond = pixelsPerDecade / millisecondsPerDecade;

  moments = $(".moment")
  return if moments.length == 0

  momentHeight = moments.first().outerHeight();

  # Space moments vertically.
  previousBottom = 0
  moments.each((idx, moment) ->
    $moment = $(moment)
    date = new Date($moment.find(".date").html()).getTime();
    ideal = (date - startDate) * pixelsPerMillisecond
    space = if previousBottom > ideal then previousBottom else ideal
    $moment.css(top: space + "px")
    previousBottom = space + momentHeight
  );

  # Sprawl decades vertically.
  decades = $(".decade")
  decades.each((idx, decade) ->
    $decade = $(decade)
    year = new Date("#{$decade.text()}-01-01").getTime()
    $decade.css("top", ((year - startDate) * pixelsPerMillisecond) + "px")
  )

  # Stretch the timeline container to fit all the pieces.
  bottomMost = decades.last().get(0)
  $(".markers").css({
    height: bottomMost.getBoundingClientRect().bottom + "px"
  })
);
