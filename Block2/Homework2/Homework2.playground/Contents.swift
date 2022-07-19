import UIKit

// Task 1
class Sailor {
    var name: String
    
    func intruduceMyself(){
        print("Hi, my name is \(name)")
    }
    
    init(sailorName: String) {
        name = sailorName
    }
    
    convenience init() {
        self.init(sailorName: "Unknown")
    }
    
}

//let firstSailor = Sailor(sailorName: "Ruslan")
//firstSailor.intruduceMyself()
//let secondSailor = Sailor()
//secondSailor.intruduceMyself()

//Task 2

class Ship {
    var shipName: String
    var sailors: [Sailor]
    
    func introduceAll() {
        print("We are from <<our new super ship \(shipName)>>")
    }
    
    func introduceEveryone() {
        for i in sailors{
            print("Hi, my name is \(i.name) and I serve the boat that has name \(shipName)")
        }
    }
    
    init(name: String, comand: [Sailor]){
        shipName = name
        sailors = comand
    }
    
    convenience init() {
        self.init(name: "There is no Sailor",comand: [Sailor()]) //Не впевнений чи коректно так робити з comand
    }
}


//Task 3
let firstSailor = Sailor(sailorName: "Ruslan")
let secondSailor = Sailor(sailorName: "Pavlo")
let thirdSailor = Sailor(sailorName: "John")
let fourthSailor = Sailor(sailorName: "Andrew")
let fifthSailor = Sailor(sailorName: "Bogdan")

let newShip = Ship(name: "UnderWaterMashine", comand: [firstSailor, secondSailor, thirdSailor, fourthSailor, fifthSailor])

newShip.introduceAll()

//Task 4

class Titanic: Ship {
    override func introduceAll() {
        super.introduceAll()
        print("Somos de <<nuestra nueva súper nave \(shipName)>>") //Spanish
    }
}

class TitanicSailor: Sailor {
    override func intruduceMyself() {
        print("Anouther phrase in English <Hi, my name is \(name)>")
    }
}

let firstTitanicSailor = TitanicSailor(sailorName: "Ruslan")
let secondTitanicSailor = TitanicSailor(sailorName: "Jec Sparrow")
let thirdTitanicSailor = TitanicSailor(sailorName: "Hector Barbossa")
let fourthTitanicSailor = TitanicSailor(sailorName: "Will Turner")
let fifthTitanicSailor = TitanicSailor(sailorName: "Elizaberh Swann")

let newShip1 = Titanic(name: "Sunshine", comand: [firstTitanicSailor, secondTitanicSailor, thirdTitanicSailor, fourthTitanicSailor, fifthTitanicSailor])

//newShip1.introduceAll()
//newShip1.introduceEveryone() //------Uncommit


//Task 5

class Calculator {
    
    func add(num1: Int, num2: Int) -> Int {
        print(num1 + num2)
        return num1 + num2
    }
    
    func minus(num1: Int, num2: Int) -> Int {
        if num1 > num2 {
            print(num1 - num2)
            return num1 - num2
        } else {
            print(num2 - num1)
            return num2 - num1
        }
    }
    
    func mult(num1: Int, num2: Int) -> Int {
        print(num1 * num2)
        return num1 * num2
    }
    
    func div(num1: Int, num2: Int) -> Int {
        if (num1 / num2) == 0{
            print("First number smaller than second")
        }
        print(num1 / num2)
        return num1 / num2
    }
}

class CalculatorPro: Calculator{
    func powNumber(number: Double, power: Double) -> Double{
        print(pow(number, power))
        return pow(number, power)
    }
    
    func percentFromNuber(number: Int, percent: Int) -> Int{
        print((number * percent) / 100)
        return (number * percent) / 100
    }
    
}

class SuperProCalc: CalculatorPro {
    
    func deposit(money: Float, percent: Float, periodMonths: Int) -> Int{
        let result = Int(((money * (percent / 100.0))) / 12) * periodMonths
        print("Your money is \(money), percent is \(percent), period is \(periodMonths) months. You can make \(result) gryvnas")
        return result
    }
}

let myNumber = SuperProCalc()
//myNumber.deposit(money: 100_000, percent: 17, periodMonths: 6) //-----Uncommit


// Task 6

func batteryLife(batteryCharge: Int) {
    switch batteryCharge {
    case 100: print("Your device has full charge")
    case 70...99: print("You will need charger in 6-8 hour")
    case 40..<70: print("You have optimal battery ?probably you will need charger in 3-5 hours")
    case 20..<40: print("You need put your device on charge")
    case 10..<20: print("You have very low battery in need put your phone to the charger as fast as it can be possible")
    case 0..<10: print("Your phone die in 20 minutes immmediately put your phone to charge")
    default: print("I don't know how much battery has your phone :), try to write number in range from 0 to 100")
    }
}

//batteryLife(batteryCharge: 43) //----Uncommit
