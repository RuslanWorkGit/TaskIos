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
        //mainCircle.backgroundColor = .gray
        mainCircle.clipsToBounds = true
        view.addSubview(mainCircle)
        
        func addSomeCircle(xPos: CGFloat, yPos: CGFloat, circleWidth: CGFloat, color: UIColor) {
            let circle = CGRect(x: xPos, y: yPos, width: circleWidth, height: circleWidth)
            let someCircle = MyView(frame: circle)
            someCircle.backgroundColor = color
            someCircle.clipsToBounds = true
            mainCircle.addSubview(someCircle)
        }
        
        //Red Circle
        addSomeCircle(xPos: mainCircle.bounds.minX - 50, yPos: mainCircle.bounds.minY - 40, circleWidth: view.bounds.width * 0.7, color: .red)
        
        //Yellow Circle
        addSomeCircle(xPos: mainCircle.bounds.midX - 20, yPos: mainCircle.bounds.minY - 40, circleWidth: view.bounds.width * 0.7, color: .systemYellow)
        
        //Green Circle
        addSomeCircle(xPos: mainCircle.bounds.midX - 20, yPos: mainCircle.bounds.midY - 40, circleWidth: view.bounds.width * 0.7, color: .systemGreen)
        
        //Blue Circle
        addSomeCircle(xPos: mainCircle.bounds.minX - 50, yPos: mainCircle.bounds.midY - 40, circleWidth: view.bounds.width * 0.7, color: .systemBlue)
        
        
//
//        func addRedCircle() {
//            let circle = CGRect(x: mainCircle.bounds.minX - 50, y: mainCircle.bounds.minY - 40, width: view.bounds.width * 0.70, height: view.bounds.width * 0.70)
//            let redCircle = MyView(frame: circle)
//            redCircle.backgroundColor = .red
//            redCircle.clipsToBounds = true
//            mainCircle.addSubview(redCircle)
//        }
//        addRedCircle()
//
//        func addYellowCircle() {
//            let circle = CGRect(x: mainCircle.bounds.midX - 20, y: mainCircle.bounds.minY - 40, width: view.bounds.width * 0.70, height: view.bounds.width * 0.70)
//            let yellowCircle = MyView(frame: circle)
//            yellowCircle.backgroundColor = . systemYellow
//            yellowCircle.clipsToBounds = true
//            mainCircle.addSubview(yellowCircle)
//        }
//        addYellowCircle()
//
//        func addGreenCircle() {
//            let circle = CGRect(x: mainCircle.bounds.midX - 20, y: mainCircle.bounds.midY - 40, width: view.bounds.width * 0.7, height: view.bounds.width * 0.7)
//            let greenCircle = MyView(frame: circle)
//            greenCircle.backgroundColor = .systemGreen
//            greenCircle.clipsToBounds = true
//            mainCircle.addSubview(greenCircle)
//        }
//        addGreenCircle()
//
//        func addBlueCircle() {
//            let circle = CGRect(x: mainCircle.bounds.minX - 50, y: mainCircle.bounds.midY - 40, width: view.bounds.width * 0.70, height: view.bounds.width * 0.70)
//            let blueCircle = MyView(frame: circle)
//            blueCircle.backgroundColor = .systemBlue
//            blueCircle.clipsToBounds = true
//            mainCircle.addSubview(blueCircle)
//        }
//        addBlueCircle()
    }

}
