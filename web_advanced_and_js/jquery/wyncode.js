$(function() {
  // $('body').css('background-color', 'black');
  // console.log($('span'));
  let $input = $('input');
  // console.log(input);
  $input.change(function(event) {
    // console.log(this.value); //input from the event, not the $input

    $input.addClass('red');
  });

  let $ps = $('p');
  console.log($ps);
  $ps.mouseenter(function() {
    console.log("Mouse1");
  }).mouseleave(function() {
    console.log("mouse2");
  });

  // $ps.hover(
  //   function() {
  //     ps.
  //   },
  //   function() {}
  // );

  let $link = $('a');
  // console.log($link);
  $link.click(function(event) {
    // console.log("I linked!");
    event.preventDefault();
    let $clickedLink = $(this);
    // console.log($clickedLink);
    // $clickedLink.hide('slow');
    // $clickedLink.fadeOut('slow');
    $clickedLink.slideUp(2000, function() {
      $clickedLink.replaceWith("OMG!");;

    });
  });
});