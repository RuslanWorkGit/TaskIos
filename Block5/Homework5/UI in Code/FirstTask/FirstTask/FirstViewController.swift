//
//  FirstViewController.swift
//  FirstTask
//
//  Created by Ruslan Liulka on 09.08.2022.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Done")

        addViewProgramtically()
    }

    func addViewProgramtically() {
        
        let circle = CGRect(x: 150, y: 500, width: 200, height: 200)
        let greenCircle = MyView(frame: circle)
        greenCircle.backgroundColor = .systemGreen
        view.addSubview(greenCircle)
        
        greenCircle.center = CGPoint(x: view.bounds.midX, y: view.bounds.midY)
    }
}
