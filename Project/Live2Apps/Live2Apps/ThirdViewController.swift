//
//  ThirdViewController.swift
//  Live2Apps
//
//  Created by Ruslan Liulka on 03.08.2022.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let manager = NetworkService()
        manager.loadListOfMovies()
        
        let employ = Employ()
        let programmer = Programmer()
        let teamLead = TeamLead()
        let cto = CTO()
        
        startDay(unit: employ)
        startDay(unit: programmer)
        startDay(unit: teamLead)
        startDay(unit: cto)
        
        let arrayOfPeople: [Human] = [employ, programmer, teamLead, cto]
        
        for i in arrayOfPeople {
            i.breathe()
        }
        
        let arrayOfUnits: [Atackable] = [Soldier(), Tank(), Ship()]
        
        for unit in arrayOfUnits{
            unit.attack()
//            if let soldier = unit as? Soldier{
//                soldier.attack()
//            }
//
//            if let tank = unit as? Tank {
//                tank.attack()
//            }
//
//            if let ship = unit as? Ship {
//                ship.attack()
//            }
        }
    }
    
    func startDay(unit: Human) {
        unit.breathe()
    }
}

protocol Atackable {
    func attack()
}
class Soldier: Atackable {
    func attack() {}
}

class Tank: Atackable{
    func attack() {}
}

class Ship: Atackable {
    func attack() {}
}


class Human {
    var name: String = ""
    
    func breathe() {
        print("Breathe")
    }
}

class Employ: Human{ }

class Programmer: Employ {
    func programing() {}
}

class TeamLead: Programmer { }

class CTO: TeamLead { }

struct NetworkService {
    private var baseUrl: String = ""
    internal func loadListOfMovies() {
        createRequest()
        executeREquest()
        perceDate()
    }
    
    internal func loadListOfSeries() {
        createRequest()
        executeREquest()
        perceDate()
    }
    
    public func loadListOfActors() { //public - можна викликати не тільки з цього модуля а й з любого іншошго  / open - можна і розширювати (extension)
        createRequest()
        executeREquest()
        perceDate()
    }
    
    private func createRequest() {
        
    }
    
    private func executeREquest() {
        
    }
    
    private func perceDate() {
        
    }
}
