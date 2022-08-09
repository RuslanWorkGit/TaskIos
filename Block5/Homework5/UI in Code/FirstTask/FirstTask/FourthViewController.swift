//
//  FourthViewController.swift
//  FirstTask
//
//  Created by Ruslan Liulka on 09.08.2022.
//

import UIKit

class FourthViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        addCentralCircle()
        
 
    }
    
    func addCentralCircle(){
        let circleMain = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.width)
        let mainCircle = MyView(frame: circleMain)
        mainCircle.center = CGPoint(x: view.bounds.midX, y: view.bounds.midY)
        mainCircle.backgroundColor = .gray
        view.addSubview(mainCircle)
        
        func addRedCircle() {
            let circle = CGRect(x: view.bounds.minX, y: view.bounds.midY - 220, width: view.bounds.width * 0.65, height: view.bounds.width * 0.65)
            let redCircle = MyView(frame: circle)
            redCircle.backgroundColor = .red
            mainCircle.addSubview(redCircle)
        }
        addRedCircle()
        
        func addYellowCircle() {
            
        }
        
        func addGreenCircle() {
            
        }
        
        func addBlueCircle() {
            
        }
    }
    
   
    

}
