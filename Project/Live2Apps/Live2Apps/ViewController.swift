//
//  ViewController.swift
//  Live2Apps
//
//  Created by Ruslan Liulka on 29.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var centralButton: UIButton!
    @IBOutlet weak var centralLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        centralLabel.text = "New Text"
        centralLabel.backgroundColor = .red
        
        print("View loaded!")
        // Do any additional setup after loading the view.
    }

    @IBAction func centralButtonPress(_ sender: Any) {
        centralLabel.backgroundColor = .green
        print("pressed!")
    }
    
}


