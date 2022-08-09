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
        addGreenCircle()
        addYellowCircle()

    }

    func addRedCircle() {
        let circle = CGRect(x: view.bounds.midX - 50, y: view.bounds.midY * 0.4, width: view.bounds.width / 1.5, height: view.bounds.width / 1.5)
        let redCircle = MyView(frame: circle)
        redCircle.backgroundColor = .red
        view.addSubview(redCircle)
    }
    
    func addYellowCircle() {
        let circle = CGRect(x: view.bounds.midX, y: view.bounds.midY, width: view.bounds.width / 1.5, height: view.bounds.width / 1.5)
        let yellowCircle = MyView(frame: circle)
        yellowCircle.backgroundColor = .systemYellow
        yellowCircle.center = CGPoint(x: view.bounds.midX, y: view.bounds.midY)
        yellowCircle.alpha = 0.7
        view.addSubview(yellowCircle)
    }
    
    func addGreenCircle() {
        let circle = CGRect(x: view.bounds.minX, y: view.bounds.midY + 40, width: view.bounds.width / 1.5, height: view.bounds.width / 1.5)
        let greenCircle = MyView(frame: circle)
        greenCircle.backgroundColor = .systemGreen
        view.addSubview(greenCircle)
    }
    

}
