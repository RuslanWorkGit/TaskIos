import UIKit

enum VehicleType {
    case electric
    case nonElectric
}

protocol Vehicle {
    var weight: Float {get}
    var speed: Float {get}
    var type: VehicleType {get}
    var canFly: Bool {get}
    
    func prepare()
}

protocol FlyableVehicle {
    func getMaxHeight() -> Float
}

extension Vehicle {
    var canFly: Bool {
        return false
    }
    
    func prepare() {
        if type == .electric {
            print("Charge")
        } else {
            print("Refuel")
        }
    }
}

extension FlyableVehicle where Self: Vehicle {
    var canFly: Bool { return true }
    
    var type: VehicleType { return VehicleType.nonElectric }
    
    func getMaxHeight() -> Float {
        switch type {
        case .electric: return weight + speed
        case .nonElectric: return weight * speed
        }
    }
}

struct Car: Vehicle {
    var weight: Float
    
    var speed: Float
    
    var type: VehicleType
}

struct ElectricCar: Vehicle {
    var weight: Float
    
    var speed: Float
    
    var type: VehicleType
}

struct AirPlane: Vehicle, FlyableVehicle {
    var weight: Float
    
    var speed: Float
}

struct ElectricAirpalne: Vehicle, FlyableVehicle {
    var weight: Float
    
    var speed: Float
    
    var type: VehicleType {return .electric}
}

let myCar = Car(weight: 1900, speed: 130, type: .nonElectric)
print("Type car is \(myCar.type) and it \(myCar.canFly == true ? "can Fly" : "can't fly")")

let myElectricCar = ElectricCar(weight: 2400, speed: 180, type: .electric)
print("Type car is \(myElectricCar.type) and it \(myElectricCar.canFly == true ? "can Fly" : "can't fly")")

let myAirPlane = AirPlane(weight: 15000, speed: 600)
print("Plane \(myAirPlane.canFly == true ? "can Fly" : "can't fly") and max height is \(myAirPlane.getMaxHeight())")

let myElectricAiplane = ElectricAirpalne(weight: 20000, speed: 750)
print("The max height of electric airplane is \(myElectricAiplane.getMaxHeight())")



