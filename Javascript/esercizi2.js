// 7
let persone = [
    {
        nome: "Gabriele",
        cognome: "Puliti"
    },
    {
        nome: "Lorenzo",
        cognome: "Scrivere"
    },
    {
        nome: "Gabriele",
        cognome: "Puliti"
    },
    {
        nome: "Leonardo",
        cognome: "Merlini"
    },
    {
        nome: "Lorenzo",
        cognome: "Scrivere"
    }
]

let personaLunga = 0;
persone.forEach((el,i) =>{
    if (el.cognome.length > persone[personaLunga].cognome.length) {
        personaLunga = i;
    }
})
console.log(persone[personaLunga]);

// 8
let personeNonDup = [];

for(let i=0; i<persone.length; i++){
    personeNonDup.push(persone[i]);
    for (let j=i+1; j<persone.length; j++){
        if (persone[i].nome == persone[j].nome && 
            persone[i].cognome == persone[j].cognome) {
            personeNonDup.pop();
            break;
        }
    }
}

console.log(personeNonDup);

// 9

for (let num = 1; num < 20; num ++) {
    if (num % 3 == 0 && num % 5 == 0){
        console.log("fizzbuzz")
    } else if (num % 3 ==0){
        console.log("fizz")
    } else if (num % 5 == 0) {
        console.log("buzz")
    } else {
        console.log(num)
    }
}
