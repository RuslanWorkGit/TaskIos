//
//  ViewController.swift
//  ProtocolOpt
//
//  Created by Ruslan Liulka on 29.07.2022.
//

import UIKit

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
        startDayButton.backgroundColor = .red //--- Чому в червоний краситься кнопка Start Robbery?
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
}


