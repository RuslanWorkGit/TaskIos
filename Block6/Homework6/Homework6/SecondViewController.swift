//
//  SecondViewController.swift
//  Homework6
//
//  Created by Ruslan Liulka on 18.08.2022.
//

import UIKit

class SecondViewController: UIViewController {

    let circle = UIView.init(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        circle.layer.cornerRadius = self.circle.frame.width / 2
        circle.backgroundColor = .systemBrown
        view.addSubview(circle)
        animations()
    }
    
    func animations() {
        UIView.animate(withDuration: 1, delay: 0) {
            self.circle.frame = CGRect(x: self.view.frame.maxX - 100, y: 0, width: 100, height: 100)
        } completion: { done in
            UIView.animate(withDuration: 1, delay: 0) {
                self.circle.frame = CGRect(x: self.view.frame.maxX - 100, y: self.view.frame.maxY - 100, width: 100, height: 100)
            } completion: { done in
                UIView.animate(withDuration: 1, delay: 0) {
                    self.circle.frame = CGRect(x: 0, y: self.view.frame.maxY - 100, width: 100, height: 100)
                } completion: { done in
                    UIView.animate(withDuration: 1, delay: 0) {
                        self.circle.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
                    } completion: { done in
                        UIView.animate(withDuration: 1, delay: 0) {
                            self.circle.alpha = 0
                        }
                    }

                }

            }

        }

    }
    

}
