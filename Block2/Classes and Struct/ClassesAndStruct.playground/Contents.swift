import UIKit

class Animal {
    var name: String = ""
    var age: Int = 0
    
    init() {
        print("Animal - init")
    }
    
    func move() {
        print("I can Move!")
    }
    
//    func breath() {
//        print("I can breath!")
//    }
    
    deinit {
        print("Animal - deinit")
    }
}

func doSomething() {
    let animal1 = Animal()
}

doSomething()

//Наслідування Fish. Мітка final

class Fish: Animal {
    override func move() {
        super.move()
        print("I can swimm!")
    }
}

let fish1 = Fish()
fish1.move()

//Перепреділення Bird

class Bird: Animal {
    override func move() {
        super.move()
        print("I can fly!")
    }
}

let bird1 = Bird()
bird1.move()

//Struct

struct House {
    var nuberOfRooms: Int
    var height: Int
}

let house = House(nuberOfRooms: 2, height: 300)

//Practice

class Calculator {
    func add(_ a: Int, _ b: Int) -> Int{
        return a + b
    }

    func minus(_ a: Int, _ b: Int) -> Int{
        return a - b
    }

    func mult(_ a: Int, _ b: Int) -> Int {
        return a * b
    }

    func div(_ a: Int, _ b: Int) -> Int {
        return a / b
    }

    func modulo(_ a: Int, _ b: Int) -> Int {
        return a % b
    }
}

class SuperCalculator: Calculator {
    func poww(_ num: Int, _ powNum: Int) -> Int {
        return Int(pow(Double(num), Double(powNum)))
    }

    func percent(number: Int, percent: Int) -> Int {
        return ((number * percent) / 100)
    }

    override func add(_ a: Int, _ b: Int) -> Int {
        return super.add(a, b)
        print("I am super Calculator")
        return a + b
    }

    override func minus(_ a: Int, _ b: Int) -> Int {
        super.minus(a, b)
        print("I am super Calculator")
        return a - b
    }

    override func mult(_ a: Int, _ b: Int) -> Int {
        super.mult(a, b)
        print("I am Super Calculator")
        return a * b
    }

    override func div(_ a: Int, _ b: Int) -> Int {
        super.div(a, b)
        print("I am Super Calculator")
        return a / b
    }

    override func modulo(_ a: Int, _ b: Int) -> Int {
        super.modulo(a, b)
        print("I am Super Calculator")
        return a % b
    }
}

//class Calculator {
//    func add(_ a: Int, _ b: Int) {
//        print(a + b)
//    }
//
//    func minus(_ a: Int, _ b: Int) {
//        print(a - b)
//    }
//
//    func mult(_ a: Int, _ b: Int) {
//        print(a * b)
//    }
//
//    func div(_ a: Int, _ b: Int) {
//        print(a / b)
//    }
//
//    func modulo(_ a: Int, _ b: Int) {
//        print(a % b)
//    }
//}
//
//class SuperCalculator: Calculator {
//    func poww(_ num: Int, _ powNum: Int) {
//        print(Int(pow(Double(num), Double(powNum))))
//    }
//
//    func percent(number: Int, percent: Int) {
//        print((number * percent) / 100)
//    }
//
//    override func add(_ a: Int, _ b: Int) {
//        super.add(a, b)
//        print("I am super Calculator")
//    }
//
//    override func minus(_ a: Int, _ b: Int) {
//        super.minus(a, b)
//        print("I am super Calculator")
//    }
//
//    override func mult(_ a: Int, _ b: Int) {
//        super.mult(a, b)
//        print("I am Super Calculator")
//    }
//
//    override func div(_ a: Int, _ b: Int) {
//        super.div(a, b)
//        print("I am Super Calculator")
//    }
//
//    override func modulo(_ a: Int, _ b: Int) {
//        super.modulo(a, b)
//        print("I am Super Calculator")
//    }
//}

let myOperation = SuperCalculator()
//myOperation.add(4, 9)
print(myOperation.poww(5, 3))
print(myOperation.percent(number: 500, percent: 25))
 
