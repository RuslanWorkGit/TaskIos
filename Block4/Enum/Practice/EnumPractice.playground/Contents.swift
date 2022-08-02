import UIKit

//First
enum Months: Int, CaseIterable{
    case January = 1, February, March, April, May, June, July, August, September, October, November, December
}

enum ProgramLanguages{
    case Swift
    case Java
    case C
    case CPlusPlus
    case Python
    case CSharp
    
    func whatILearn() {
        switch self {
        case .Swift: print("I learn Swift")
        case .Java: print("I learn Java")
        case .C: print("I learn C")
        case .CPlusPlus: print("I learn C++")
        case .Python: print("I learn Python")
        case .CSharp: print("I learn C#")
        }
    }
}
 
enum Cars{
    case Ford(String)
    case Voltswagen(String)
    case BMW(Int)
    case Mercedes(Int)
    case Toyota(String)
    case Reno(String)
    case Opel(String)
    case Honda(String)
    
    func carType() -> String {
        switch self {
        case .Ford(let type):
            print("Ford type is \(type)")
            return "Ford type is \(type)"
        case .BMW(let type):
            print("BMW type is \(type)")
            return "BMW type is \(type)"
        case .Mercedes(let type):
            print("Mercedes type is \(type)")
            return "Mercedes type is \(type)"
        case .Voltswagen(let type):
            print("Voltswagen type is \(type)")
            return "Voltswagen type is \(type)"
        case .Toyota(let type):
            print("Toyota type is \(type)")
            return "Toyota type is \(type)"
        case .Reno(let type):
            print("Reno type is \(type)")
            return "Reno type is \(type)"
        case .Opel(let type):
            print("Opel type is \(type)")
            return "Opel type is \(type)"
        case .Honda(let type):
            print("Honda type is \(type)")
            return "Honda type is \(type)"
        }
    }
}

enum Go {
    case Left
    case Right
    case Straight
    case Back
}

//Second task exemplar
let monthsNow = Months.August
print(monthsNow)
print(monthsNow.rawValue)

print("--------------Winter months----------------")
let winterMonths = [Months.December, Months.January, Months.February]
func whatMonthsIsIt(value: [Months]) {
    for i in value {
        print("\(i) is number \(i.rawValue)")
    }
}
whatMonthsIsIt(value: winterMonths)

print("--------------Year months----------------")
let year = Months.allCases
whatMonthsIsIt(value: year)

//Third task exemplar
print("--------------What i Learn---------------")
let myLanguge = ProgramLanguages.Swift
myLanguge.whatILearn()

let myFriendLanguage = ProgramLanguages.Java
myFriendLanguage.whatILearn()

let oldLanguage = ProgramLanguages.C
oldLanguage.whatILearn()

//Fourth task exemplar
print("--------------What car type is---------------")
let myCar = Cars.Ford("Focus")
print(myCar)
myCar.carType()

let newCar = Cars.Voltswagen("Arteon")
newCar.carType()

let oldCar = Cars.Toyota("Supra")
oldCar.carType()

let goodCar = Cars.BMW(520)
goodCar.carType()
