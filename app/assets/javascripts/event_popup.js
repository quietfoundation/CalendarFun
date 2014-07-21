$(document).ready(function(){
  $(".ec-event").on("click", function(e) {
    e.preventDefault();
    xClickPosition = e.pageX;
    yClickPosition = e.pageY;

    $this = $(this);
    var event_id = $this.attr('data-event-id');
    var url      = "/events/" + event_id;
    var offset   = $this.offset();
    $.ajax({
      url: url,
      success: function(response) {
        $("body").append(response);
        $(".event-popup").css({top: yClickPosition, left: xClickPosition, position:'absolute'});
      }
    });
  });
});