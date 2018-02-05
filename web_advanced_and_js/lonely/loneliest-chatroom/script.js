$(function() {
  let $newMessageButton = $('#new-message-button'),
    $messageBody = $('#new-message-body'),
    $chatBox = $('.chat'),
    $lonely = $('#lonely');

  let sendMessage = (author, message) => {
      let $convo = $('#conversation'),
        timestamp = `${new Date().getHours()}:${new Date().getMinutes()}`;

      $convo.append(`<li class='message'><a class='delete' href='#'>Delete</a><h3 class="author">${author}</h3><p class='message-body'>${message}</p><span class='timestamp'>${timestamp}</span></li>`)
      $messageBody.val("");
    },
    setAuthor = () => {
      let $convo = $('#conversation'),
        author = $convo.find('.author').last().text();
      switch (author) {
        case 'Me':
          author = 'Myself';
          break;
        case 'Myself':
          author = "I";
          break;
        default:
          author = 'Me';
          break;
      }
      return author;
    };

  $chatBox.on('click', '.delete', function(event) {
    $(this).closest('.message').remove();
  });

  $newMessageButton.click(function() {
    sendMessage(setAuthor(), $messageBody.val());
  });

  $messageBody.keydown(function(event) {
    //send message on enter/return key
    if (event.keyCode === 13) {
      sendMessage(setAuthor(), $messageBody.val());
    }
  });

  $lonely.click(function() {
    $.get('https://api.icndb.com/jokes/random', function(res, req) {
      sendMessage("Internet", res.value.joke);
    });
  });
});