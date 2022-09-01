//
//  MounthTapViewController.swift
//  SimpleUITableView
//
//  Created by Ruslan Liulka on 01.09.2022.
//

import UIKit

class MounthTapViewController: UIViewController {
    
    @IBOutlet weak var centralLable: UILabel!
    @IBOutlet weak var numberOfMounth: UILabel!
    
    var mounthName: String? = ""
    var mounthsNumber: String? = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.centralLable.text = mounthName
        self.numberOfMounth.text = "Number of mounth is " + mounthsNumber!
        
    }

}
 
