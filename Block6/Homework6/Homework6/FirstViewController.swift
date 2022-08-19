//
//  FirstViewController.swift
//  Homework6
//
//  Created by Ruslan Liulka on 18.08.2022.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var bounceBall: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bounceBall.backgroundColor = .red
        bounceBall.layer.cornerRadius = bounceBall.frame.width / 2
        
    }
    
    
    @IBAction func bounceButtonStart(_ sender: Any) {
        UIView.animate(withDuration: 1.5, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 1) {
            self.bounceBall.center = self.view.center
        } completion: { completed in
            UIView.animate(withDuration: 1.5, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 5) {
                self.bounceBall.center = CGPoint(x: self.view.frame.midX, y: self.view.frame.maxY - 200)
            } completion: { done in
                self.bounceButtonStart((Any).self)
            }

        }

    }
}
