// wir haben ein auto
// mit einem Kilometerstand von 0
/*
The constructor() function is a special method within a class that  gets 
executed when you create a new object based on that class.  
It's used to initialize the object with initial values and set up any 
properties or behaviors that the object should have.
*/

class Tesla {
    constructor() {
        // das hier wird zuerst ausgeführt
        this.color = "grey"
        this.mileage = 0
        this.price = 30000
    }

    changeColor(newColor) {
        this.color = newColor
        this.price = 30000 + 2000

    }

    changeMileage(newKm) {
        this.mileage = newKm
    }
}

const car = new Tesla()

console.log("das ist mein Preis: ", car.price)
console.log("das ist meine Ursprungsfarbe: ", car.color)

// mit der methode ändern wir die farbe auf rot
car.changeColor("red")

console.log("das ist mein neuer preis nach der farbenänderung: ", car.price)
console.log("das ist meine neue Farbe: ", car.color)

car.changeColor("blue")

console.log("das ist meine neue Frabe nach der Auswahl: ", car.color)

console.log("Kmstand before: ", car.mileage)

car.changeMileage(2000)

console.log("Kmstand danach: ", car.mileage)



/*
class Car {
    constructor() {
        this.mileage = 0;
    }

    drive(km) {
        this.mileage += km;
    }
}

let car = new Car()
*/
