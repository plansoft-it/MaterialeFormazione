//
function map(fun, arg) {
    let result = [];
    for(let i = 0; i != arg.length; i++) {
        result[i] = fun(arg[i]);
    }
    return result;
}

const cube = function(x) {
    return x * x * x;
}

const square = function(x) {
    return x * x;
}

let numbers = [0, 1, 2, 3, 4, 5];

let numbersCube = map(cube, numbers);
let numbersSquare = map(square, numbers);

console.log(numbersCube);
console.log(numbersSquare);

console.log(square(4));

console.log("------");

function A(x) {
    function B(y) {
        function C(z) {
            console.log(x + y + z);
        }
        C(3);
    }
    B(2);
}
A(1);

console.log("------");

let strings = ["stringaprima", "stringaseconda", "stringata"];

let stringsLength = map((el) => {return el.length}, strings); 

console.log(stringsLength);

//////

const oggetto = {
    chiave1: "Stringa",
    chiave2: 42,
    c3: "ciao"
}

console.log(oggetto.chiave2);
console.log(oggetto.c3);

console.log(Object.keys(oggetto));

//////

var o = {
    a: 7,
    get getA() {
        return this.a;
    },
    set setA(x) {
        this.a = x;
    },
    b: 19
}

console.log(o.a);
console.log(o.getA);
o.setA = 50;
console.log(o.a);

console.log(o.b);
delete o.b;
console.log(o.b);

//

var variabile = new Date();

console.log(typeof variabile);

//

console.log(3 in numbers);
console.log(10 in numbers);

let stringhe = ["stringaprima", "stringaseconda", "stringata"];
console.log(0 in stringhe);
console.log("stringaprima" in stringhe);
console.log('a' in stringhe);

