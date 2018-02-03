$(function() {
  let $newMessageButton = $('#new-message-button'),
    $messageBody = $('#new-message-body'),
    $chatBox = $('.chat'),
    $lonely = $('#lonely');

  let sendMessage = (author, message) => {
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

    $convo.append(`<li class='message'><a class='delete' href='#'>Delete</a><h3 class="author">${$author}</h3><p class='message-body'>${message}</p><span class='timestamp'>${timestamp}</span></li>`)
    $messageBody.val("");
  };

  $chatBox.on('click', '.delete', function(event) {
    $(this).closest('.message').remove();
  });

  $newMessageButton.click(function() {
    sendMessage("test", $messageBody.val());

  });

  $messageBody.keydown(function(event) {
    if (event.keyCode === 13) {
      sendMessage("test", $messageBody.val());
    }
  });

  $lonely.click(function() {
    // JSON.parse($response.responseText).value.joke
    $.get('https://api.icndb.com/jokes/random', function(res, req) {
      let $convo = $('#conversation'),
        timestamp = `${new Date().getHours()}:${new Date().getMinutes()}`;
      $convo.append(`<li class='message'><a class='delete' href='#'>Delete</a><h3 class="author">Internet</h3><p class='message-body'>${res.value.joke}</p><span class='timestamp'>${timestamp}</span></li>`);

    });


  });
});