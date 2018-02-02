$(function() {
  let $newMessageButton = $('#new-message-button');
  $newMessageButton.click(function() {
    let $messageContent = $('#new-message-body').val();
    console.log($messageContent);
    let $convo = $('#conversation');
    // console.log($convo);
    $convo.append(`<li class='message'><a class='delete' href='#'>Delete</a><h3 class="author">Me</h3><p class='message-body'>${$messageContent}</p><span class='timestamp'>TIME</span></li>`)
  });



  // <li class="message">
  //   <a class='delete' href='#'>Delete</a>
  //   <h3 class="author">Me</h3>
  //   <p class="message-body">Hi! Let's be friends =D</p>
  //   <span class="timestamp">01:12</span>
  // </li>
});