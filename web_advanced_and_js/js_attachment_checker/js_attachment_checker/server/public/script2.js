$(function() {
  let $buttons = $('.send');
  $buttons.click(function() {
    let $emailBody = $('#body').val().toLowerCase(),
      $attachment = $('#attachment').val().length,
      msg = "You forgot you shit!";
    if ($emailBody.includes("attach") && $attachment === 0) {
      alert(msg);
      let $errorBox = $('#error').fadeIn(2000).text(msg);
    }
  });

  // }

});


// window.onload = () => {
//   console.log("loaded!");
//   button = document.getElementsByClassName("send");
//
// }