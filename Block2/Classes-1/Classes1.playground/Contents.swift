import UIKit

// Властивості та методи

class Animal {
    var name: String
    var age: Int
    
    init(n: String, a: Int) { //Основний ініціалізатор
        name = n
        age = a
    }
    
    convenience init() { // Додатковий ініціалізатор(Викликається коли не заповнюються данні)
        self.init(n: "", a: 0)
    }
    
    func eat() {
        print("I can eat")
    }
}

//Екземпляри класа і операціі над ними

let animal1 = Animal()
animal1.name = "Tom"
animal1.age = 10
//animal1.eat()

let animal2 = Animal()

let arrayOfAnimals = [animal1, animal2]
arrayOfAnimals.first?.eat()

//Ініціалізація класів

let animal3 = Animal(n: "name", a: 9)

//practice
class Phone{
    var number: Int
    var model: String
    var weight: Int
    
    init(n: Int, m: String, w: Int){
        number = n
        model = m
        weight = w
    }
    
    init(n: Int, m: String, ww: Int = 0){
        number = n
        model = m
        weight = ww
    }
    
    convenience init() {
        self.init(n: 0, m: "Unnown", w: 0)
    }
    
    func recieveCall(name: String, numb: Int) {
        print("The number is \(numb), this is \(name) ")
    }
    
    func getNumber() {
        print("number is \(number)")
    }
    
    func sendMessage(num: Int) {
        print("Message send to the number \(num)")
    }
}

let myPhone = Phone(n: 24583927, m: "Iphone XR", w: 245)
let friendPhone = Phone(n: 4424239, m: "Iphone 12", w: 233)
let unknownPersonPhone = Phone()
print("My phone number is \(myPhone.number), phone model \(myPhone.model), phone weight \(myPhone.weight) gramm")
print("My friends phone number is \(friendPhone.number), phone model \(friendPhone.model), phone weight \(friendPhone.weight) gramm")
print("unknown person phone number is \(unknownPersonPhone.number), phone model \(unknownPersonPhone.model), phone weight \(unknownPersonPhone.weight) gramm")

let allUsers = [myPhone, friendPhone, unknownPersonPhone]

for i in allUsers {
    i.getNumber()
    i.recieveCall(name: "Ruslan", numb: 09534905069393)
}

myPhone.sendMessage(num: 678258185)


