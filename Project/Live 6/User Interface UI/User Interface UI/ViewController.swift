//
//  ViewController.swift
//  User Interface UI
//
//  Created by Ruslan Liulka on 15.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var centralButton: UIButton!
    @IBOutlet weak var blueButtonRemove: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    @IBAction func centralButtonPressed(_ sender: Any) {
//        UIView.animate(withDuration: 3, delay: 0) {
//
//        }
//
        
        UIView.animate(withDuration: 4, delay: 0) {
            self.centralButton.backgroundColor = .green
            self.centralButton.center = self.view.center
            self.centralButton.layer.cornerRadius = self.centralButton.frame.width / 2
            self.centralButton.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            self.centralButton.transform = CGAffineTransform(scaleX: 2, y: 2) // Збільшується у 2 рази
        } completion: { completed in
            UIView.animate(withDuration: 4, delay: 0) {
                self.centralButton.backgroundColor = .red
                self.centralButton.frame = CGRect(x: 0, y: 0, width: self.centralButton.frame.width / 2, height: self.centralButton.frame.width / 2)
                
                //self.centralButton.transform = CGAffineTransform(scaleX: 2, y: 2) //
            } completion: { completed in
                self.centralButton.removeFromSuperview()
                self.blueButtonRemove.removeFromSuperview()
            }
        }
    }
}

