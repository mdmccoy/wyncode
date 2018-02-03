$(function() {
  let $newMessageButton = $('#new-message-button'),
    $messageBody = $('#new-message-body'),
    $chatBox = $('.chat'),
    $lonely = $('#lonely');

  let sendMessage = () => {
    let $convo = $('#conversation'),
      timestamp = `${new Date().getHours()}:${new Date().getMinutes()}`,
      greetings = ['Me', 'Myself', 'I'],
      $author = $convo.find('.author').last().text();
    switch ($author) {
      case 'Me':
        $author = 'Myself';
        break;
      case 'Myself':
        $author = "I";
        break;
      case 'I':
        $author = 'Me';
        break;
      default:
        $author = 'Me'
        break;
    }

    $convo.append(`<li class='message'><a class='delete' href='#'>Delete</a><h3 class="author">${$author}</h3><p class='message-body'>${$messageBody.val()}</p><span class='timestamp'>${timestamp}</span></li>`)
    $messageBody.val("");
  };

  $chatBox.on('click', '.delete', function(event) {
    $(this).closest('.message').remove();
  });

  $newMessageButton.click(sendMessage);

  $messageBody.keydown(function(event) {
    if (event.keyCode === 13) {
      sendMessage();
    }
  });

  $lonely.click(function() {
    // console.log("I was clicked.");
    $response = $.get('https://api.icndb.com/jokes/random');
    console.log($response.responseText);
  });
});