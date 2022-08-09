//
//  ThirdViewController.swift
//  FirstTask
//
//  Created by Ruslan Liulka on 09.08.2022.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addRedCircle()
        addYellowCircle()
        addGreenCircle()
    }

    func addRedCircle() {
        let circle = CGRect(x: view.bounds.midX, y: view.bounds.midY * 0.5, width: view.bounds.width / 1.5, height: view.bounds.width / 1.5)
        let redCircle = MyView(frame: circle)
        redCircle.backgroundColor = .red
        view.addSubview(redCircle)
    }
    
    func addYellowCircle() {
        
    }
    
    func addGreenCircle() {
        
    }
    

}
