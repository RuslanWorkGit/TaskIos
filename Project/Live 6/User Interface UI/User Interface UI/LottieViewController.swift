//
//  LottieViewController.swift
//  User Interface UI
//
//  Created by Ruslan Liulka on 17.08.2022.
//

import UIKit
import Lottie

class LottieViewController: UIViewController {
    @IBOutlet weak var bottomAnimationView: AnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    @IBAction func centralButtonPressed(_ sender: Any) {
        let animationView = AnimationView(name: "fire")
        animationView.loopMode = .loop
        animationView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width / 2, height: self.view.frame.height / 2)
        animationView.animationSpeed = 1.3
        animationView.contentMode = .scaleAspectFit
        animationView.play()
        self.view.addSubview(animationView)
        
        bottomAnimationView.loopMode = .loop
        bottomAnimationView.play()
        
    }
    
}
