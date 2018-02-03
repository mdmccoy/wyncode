$(function() {
  let $newMessageButton = $('#new-message-button'),
    $messageBody = $('#new-message-body'),
    sendMessage = () => {
      let $convo = $('#conversation');
      $convo.append(`<li class='message'><a class='delete' href='#'>Delete</a><h3 class="author">Me</h3><p class='message-body'>${$messageBody.val()}</p><span class='timestamp'>TIME</span></li>`)
      $messageBody.val("");
      $deleteButton = $('a.delete');
    },
    $deleteButton = $('a.delete');
  //this all the delete buttons

  $deleteButton.click(function() {
    console.log("I was clicked.");
  });

  $newMessageButton.click(sendMessage);

  $messageBody.keydown(function(event) {
    if (event.keyCode === 13) {
      sendMessage();
    }
  });

  // let $messageBody = $('#new-message-body'),
  //   $convo = $('#conversation');
  // $convo.append(`<li class='message'><a class='delete' href='#'>Delete</a><h3 class="author">Me</h3><p class='message-body'>${$messageBody.val()}</p><span class='timestamp'>TIME</span></li>`)
  // $messageBody.val("");
  // });



  // <li class="message">
  //   <a class='delete' href='#'>Delete</a>
  //   <h3 class="author">Me</h3>
  //   <p class="message-body">Hi! Let's be friends =D</p>
  //   <span class="timestamp">01:12</span>
  // </li>
});