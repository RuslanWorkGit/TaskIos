//
//  ViewController.swift
//  ProtocolOpt
//
//  Created by Ruslan Liulka on 29.07.2022.
//

import UIKit

protocol Alarm {
    func alarm()
}

protocol Work: Alarm {
    func routinWork()
    func giveCash()
    func takeCash()
}

protocol Protecting {
    func protect()
}

protocol Civilians {
    func bankUser()
}

protocol Lying {
    func lie()
}

protocol Hiding: Lying {
    func Hide()
}

protocol BreakIn {
    func breakIn()
}

protocol Cash {
    func money()
}

protocol Gun {
    func fire()
    func threaten()
}

protocol Rober: Gun, BreakIn, Hiding{
    var name: String? {get set}
}


protocol Hero: Gun, BreakIn{
    var name: String? {get set}
}

class ViewController: UIViewController {

    @IBOutlet weak var startDayButton: UIButton!
    @IBOutlet weak var startRobberyButton: UIButton!
    @IBOutlet weak var startSuperheroButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("App is start!")
        
        bankWork.clerk = [clerk1, clerk2, clerk3]
        bankWork.manager = [manager1, manager2]
        bankWork.guardians = [guardian1, guardian2]
        bankWork.civilian = [civilian1, civilian2, civilian3]
        bankWork.robbers = [robber1, robber2, robber3]
        bankWork.superhero = [superhero1, superhero2, superhero3]
    }
    
    let bankWork = Bank()
    @IBAction func startDayButton(_ sender: Any) {
        startDayButton.backgroundColor = .red
        bankWork.startWork()
    }
    
    
    @IBAction func startRobberyButton(_ sender: Any) {
        startRobberyButton.backgroundColor = .green
        bankWork.startRobbery(robb: bankWork.robbers)
    }
    @IBAction func startSuperheroButton(_ sender: Any) {
        startSuperheroButton.backgroundColor = .darkGray
        bankWork.superhero(hero: bankWork.superhero)
    }
    
    struct Clerk: Work, Hiding {
        func alarm() {
            print("Clerk use alarm system")
        }
        
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
    struct Manager : Work {
        func alarm() {
            print("Manager use alarm system")
        }
        
        func routinWork() {
            print("Manager make his routing work")
        }
        
        func giveCash() {
            print("Manager give cask to robbers")
        }
        
        func takeCash() {
            print("Manager take money from the super hero")
        }
        
        
    }
    struct SuperHero : BreakIn, Hero {
        var name: String?

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

    let clerk1 = Clerk()
    let clerk2 = Clerk()
    let clerk3 = Clerk()

    let manager1 = Manager()
    let manager2 = Manager()

    let guardian1 = Guardian()
    let guardian2 = Guardian()

    let civilian1 = Civilian()
    let civilian2 = Civilian()
    let civilian3 = Civilian()

    let robber1 = Robber(name: "Stethem")
    let robber2 = Robber(name: "Djocker")
    let robber3 = Robber(name: "Pinguinus")

    let superhero1 = SuperHero(name: "Captain America")
    let superhero2 = SuperHero(name: "Spider-Man")
    let superhero3 = SuperHero(name: "Iron Man")

    
    
}


