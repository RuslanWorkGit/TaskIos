//
//  ThirdViewController.swift
//  Homework6
//
//  Created by Ruslan Liulka on 20.08.2022.
//

import UIKit
import Lottie

class ThirdViewController: UIViewController {
    
    let centralButton: UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        centralButton.setTitle("Show Mafia", for: .normal)
        centralButton.setTitleColor(.blue, for: .normal)
        centralButton.backgroundColor = .systemOrange
        centralButton.center = view.center
        centralButton.addTarget(self, action: #selector(showMafiaMans), for: .touchUpInside)
        
        
        
        view.addSubview(centralButton)
        
    }
    
   
    
    @objc func showMafiaMans(sender: UIButton) {
        
        UIButton.animate(withDuration: 1, delay: 0) {
            self.centralButton.alpha = 0
        } completion: { _ in
            UIView.animate(withDuration: 1, delay: 0) {
                let firstMafia = self.firstMafiaMan()
            } completion: { _ in
                UIView.animate(withDuration: 1, delay: 0) {
                    let secondMafia = self.secondMafiaMan()
                    
                } completion: { _ in
                    UIView.animate(withDuration: 1, delay: 0) {
                        let thirdMafia = self.thirdMafiaMan()
                    } completion: { _ in
                        UIView.animate(withDuration: 1, delay: 0) {
                           let fourthMafia = self.fourthMafiaMan()
                        } 
                        
                    }
                    
                }
                
            }
        }

    }
    
    
    
    func firstMafiaMan() -> AnimationView {
        let firstMafia = AnimationView(name: "firstMafia")
        firstMafia.loopMode = .loop
        firstMafia.play()
        
        self.view.addSubview(firstMafia)
        
        firstMafia.translatesAutoresizingMaskIntoConstraints = false
        var constraints = [NSLayoutConstraint]()
        
        //add
        constraints.append(firstMafia.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor))
        constraints.append(firstMafia.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor))
        constraints.append(firstMafia.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.5))
        constraints.append(firstMafia.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.5))
        
        //activate
        NSLayoutConstraint.activate(constraints)
        
        return firstMafia
        
    }
    
    
    func secondMafiaMan() -> AnimationView{
        let secondMafia = AnimationView(name: "secondMafia")
        secondMafia.loopMode = .loop
        secondMafia.play()
        
        view.addSubview(secondMafia)
        secondMafia.translatesAutoresizingMaskIntoConstraints = false
        var constraints = [NSLayoutConstraint]()
        
        //add
        
        constraints.append(secondMafia.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor))
        constraints.append(secondMafia.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor))
        constraints.append(secondMafia.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.5))
        constraints.append(secondMafia.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.5))
        
        //activate
        NSLayoutConstraint.activate(constraints)
        
        return secondMafia
    }
    
    func thirdMafiaMan() -> AnimationView {
        let thirdMafia = AnimationView(name: "thirdMafia")
        thirdMafia.loopMode = .loop
        thirdMafia.play()
        
        view.addSubview(thirdMafia)
        thirdMafia.translatesAutoresizingMaskIntoConstraints = false
        var constraints = [NSLayoutConstraint]()
        
        //add
        constraints.append(thirdMafia.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor))
        constraints.append(thirdMafia.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor))
        constraints.append(thirdMafia.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.5))
        constraints.append(thirdMafia.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.5))
        
        //activate
        NSLayoutConstraint.activate(constraints)
        
        return thirdMafia
    }
    
    func fourthMafiaMan() -> AnimationView {
        let fourthMafia = AnimationView(name: "fourthMafia")
        fourthMafia.loopMode = .loop
        fourthMafia.play()
        
        view.addSubview(fourthMafia)
        fourthMafia.translatesAutoresizingMaskIntoConstraints = false
        var constrains = [NSLayoutConstraint]()
        
        //add
        constrains.append(fourthMafia.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor))
        constrains.append(fourthMafia.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor))
        constrains.append(fourthMafia.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.5))
        constrains.append(fourthMafia.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.5))
        
        //actavate
        NSLayoutConstraint.activate(constrains)
        
        return fourthMafia
    }
    
}
