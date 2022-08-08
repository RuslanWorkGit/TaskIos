import UIKit

enum Season: String{
    case Winter = "Winter"
    case Spring = "Spring"
    case Summer
    case Autumn
}

let lito = Season.Summer
print(lito.rawValue)
let osin = Season.Autumn
print(osin.rawValue)
let vesna = Season.Spring
print(vesna.rawValue)

enum AppleCount: Int{
    case oneApple = 1
    case twoApple
    case threeApple
    case fourthApple
    case fiveApple
    case sixApple
    case sevenApple
}

let howManyApples = AppleCount.fourthApple
print(howManyApples.rawValue)

enum Months: String {
    case January
    case February
    case March
    case April
    case May
    case June
    case July
    case August
    case September
    case October
    case November
    case December
    
    func averageTemp() -> (nightTemp: Int, dayTemp: Int, season: Season){
        switch self {
        case .January: return (-15, -7, .Winter)
        case .February: return (-10, -2, .Winter)
        case .March: return (-1, 7, .Spring)
        case .April: return (8, 14, .Spring)
        case .May: return (12, 23, .Spring)
        case .June: return (18, 24, .Summer)
        case .July: return (20, 27, .Summer)
        case .August: return (22, 29, .Summer)
        case .September: return (16, 24, .Autumn)
        case .October: return (10, 17, .Autumn)
        case .November: return (5, 10, .Autumn)
        case .December: return (-8, -3, .Winter)
        }
    }
    
}

let july = Months.July
july.averageTemp()

let december = Months.December
december.averageTemp().nightTemp

let april = Months.April
april.rawValue
april.averageTemp().season.rawValue


enum PersonalInfo {
    case name(String)
    case age(Int)
    case weight(Double)
    case useGlasses(Bool)
    
    func printInfo() {
        switch self{
        case .age(let age): print("The age is \(age)")
        case .name(let name): print("The name is \(name)")
        case .weight(let weight): print("The weight is \(weight)")
        case .useGlasses(let glasses): print("Person \(glasses == true ? "use glasses" : "don't use glasses")")
        }
    }
}

func printInfo(someInfo: PersonalInfo) -> String {
    switch someInfo{
    case .age(let age): return "The age is \(age)"
    case .name(let name): return "The name is \(name)"
    case .weight(let weight): return "The weight is \(weight)"
    case .useGlasses(let glasses): return "Person \(glasses == true ? "use glasses" : "don't use glasses")"
    }
}

let myAge = PersonalInfo.age(21)
myAge.printInfo()
let some = printInfo(someInfo: myAge)
print(some)



