import UIKit
import Darwin


enum VehicleType {
    case electric
    case nonElectric
}

// MARK: - Protocols

protocol Vehicle {
    var weight: Float {get}
    var speed: Float {get}
    var type: VehicleType {get}
    var canFly: Bool {get}
    
    func prepare()
}

protocol FlyableVehicle {
    func getMaxHeigh() -> Float
}

// MARK: - Extension
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

extension Vehicle where Self: FlyableVehicle {
    var canFly: Bool {
        return true
    }
    
    var type: VehicleType {
        return .nonElectric
    }
    
    func getMaxHeigh() -> Float {
        switch self.type {
        case .electric: return weight + speed
        case .nonElectric: return weight * speed
        }
    }
}

//MARK: - Struct

struct Car: Vehicle{
    var weight: Float
    
    var speed: Float
    
    var type: VehicleType
}

struct ElectricCar: Vehicle{
    var weight: Float
    
    var speed: Float
    
    var type: VehicleType
}

struct AirPlane: Vehicle, FlyableVehicle{
    var weight: Float
    
    var speed: Float
}

struct ElectricAirplane: Vehicle, FlyableVehicle{
    var weight: Float
    
    var speed: Float
    
    var type: VehicleType = .electric
}


let myCar = Car(weight: 1820.2, speed: 125, type: .nonElectric)
print("Car type is \(myCar.type) and it is \(myCar.canFly == false ? "can't fly" : "can fly")")

let myElectricCar = ElectricCar(weight: 2500.3, speed: 190, type: .electric)
print("Car type is \(myElectricCar.type) and it is \(myElectricCar.canFly == false ? "can't fly" : "can fly")")
      
let myAirPlane = AirPlane(weight: 11000, speed: 750)
print("AirPlain \(myAirPlane.canFly == false ? "can't fly" : "can fly") and max heigh is \(myAirPlane.getMaxHeigh())")

let myElectricAirplane = ElectricAirplane(weight: 12000, speed: 670)
print("This is my Eelectric airplane and the max heigh is \(myElectricAirplane.getMaxHeigh())")
