//
//  SecondViewController.swift
//  FirstTask
//
//  Created by Ruslan Liulka on 09.08.2022.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addRedCircle()
        addYellowCircle()
        addGreenCircle()
    }
    func addRedCircle() {
        let circle = CGRect(x: 100, y: view.bounds.minY + 40, width: 250, height: 250)
        let redCircle = MyView(frame: circle)
        redCircle.backgroundColor = .red
        redCircle.center = CGPoint(x: view.bounds.midX, y: view.bounds.midY * 0.4)
        view.addSubview(redCircle)
        
    }
    
    func addYellowCircle() {
        let circle = CGRect(x: 100, y: 300, width: 250, height: 250)
        let yellowCircle = MyView(frame: circle)
        yellowCircle.backgroundColor = .systemYellow
        yellowCircle.center = CGPoint(x: view.bounds.midX, y: view.bounds.midY)
        view.addSubview(yellowCircle)
    }
    
    func addGreenCircle() {
        let circle = CGRect(x: 100, y: 500, width: 250, height: 250)
        let greenCircle = MyView(frame: circle)
        greenCircle.backgroundColor = .systemGreen
        greenCircle.center = CGPoint(x: view.bounds.midX, y: view.bounds.midY * 1.6)
        view.addSubview(greenCircle)
    }

}
