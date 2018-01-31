console.log("hello1.js");

(function() {
  var myVar = "Hello1"

  const hello = function() {
    console.log(myVar);
  }
  window.hello = hello;
})();