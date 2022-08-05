import UIKit

/* Создаем игру.
 Птицы должны иметь свойства: name, canFly, flySpeed.
 И одну функцию: distance(time: Float)
 ● Добавляем птиц: черный/белый лебедь и пингвин
 ● Реализуем все через классы / через протоколы, структуры, энамы
 */

// MARK: - OOP

class Bird{
    var name: String = ""
    var canFly: Bool = false
    var flySpeed: Double = 0
    
    func distance(time: Double) -> Double {
        return time * flySpeed
    }
}

class WhiteSwanClass: Bird {
    
    override func distance(time: Double) -> Double {
        super.distance(time: time)
    }
    
}

class BlackSwanClass: Bird {
    
}

class PenguineClass: Bird {
    
    override func distance(time: Double) -> Double {
        super.distance(time: time)
        return 0
    }
    
}

let myPenguine = PenguineClass()
myPenguine

// MARK: - POP

protocol BirdProtocol {
    var name: String { get } //{ get set } - означає що ми можемо і задати значення і отримати його
    var canFly: Bool { get }
}

protocol Flyable {
    var flySpeed: Double { get}
}

extension BirdProtocol {
    var canFly: Bool {
        return false
    }
}

extension BirdProtocol where Self: Flyable {
    var canFly: Bool {
        return true
    }
}

extension Flyable {
    func distance(time: Double) -> Double {
        return time * flySpeed
    }
}

struct Penguine: BirdProtocol {
    var canFly: Bool
    
    var name: String

}

let myPenguine2 = Penguine(canFly: false, name: "Penguine2")

enum Swan:String, BirdProtocol, Flyable {

    case black
    case white
    var name: String{
        return self.rawValue
    }
    var flySpeed: Double{
        switch self {
        case .white: return 100
        case .black: return 150
        }
    }
    
}

let mySwan = Swan.white
mySwan.flySpeed
mySwan.distance(time: 60)
mySwan.canFly
mySwan.name
mySwan.rawValue
