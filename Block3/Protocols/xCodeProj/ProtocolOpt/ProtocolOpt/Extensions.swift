//
//  Extensions.swift
//  ProtocolOpt
//
//  Created by Ruslan Liulka on 03.08.2022.
//

import Foundation
extension Alarm {
    func alarm() {print("Someone use alarm system")}
}

extension Managers {
    func routinWork() {
        print("Manager start routing work")
    }
    
    func giveCash() {
        print("Manager give cash to robbers")
    }
    
    func takeCash() {
        print("Manager take money from the super hero")
    }
}

extension Clerks {
    func lie() {
        print("Clerk lie on the floor")
    }
    
    func Hide() {
        print("Clerk hidding under his work space")
    }
    
    func routinWork() {
        print("Clerk maiking routing work on his compute")
    }
    
    func giveCash() {
        print("Clerk give cash")
    }
    
    func takeCash() {
        print("Clerk take cash")
    }
}

extension Rober {
    func money() {
        print("The robbers aske to give hime a money")
    }
    
    func Hide() {
        print("The robber \(name ?? "Unnown" ) wants to hide from superheroes")
    }
    
    func lie() {
        print("The robber \(name ?? "Unnown") lie on the floor becouse superhero assked to do it")
    }
    
    func fire() {
        print("The robber \(name ?? "Unnown") fire to the ceiling")
    }
    
    func threaten() {
        print("The robber \(name ?? "Unnown") threatens with a weapon")
    }
    
    func breakIn() {
        print("Robber \(name ?? "Unnown") push the door and came into the bank")
    }
}

extension Hero {
    func breakIn() {
        print("The hero \(name ?? "Unnown") break into the bank")
    }
    
    func fire() {
        print("superheroes put all the robbers on the floor")
    }
    
    func threaten() {
        print("The hores asked to the robber give up")
    }
}
