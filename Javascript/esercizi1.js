
// es1
console.log(Math.round(Math.random()*10))

// es2
const elements = [1, 2, 3, -1, 9, 6, 7, 8]

elements.forEach((el) => {
    if (el % 2 === 0) console.log(el + " è pari");
    if (el % 2 !== 0) console.log(el + " è dispari");
});

// es3 

let min = elements[0];
let max = elements[0];

elements.forEach((el) => {
    if (min > el) min = el;
    if (max < el) max = el;
});

console.log("Il massimo è: " + max);
console.log("Il minimo è: " + min);

// es4

const stringa = "Ciao sono una stringa!";

console.log(stringa);
console.log(stringa.split('').reverse().join(''));

let reverseString = '';
for(let i = stringa.length - 1; i >= 0; i--) {
    reverseString += stringa[i];
}

console.log(reverseString);

// es5
const dupVect = [9, 1, 2, 2, 3, 2, 1, 3, 9, 7];
let noDupVect = [];

noDupVect = dupVect.filter((el, i) => {
    return dupVect.indexOf(el) === i;
});

console.log("-------")
console.log(dupVect);
console.log(noDupVect);

// es6
let numeroDuplicati = [];

noDupVect.forEach((el, i) => {
    numeroDuplicati[i] = 0;
    for (let j = 0; j <= dupVect.length; j++) {
        if(dupVect[j] === el) {
            numeroDuplicati[i]++;
        }
    }
});

console.log("-------")
console.log(dupVect);
console.log(noDupVect);
console.log(numeroDuplicati);


