//
//  FourthViewController.swift
//  Live2Apps
//
//  Created by Ruslan Liulka on 03.08.2022.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var centralButton: UIButton!
    @IBOutlet weak var centralView: UIView!
    /*
     Розширюємо UIView
     Додаємо функцію addShadow
     додаємо функцію "mainView"
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        centralView.layer.shadowColor = UIColor.black.cgColor //вказали колір тіні
//        centralView.layer.shadowOpacity = 1 // прозрачність
//        centralView.layer.shadowOffset = .zero // зміщення
//        centralView.layer.shadowRadius = 10 // радіус тіні
        
        centralView.addShadow()
        
        centralButton.layer.shadowColor = UIColor.black.cgColor //вказали колір тіні
        centralButton.layer.shadowOpacity = 1 // прозрачність
        centralButton.layer.shadowOffset = .zero // зміщення
        centralButton.layer.shadowRadius = 10 // радіус тіні
        
        

        // Do any additional setup after loading the view.
    }

    @IBAction func centralButtonPressed(_ sender: Any) {
        centralView.layer.cornerRadius = 30
        centralView.layer.borderWidth = 10
        centralView.layer.borderColor = UIColor.green.cgColor
    }
}

extension UIView {
    func addShadow() {
        self.layer.shadowColor = UIColor.black.cgColor //вказали колір тіні
        self.layer.shadowOpacity = 1 // прозрачність
        self.layer.shadowOffset = .zero // зміщення
        self.layer.shadowRadius = 10 // радіус тіні
    }
}
