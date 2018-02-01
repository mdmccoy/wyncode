// do not edit
var arithmetic = {},
  add,
  sub,
  mul,
  div,
  funcs;
// do not edit

// add code here

var add = (a, b) => {
  return (a + b);
}

function sub(a, b) {
  return (a - b);
}

function mul(a, b) {
  return (a * b);
}

function div(a, b) {
  return (a / b);
}

arithmetic.add = add;
arithmetic.sub = sub;
arithmetic.mul = mul;
arithmetic.div = div;

funcs = [add, sub, mul, div];



//DO NOT EDIT BELOW THIS LINE
//////////////////////////////

var testArgs = [
    [NaN, NaN],
    [undefined, undefined],
    [null, null],
    [0, 0],
    [0, 1],
    [-1, 0],
    [2, 5],
  ],
  expectedvalues = [
    [NaN, NaN, 0, 0, 1, -1, 7],
    [NaN, NaN, 0, 0, -1, -1, -3],
    [NaN, NaN, 0, 0, 0, -0, 10],
    [NaN, NaN, NaN, NaN, 0, -Infinity, 0.4],
  ],
  error = {},
  props = ['add', 'sub', 'mul', 'div', ],
  arith_check = props.every(prop => {
    return arithmetic.hasOwnProperty(prop)
  });

if (arith_check === false) {
  var message = `arithmetic only has the following properties: ${Object.keys(arithmetic)}\n expecting ${props}`;
  console.log(message);
  throw {
    message
  };
}
try {
  funcs.slice(0).map((f, i) => {
    var values = testArgs.map((args, j) => {
      var value = f(...args),
        expected = expectedvalues[i][j],
        compare = value === expected || [expected, value].map(Number.isNaN).every(i => Boolean(i))
      data = {
        f,
        args,
        value,
        expected,
        compare,

      };
      console.log(data);
      if (compare === false) {
        error = {
          f,
          message: `${expected} does not equal ${Object.keys(arithmetic)}`
        }
        console.log(error);
        throw error;
      }
    })
  });
} catch (e) {
  if (e.name == 'TypeError') {
    // specific error
    console.log(`${e.name}: ${e.message}`);
  } else {
    throw e; // let others bubble up
  }
}