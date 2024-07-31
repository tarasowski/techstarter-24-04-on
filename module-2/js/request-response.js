// damit gegeben wir die bestellung ab
const requestPOST = {
    url: "https://www.lieferando.de/bestellung",
    method: "POST",
    headers: {
        "Useragent": "Iphone",
        "Content-Type": "application/json",
        "Accept": "application/json",
        "x-api-key": ""
    },
    body: {
        customer: "Dimi, Berlin, Deutschland...",
        bestellung: "Salami Pizza",
        anzahl: 5
    }
}

const responseUnAuth = {
    statusCode: 401, // nauthorized
    body: {
        message: "Hallo, bitte richtige Daten eingeben"
    }
}

const reponseSuccess = {
    //url ❌
    //method ❌
    statusCode: 200,  // es gibt 200-299, 300 - 399, 400 - 499, 500 - 599
    body: {
        message: "Hallo Dimi, die Bestellung ist angekomment"
    }
}

const responseError = {
    statusCode: 500, // zeigt an, dass der Server, der Ihre Website hostet, eine Anfrage nicht ausführen kann
    body: {
        message: "Hallo Dimi, unser server is aktuell down, nicht online"
    }
}

// damit ändern wir die bestellung
const requestPUT = {
    url: "https://www.lieferando.de/bestellung",
    method: "PUT",
    headers: {},
    body: JSON.stringify({
        customer: "Dimi, Berlin, Deutschland...",
        bestellung: "Pizza 4Q",
        anzahl: 5
    })
}

// hier können wir die Bestellung anschauen
const requestGET = {
    url: "https://www.lieferando.de/bestellung?id=1111",
    method: "GET",
    headers: {}
}
// das hier ist kein http protocol mehr!!!
// 👇 not valid
const requestGET2 = {
    url: "https://www.lieferando.de/bestellung?id=1111",
    action: "GET",
    head: {}
}

const requestDELETE = {
    url: "https://www.lieferando.de/bestellung?id=1111",
    method: "DELETE",
    headers: {}
}
