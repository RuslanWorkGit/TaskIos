import UIKit

//-----------Creat protocol----------

protocol Movable {
    func run()
}

protocol Figtable {
    func fight()
}

protocol Hero: Movable, Figtable {
    var name: String {get set}
}

//----------------Create struct---------------

struct Farmer: Movable {
    func run() {
        print("Farmer Run")
    }
}

struct Clerk: Movable {
    func run() {
        print("Clerk Run")
    }
}

struct Butcher: Figtable {
    func fight() {
        print("Butcher fight!")
    }
}

struct Soldier: Figtable {
    func fight() {
        print("Soldier go to fight!")
    }
}

struct NewHero: Hero {
    var name: String
    
    func run() {
        print("\(name) run")
    }
    
    func fight() {
        print("\(name) go to fight!")
    }
}

//-----------Create instances--------------

let farmer = Farmer()
let clerk = Clerk()
let butcher = Butcher()
let soldier = Soldier()
let myHero1 = NewHero(name: "Ruslan")
let myHero2 = NewHero(name: "Lighter")

//---------------class tavern--------------
class Tavern {
    var figters: [Figtable] = []
    var movers: [Movable] = []
    
    func enterTavern(hero: Hero) {
        hero.fight()
        for i in movers {
            i.run()
        }
        for i in figters {
            i.fight()
        }
    }
    
}

var taverna = Tavern()

taverna.movers = [farmer, clerk]
taverna.figters = [butcher, soldier]

taverna.enterTavern(hero: myHero1)
taverna.enterTavern(hero: myHero2)

