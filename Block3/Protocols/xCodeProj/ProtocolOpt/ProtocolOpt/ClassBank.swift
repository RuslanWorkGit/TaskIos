//
//  ClassBamk.swift
//  ProtocolOpt
//
//  Created by Ruslan Liulka on 03.08.2022.
//

import Foundation
class Bank {
    var clerk: [Clerk] = []
    var manager: [Manager] = []
    var civilian: [Civilian] = []
    var robbers: [Robber] = []
    var superhero: [SuperHero] = []
    var guardians: [Guardian] = []
    
    func startWork() {
        for i in clerk {
          i.routinWork()
        }
        
        for i in manager {
            i.routinWork()
        }
        
        for i in civilian {
            i.bankUser()
        }
    }
    
    func startRobbery(robb: [Robber]) {
        for i in robbers {
            i.breakIn()
        }
        manager.first?.alarm()
        for i in robbers {
            i.threaten()
        }
        for i in robbers {
            i.money()
        }
    }
    
    func superhero(hero: [SuperHero]) {
        for i in superhero {
            i.breakIn()
        }
        for i in superhero {
            i.threaten()
        }
        for i in robbers{
            i.Hide()
        }
        for i in superhero{
            i.fire()
        }
        for i in robbers{
            i.lie()
        }
    }
}
