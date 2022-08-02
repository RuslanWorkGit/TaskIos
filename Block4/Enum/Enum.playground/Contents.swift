import UIKit

//Example of enum

enum Degree {
    case bachelor
    case master
}

struct Person {
    var name: String
    var age: Int
    var degree : Degree
}

var Alice = Person(name: "Alice", age: 21, degree: .bachelor)
print(Alice.degree)
Alice.degree = .master
print(Alice.degree)

//Enum in switch

switch Alice.degree {
case .master: print("master")
case .bachelor: print("bachelor")
}

//CaseIterable  + AllCases, functions in enum

enum DayOfWeek: CaseIterable {
    
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Satuday
    case Sunday
    
    func dayType() -> String {
        switch self{
        case .Monday, .Tuesday, .Wednesday, .Thursday, .Friday: return "Week day"
        case .Satuday, .Sunday: return "Weekends"
        }
    }
}

let dayOfWeek: DayOfWeek = .Monday
let arrayOfWalues = DayOfWeek.allCases
let dayType = dayOfWeek.dayType()

//Raw values

enum SizeOfPizza: Int {
    case small = 12
    case medium = 18
    case large = 25
    case extraLarge = 50
}

let size = SizeOfPizza.small
print(size)
print(size.rawValue)

let newSize = SizeOfPizza(rawValue: 50)
print(newSize!)
print(newSize?.rawValue)

//Associated values

enum Distance {
    case km(Int)
    case mile(Float)
}

let dictanceToMySchool = Distance.km(18)
let distanceToMyKinderGaren = Distance.mile(1)

func getMessage(distance: Distance) -> String{
    switch distance {
    case .km(let distKm): return "Distance in km is \(distKm)"
    case .mile(let distMile): return "Distance in miles is \(distMile)"
    }
}

let myValue = getMessage(distance: dictanceToMySchool)
print(myValue)
let myValue1 = getMessage(distance: distanceToMyKinderGaren)
print(myValue1)

