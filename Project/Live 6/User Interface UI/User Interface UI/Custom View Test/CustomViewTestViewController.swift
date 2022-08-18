//
//  CustomViewTestViewController.swift
//  User Interface UI
//
//  Created by Ruslan Liulka on 17.08.2022.
//

import UIKit

class CustomViewTestViewController: UIViewController, CustomViewDelegate {

    @IBOutlet weak var bottomXibView: CustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let customView = CustomView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
        customView.delegate = self
        bottomXibView.delegate = self
        self.view.addSubview(customView)
        
        
    }
    
    func firstButtonPressed() {
        print("First Button Pressed - printed from ViewController")
    }
    
    func secondButtonPressed() {
        print("Second Button Pressed - printed from ViewController")
    }

}
