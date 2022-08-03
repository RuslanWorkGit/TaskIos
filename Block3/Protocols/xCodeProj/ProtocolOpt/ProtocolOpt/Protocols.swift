//
//  Protocols.swift
//  ProtocolOpt
//
//  Created by Ruslan Liulka on 03.08.2022.
//

import Foundation

protocol Alarm {
    //func alarm()
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

protocol Clerks: Work, Hiding{
}

protocol Managers: Work {
}

protocol Rober: Gun, BreakIn, Hiding{
    var name: String? {get set}
}


protocol Hero: Gun, BreakIn{
    var name: String? {get set}
}
