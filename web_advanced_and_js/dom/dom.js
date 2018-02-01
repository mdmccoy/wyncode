// window.addEventListener("load", () => {
//   console.log("The doc has loaded.");
//   console.log(document.getElementsByTagName("input")[0])
// });


// window.addEventListener("change", function() {
//   console.log(document.getElementsByTagName("input")[0].value);
//   document.getElementsByTagName("input")[0].value = "NEW VALUE FROM ON LOAD";
// });
//
// function onChangeHandler(arg) {
//   console.log("Something changed.");
//   console.dir(arg);
//   console.log(arg.value);
//   arg.value = "Something else here."
// }
// console.dir(onChangeHandler);

// let textField = document.getElementById('our-text-input');
// console.log(textField);
// textField.value = "BULLSHIT";

window.addEventListener('load', () => {
  document.getElementById('our-text-input').value = "HORSESHIT"
  console.log("hello");
}); //chester