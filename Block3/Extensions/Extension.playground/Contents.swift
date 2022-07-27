import UIKit

//Пример расширения с Computed properties (вычесляимыми свойсвами)

extension Double{
//    var someValue = 10
    var km: Double { return self * 1000}
    var m: Double {return self}
    var cm: Double { self / 100}
}

let distance = 5.km + 354.m + 45.cm

//Расширения протокола

//protocol flyable {
//    func fly()
//}
//
//extension flyable {
//    func fly() { print("fly") }
//}
//
//struct Bird: flyable{
//
//}
//
//let myBird = Bird()
//myBird.fly()

//Розширення типів для відповідності протоколів

struct Airplane {
    //func
    //func
    //func
    //func
    //func
}

//extension Airplane: flyable{
//    func fly() { }
//}

//Practice

//--------------Task 1-------------------
extension Int {
    var square: Int { return self * self}
}

let myNumber = 10.square

extension String {
    var firstWord: String {return self.components(separatedBy: " ").first ?? "is empty"}
    var firstPart: String {return self.components(separatedBy: ",").first ?? self}
    var firsSenteces: String {return self.components(separatedBy: ".").first ?? self}
    func znak(myZnak: String) {
        let sentences = self.components(separatedBy: ".")
        for i in sentences {
            if i.contains(myZnak){
                print(i)
            }
        }
    }
}

let myText = "Hi my name is Ruslan, and I learn Swift. And I learn extension!. I am 20 years old!"
myText.firstWord
myText.firstPart
myText.firsSenteces
myText.znak(myZnak: "!")

//------------Task 2-------------

protocol Runable {
    func run()
}

protocol Flyable {
    func fly()
}

protocol Alive {
    func breath()
    func eat()
    func grow()
}

extension Alive{
    func breath(){
        print("Breath!")
    }
    func eat() {
        print("Eat!")
    }
}

struct Runner: Runable {
    func run() {
        print("Run!")
    }
}

struct Bird: Flyable {
    func fly() {
        print("Fly!")
    }
}

struct AlivePerson: Alive{
    func grow() {
        print("Grow up!")
    }
}

let firstHero = Runner()
let secontHero = Bird()
let thirdHerp = AlivePerson()
let fourthHero = Runner()
let fifthHero = Bird()
let sixthHero = AlivePerson()


