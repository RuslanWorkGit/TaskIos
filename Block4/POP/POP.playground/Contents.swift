import UIKit

/*
 Птица должна иметь свойства: name, canFly, flySpeed
 
 птица должна иметь функцию: distance(second: Float) -> Float,
 которая возвращает дистанцию, которую птица может пролететь за N секунд
 
 Добавляем новых персонажей: чорный/белый лебедь и пингвин
 */

//OOP

class BirdClass {
    var name: String = ""
    var canFly: Bool = true
    var flySpeed: Float = 0
    
    func distance(seconds: Float) -> Float {
        seconds * flySpeed
    }
}

class SwanWhiteClass: BirdClass {
    
}

class SwanBlackClass: BirdClass {
    
}

class Penguine: BirdClass {
    
}

//POP

protocol Bird {
    var name: String {get}
    var canFly: Bool {get}
}

protocol FlyingBird {
    var flySpeed: Float {get}
}

extension Bird {
    var canFly: Bool {
        return false
    }
}

extension Bird where Self: FlyingBird {
    var canFly: Bool{
        return true
    }
}

extension FlyingBird {
    func distance(seconds: Float) -> Float {
        seconds * flySpeed
    }
}

struct PenguineStruct: Bird {
    var name: String
}

let myPenguine = PenguineStruct(name: "MyPenguine")
myPenguine.canFly

enum Swan: String, Bird,  FlyingBird{
    case white
    case black
    
    var flySpeed: Float {
        switch self {
        case .white: return 100
        case .black: return 150
            
        }
    }
    
    var name: String {
        return self.rawValue
    }
}

var myFirstSwan = Swan.black
myFirstSwan.canFly
myFirstSwan.flySpeed
myFirstSwan.distance(seconds: 10)
