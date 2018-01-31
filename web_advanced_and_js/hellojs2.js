// console.log( "Hello!" );
//
//
// // Function satement, named function
// function functionStatement() {
//   console.log( "Statement!" );
// }
// functionStatement();
//
// //function expression, anonomouys function
// const functionExpression = ( function() {
//   console.log( "Expression!" );
// } )
// functionExpression();
//
// // arrow fucntion
// const arrowFunc = () => {
//   console.log( "Arrow function!" );
// }
// arrowFunc();
//
// const arrowFunc2 = () => console.log( 'one line arrow' );
//
// arrowFunc2();
//
// //magic arguements!
//
// const myFunction = ( function() {
//   console.log( arguments );
// } )
//
// myFunction( 1, 2, 23, 3, 4, 5, 6, 7, 1, 1 )
//
// //return is important
//
// const superFunction = () => {
//   return 1;
// }
//
// console.log( superFunction() );
//
// //ruby is the future of JS
//
// // *rest pattern
//
// const restFunction = ( ...rest ) => {
//   console.log( rest );
// }
//
// restFunction( 1, 2, 3, 4, 5, 6 );
//
// //default arguements
//
// const defaultFunction = ( a, b = 3 ) => {
//   console.log( a, b );
// }
//
// defaultFunction( 1, 2 );
// defaultFunction( 1 );
//
// let num = 6;
//
// if((num % 3 === 0) || (num % 5 === 0))
//   console.log("I am divisible by 3 or 5");

// let stateCode = "FL"
//
// switch (stateCode) {
//   case "CA":
//     console.log("California");
//     break;
//   case "FL":
//     console.log("Florida");
//     break;
//   case "NY":
//     console.log("New York");
//     break;
//   default:
//     console.log("State code not found.");
// }

// let num = 5;
//
// while (num <= 10) {
//   console.log(num);
//   num++;
// }

// let students = [{
//     name: 'Ed'
//   },
//   {
//     name: 'Tim'
//   },
//   {
//     name: 'Third Student'
//   }
// ];
//
// for (var i = 0; i < students.length; i++) {
//   console.log(students[i].name);
// }
//
// let notice = {
//   text: "Hello world"
// };
//
// function myAlert(object) {
//   alert(object['text']);
// }
//
// myAlert(notice);

// const times = function(number, block) {
//   for (var i = 0; i < number; i++) {
//     block();
//     i++
//   }
// }
//
// function say(thing) {
//   console.log(thing);
// }
//
// let b = function() {
//   console.log("thing");
// }
//
// say(b);
//
// times(5, b);

/////////////////////
// sameness
///////////////////////

// console.log([...Array(10).keys()]);