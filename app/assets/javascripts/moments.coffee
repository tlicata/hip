# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(() ->

  startDate = new Date("1950-01-01").getTime();
  magic = 315360000;

  moments = $(".moment")
  momentHeight = moments.first().outerHeight();

  # Sprawl moments horizontally.
  moments.each((idx, moment) ->
    $moment = $(moment)
    date = new Date($moment.find(".date").html()).getTime();
    $moment.css({
      left: ((date - startDate) / magic) + "px"
      top: if idx % 2 != 0 then "#{momentHeight}px" else "0"
    });
  );

  # Sprawl decades horizontally.
  decades = $(".decade")
  decades.each((idx, decade) ->
    $decade = $(decade)
    year = new Date("#{$decade.text()}-01-01").getTime()
    $decade.css("left", ((year - startDate) / magic) + "px")
  )

  # Position center line between high and low moments and across all
  # the decades.
  rightmost = decades.last().get(0)
  $(".markers").css({
    top: momentHeight
    width: rightmost.getBoundingClientRect().right + "px"
  })

  # Make sure timeline div takes up enough space to cover its
  # absolutely positioned children.
  $("#timeline").css("height", (momentHeight * 2) + "px")

  # Show more info in #display element.
  display = (link) ->
    $.get("moments/#{link}", (html) ->
      $("#display").html(html)
    )

  displayHash = () ->
    display(window.location.hash.substr(1))

  window.addEventListener("hashchange", displayHash);

  displayHash() if window.location.hash
);
