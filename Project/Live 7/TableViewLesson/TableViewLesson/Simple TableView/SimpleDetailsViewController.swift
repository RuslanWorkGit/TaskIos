//
//  SimpleDetailsViewController.swift
//  TableViewLesson
//
//  Created by Ruslan Liulka on 30.08.2022.
//

import UIKit

class SimpleDetailsViewController: UIViewController {

    @IBOutlet weak var centralLable: UILabel!
    
    var name: String? = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        centralLable.text = name
    }


}
