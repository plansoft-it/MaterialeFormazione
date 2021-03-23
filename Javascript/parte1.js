

let var1;
var var2 = "valore";

const constant1 = "valore costante";
const constant2 = 212312;
const constant3 = 212312.62314;

var2 = "valore nuovo";

// lksadjflsdakj

/*
 * questo è un commento
 * questo è ancora un commento
 */

console.log(constant1.length);
console.log(constant2.length);

var var3 = var2.replace("al", "re");
console.log(var2.toUpperCase());
console.log(var3);

var var4 = "Ciao Ciao ADFASDFDAS";
console.log(var4.toLowerCase());

console.log(var1);

console.log(Math.round(constant3));

var random = 11;

if (random % 2 == 0) {
    console.log("La variabile random è pari: " + random);
} else {
    console.log("La variabile random è dispari: " + random);
}

if (null) {
    console.log("true");
} else {
    console.log("false");
}


var a = 2;

console.log(a == "2");
console.log(a === "2");

var x = 1;

if (x === 1) {
    x = 2;
    console.log(x);
}

console.log(x);

console.log("--------");

x=3;

switch (x) {
    case 1:
        console.log(1);
        break;
    case 2:
        console.log(2);
        break;
    default:
        console.log("default");
        break;
}

for(let i = 0; i < 10; i++) {
    console.log(i + 1);
}

let i = 0;

while (i < 10) {
    console.log(i + 1);
    i++;
}


var arr = ['el1', 'el2', 'el3', 'el2', 'el2', 'el2', 'el2'];

console.log(arr);

var arr2 = arr.filter((el) => {
    return el != 'el2';
});

console.log(arr2);




