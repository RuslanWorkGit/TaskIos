//
//  Struct.swift
//  ProtocolOpt
//
//  Created by Ruslan Liulka on 03.08.2022.
//

import Foundation
struct Clerk: Clerks {

}
struct Civilian: Civilians, Hiding {
    func Hide() {
        print("Civilian try to hide")
    }
    
    func lie() {
        print("Civilian lie on the floor")
    }
    
    func bankUser() {
        print("Civilian come to the bank to take some money")
    }
    
    
}
struct Robber: Rober, Cash{
    
    var name: String?
}
struct Guardian: Gun, Protecting{
    func fire() {
        print("Guardian try to shoot some robber")
    }
    
    func threaten() {
        print("Guardian threaten to the robbers but they was scary and give up")
    }
    
    func protect() {
        print("Guardians protect the territory")
    }
}
struct Manager : Managers {
}
struct SuperHero : BreakIn, Hero {
    var name: String?
}
