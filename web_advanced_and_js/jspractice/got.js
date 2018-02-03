// <li class="character">
//   <h1 class="name">Cersei</h1>
//   <h2 class="title">Queen Mother</h2>
//   <span class="house">House Lannister</span>
// </li>

$(function() {
  function addChar() {
    $('.characters').append(`<li class="character"><h1 class="name">The Hound</h1><h2 class="title">Lover of Chicken</h2><span class="house">House Clegane</span></li>`);
  }

  addChar();
  addChar();
  addChar();
});