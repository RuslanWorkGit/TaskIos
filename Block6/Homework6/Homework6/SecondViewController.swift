//
//  SecondViewController.swift
//  Homework6
//
//  Created by Ruslan Liulka on 18.08.2022.
//

import UIKit

class SecondViewController: UIViewController {

    let time: Double = 1
    let circle = UIView.init(frame: CGRect(x: 50, y: 50, width: 70, height: 70))
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        circle.layer.cornerRadius = self.circle.frame.width / 2
        circle.backgroundColor = .systemBrown
        view.addSubview(circle)

    }
    
    @IBAction func startAnimation(_ sender: Any) {
        UIView.animate(withDuration: time, delay: 0) {
            self.circle.frame = CGRect(x: self.view.frame.maxX - 100 , y: 50, width: 70, height: 70)
        } completion: { done in
            UIView.animate(withDuration: self.time, delay: 0) {
                self.circle.frame = CGRect(x: self.view.frame.maxX - 100, y: self.view.frame.maxY - 150, width: 70, height: 70)
            } completion: { done in
                UIView.animate(withDuration: self.time, delay: 0) {
                    self.circle.frame = CGRect(x: 50, y: self.view.frame.maxY - 150, width: 70, height: 70)
                } completion: { done in
                    UIView.animate(withDuration: self.time, delay: 0) {
                        self.circle.frame = CGRect(x: 50, y: 50, width: 70, height: 70)
                    } completion: { done in
                        UIView.animate(withDuration: self.time, delay: 0) {
                            self.circle.alpha = 0
                        }
                    }

                }

            }

        }

    }
    
    
}
