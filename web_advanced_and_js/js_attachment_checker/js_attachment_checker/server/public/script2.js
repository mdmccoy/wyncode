// window.addEventListener('load', function() {
$(function() {
  // let buttons = document.getElementsByClassName("send");
  let $buttons = $('.send');
  // for (let i = 0; i < buttons.length; i++) {
  //   buttons[i].onclick = function() {
  $buttons.click(function() {
    // let emailBody = document.getElementById('body').value.toLowerCase();
    let emailBody = $('#body').val().toLowerCase();
    // console.log(emailBody);
    // let attachment = document.getElementsByName('attachment')[0].value.length;
    let $attachment = $('#attachment').val().length;
    // console.log($attachment);
    // console.log($attachment);
    // if ((emailBody.indexOf("attach") >= 0) && ($attachment === 0)) {
    if (emailBody.includes("attach") && $attachment === 0) {
      alert("You forgot your attachment!");
      // let errorBox = document.getElementById("error");
      let $errorBox = $('#error').css('display', 'block').text('You forgot your shit');
      // $errorBox.css('display', 'block').text('You forgot your shit');
      // $errorBox.text('You forgot your shit')
      // $errorBox.style.display = 'block';
      // $errorBox.innerText = "You forgot your attachment!";
    }
  });

  // }

});


// window.onload = () => {
//   console.log("loaded!");
//   button = document.getElementsByClassName("send");
//
// }