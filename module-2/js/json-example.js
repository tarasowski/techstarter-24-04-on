// das ist die logik für den request
const pizza = {
    crust: "original",
    toppings: ["cheese", "peperonni", "garlic"],
    customer: {
        name: "Dimi",
        address: "Berlin",
        country: "Deutschland"
    }
}

// dies ist die umwandlung in ein json string damit es versendet werden kann
const jsonString = JSON.stringify(pizza) // << type conversion statt von object in str

console.log(jsonString)
console.log(typeof (jsonString))

// das ist die logik für die response
// dies ist die umwandung in ein objekt js damit wir damit arbeiten können
const jsonDecoded = JSON.parse(jsonString) // << type conversion von str to object

console.log("das sind Kundendaten", jsonDecoded.customer)
console.log("das sind die toppings, das bekommt der chief cook officer", jsonDecoded.toppings)

if (jsonDecoded.toppings.includes("Peperoni")) {
    return "Hey wir haben kein Peperoni mehr, bitte etwas anderes bestellen"
}

const serverReseponse = {
    statusCode: 400,
    body: {
        message: "Wir haben keine Peperonis mehr",
    }
}


console.log("das ist meine Antwort an den Client", serverReseponse)

