// var_name = 10 <-- python snake_case

//var varName = 10 <-- js camelCase


// var, let, const

//const myNameUndefined = undefined

// primitive -> string, numbers, booleans
// complex -> array, objects

// not mutable data type
// const myName = "dimi"
// 👉 das geht nicht -> myName = "Marcus"

//let myName = "dimi"
// 👉 das hier geht -> myName = "Marcus"

// 👇 primitive data types 
const myName = "Dimi"
const lastName = "Tarasowski"
//console.log(myName + " " + lastName)
const a = 10
const b = 20
//console.log(a + b)

// 👇 complex data types
const myArray = [1, 2, 3, 4, 5]

console.log(myArray[0])

const myObject = {
    name: "Dimi",
    age: 40
}

console.log(myObject.name)
console.log(myObject["name"])

//console.log(myArray[0])

// code block is in curly braces {} in js
// in python code block wird mit der Einrückung definiert
/*

def add(a, b):
    return a + b

function add(a, b) {
    return a + b
}
*/


/*
for (let i = 0; i < myArray.length; i++) {
    console.log("das ist mein i (index): " + i)
    console.log(myArray[i])
}
 */

let names = ["Dimi", "Marcus", "Christian", "Ilona"]



for (let i = 0; i < names.length; i++) {
    console.log(i) // beim ersten hat es den wert 0
    console.log(names[i])
}

const user = {
    name: "Dimi User",
    age: 40,
    isCool: true
}

console.log(user.name)
console.log(user.age)
console.log(user.isCool)

console.log(user["name"])
console.log(user["age"])
console.log(user["isCool"])

const userName = "Username"

console.log(
    // user_name.lower()
    // user_name.upper()
    userName.toLowerCase(),
    userName.toUpperCase()
)


// 👇 functions in js

function sayHello() {
    console.log("from my sayHello function")
}

sayHello()


// snake_case
/*
function say_hello_to_user(name) {
    console.log("Hello " + name)
}
*/

function sayHelloToUser(name  /* <---- parameter name */) {
    console.log("Hello " + name)
    console.log("Hello" + name + "!!!!")
}

sayHelloToUser("Ilona" /* <-- ist ein argument */)


// aufgabe
// build a calculator with the following functions: add, subtract, multiply, divide

function myCalc(num1, op, num2) {
    if (op == "+") {
        console.log(num1 + num2)
    } else if (op == "-") {
        console.log(num1 - num2)
    } else if (op == "/") {
        console.log(num1 / num2)
    } else if (op == "*") {
        console.log(num1 * num2)
    }

}

myCalc(5, "+", 5)

function add(x, y) {
    console.log("Das Ergebnis der Addiction lautet: " + (x + y));
}

add(3, 3)

/*
// lambda functions

const add = (x, y) => 
    console.log("Das Ergebnis der Addition lautet: " + (x + y));

const sub = (x, y) => 
    console.log("Das Ergebnis der Subtraktion lautet: " + (x - y));

const multi = (x, y) => 
    console.log("Das Ergebnis der Multiplikation lautet: " + (x * y));

const div = (x, y) => 
    console.log("Das Ergebnis der Division lautet: " + (x / y));
*/

function sub(x, y) {
    console.log("Das Ergebnis der Subtraktion lautet: " + (x - y));
}

sub(2, 1)

function multi(x, y) {
    console.log("Das Ergebnis der Multiplikation lautet: " + (x * y));
}

multi(3, 3)

function div(x, y) {
    console.log("Das Ergebnis der Division lautet: " + (x / y));
}

div(5, 2)

// Vergleichoperatoren
// 1 == 1 <--- findet eine datentyp conversion statt
// 1 === 1

console.log(
    1 == "1", // <------ eigentlich sollte es false sein, aber es ist true weil js hier eine typconversion macht (implizit)
    1 === "1", // <--- wird es keine typconversion geben, somit ist das was für die meisten Zwecke genutzt werden sollte!!!
    1 !== 1, // <--- was bekomme hier? true or false?
    1 !== "1"
)


// .map, .filter, .reduce, .some ...
// das kann man an arrays anwenden

const techstarterClass = ["Alexander", "Kaho", "Marcus", "Jihen", "Tamia"]

/*
// imperative 👇
for (let i = 0; i < techstarterClass.length; i++) {
    console.log(techstarterClass[i])
}
    */

function checkName(name) {
    console.log("Das ist mein name: " + name)
}

// 👇 declarative
techstarterClass.map(checkName)

/* aufgabe

Gegeben ist ein Array von Zahlen. 
Deine Aufgabe ist es, ein neues Array zu erstellen, das die Quadrate dieser Zahlen enthält. 
Zum Beispiel, wenn das Eingangs-Array [1, 2, 3, 4] ist, sollte das resultierende Array [1, 4, 9, 16] sein.

1**2
2**2
3**2
4**2

zwei Lösungswege: for loop und .map
*/



/*
const zahlen = [0, 1, 2, 3, 4, 5]

function filterBigger3(zahl) {
    if (zahl < 3) {
        return true
    } else {
        return false
    }
}

console.log(
    zahlen.filter(filterBigger3)
)
*/


const firstName = "Dimi"
const newName = firstName.concat(" Tarasowski")
// "Dimi" + " Tarasowski"

console.log(newName)

const namenListe = ["Marcus", "Sima", "Jihen"]

console.log(
    firstName.includes("i"),
    "\n",
    firstName.includes("T"),
    "\n",
    namenListe.includes("Dimi"),
    "\n",
    namenListe.includes("Marcus"),
    "\n",
    " Das ist mein String ".trim().length, // wenn mehrere . aufeinander folgen das ist chaining
    " Das ist mein String ".length,
    "\n",
    namenListe.length,
    "\n",
    namenListe.indexOf("Sima"),
    namenListe.indexOf("Marius")
)

function checkForName(name, namesArray) {
    if (namesArray.indexOf(name) === -1) {
        return "Name nicht gefunden"
    } else {
        return "Yay 🎉. Gefunden"
    }
}

const result = checkForName("Marcus", ["Marcus", "Ilona", "Jihen", "Timo"])

console.log({ result })


function merge(nameList) {
    return nameList.join("|") // daraus entsteht ein string mit | als delimeter
}

const output = merge(["Marcus", "Ilona", "Jihen", "Marius"])

console.log(output)

const numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

console.log(
    numbers[0],
    numbers.reverse()[0]
)



