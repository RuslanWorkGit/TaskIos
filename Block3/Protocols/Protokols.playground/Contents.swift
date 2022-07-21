import UIKit

//Example prototcol

protocol Movable {
    var name: String {get set}
    func move()
}

struct Fox: Movable{
    var name: String
    
    func move() {
        print("")
    }
}


struct Eagle: SuperUnit {
    func fly() {
        <#code#>
    }
    
    var name: String
    
    func move() {
        print("")
    }
}

//Декілька протоколів - Conforming Multiply Protocols

protocol Flyable {
    func fly()
}

//наслідування протоколів - Protocols Inharitance

protocol SuperUnit: Movable, Flyable {
}

//Polimorphism

func startDay(unit: Movable) {
    unit.move()
}

let fox = Fox(name: "Foxy")
let eagle = Eagle(name: "Eagly")

startDay(unit: fox)
startDay(unit: eagle)




